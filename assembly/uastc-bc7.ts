// Copyright 2020 The Khronos Group Inc.
//
// SPDX-License-Identifier: Apache-2.0

import {
  storeCommonData,
  getModeIndex,
  unpackQuints, unpackTrits,
  unq11, unq39, unq47, unq159, unq191,
  getThreeSubsetAnchorL, getThreeSubsetAnchorH,
  getTwoSubsetAnchorForModeIndex7, getTwoSubsetAnchor,
} from './lib/uastc/common';

import {
  duplicate32, duplicate16, triplicate16
} from './lib/uastc/patterns';

let firstRun = true;

/**
 * Transcode UASTC data to BC7 in-place
 * @param nBlocks - The total number of compressed UASTC blocks
 */
export function transcode(nBlocks: i32): i32 {
  const totalBytes = nBlocks * 16;
  if ((memory.size() - 1) * 65536 < totalBytes) return 1;

  if (firstRun) {
    /*
    Memory layout:
       0...1475: Common data
    1536...2047: BC7 solid color endpoints
    2048...2239: Pattern data
    3072...4095: BC7 mode 1 data
    4096...5119: BC7 mode 7 data
    */
    storeCommonData();
    storeSolidEndpoints();
    storePatterns();
    storeMode1();
    storeMode7();
    firstRun = false;
  }

  for (let offset = 65536; offset < 65536 + totalBytes; offset += 16) {
    const q0 = load<u64>(offset, 0);
    const q1 = load<u64>(offset, 8);
    transcodeBC7(q0, q1, offset);
  }
  return 0;
}

// @ts-ignore: 1206
@inline
function transcodeBC7(q0: u64, q1: u64, offset: i32): void {
  // Mode 6 with endpoint 0 set to (255, 0, 255, 255) and endpoint 1 set to (0, 0, 0, 0)
  const errorBlock: u64 = 0x80FE03F800003FC0;

  let r0: u64 = 0;
  let r1: u64 = 0;

  switch (getModeIndex(<u32>q0 & 0x7F)) {
    case 0:
      {
        // Two trits (6 values), 8 + 2 bits
        const et0 = unpackTrits(<u32>(q0 >> 19) & 0xFF);
        const et1 = unpackTrits(<u32>(q0 >> 27) & 0x3);

        // 6-bit endpoints
        let rl0 = <u32>(q0 >> 29) & 0x3F;
        let rh0 = <u32>(q0 >> 35) & 0x3F;
        let gl0 = <u32>(q0 >> 41) & 0x3F;
        let gh0 = <u32>(q0 >> 47) & 0x3F;
        let bl0 = <u32>(q0 >> 53) & 0x3F;
        let bh0 = (<u32>(q0 >> 59) & 0x1F) | (<u32>(q1 << 5) & 0x20);

        rl0 = unq191(rl0, et0 & 3);
        rh0 = unq191(rh0, (et0 >> 2) & 3);
        gl0 = unq191(gl0, (et0 >> 4) & 3);
        gh0 = unq191(gh0, (et0 >> 6) & 3);
        bl0 = unq191(bl0, et0 >> 8);
        bh0 = unq191(bh0, et1 & 3);

        // 4-bit weights, start at 65, no need to move or recover anchor
        const weights = q1 & 0xFFFFFFFFFFFFFFFE;

        // Quantize and pack for BC7 mode 6
        const packedEndpoints = mode6(rl0, rh0, gl0, gh0, bl0, bh0, 255, 255);

        r0 = (packedEndpoints << 7) | 0x40;
        r1 = weights | (packedEndpoints >> 57);
      }
      break;
    case 1:
      {
        // 8-bit endpoints
        const rl0 = <u32>(q0 >> 21) & 0xFF;
        const rh0 = <u32>(q0 >> 29) & 0xFF;
        const gl0 = <u32>(q0 >> 37) & 0xFF;
        const gh0 = <u32>(q0 >> 45) & 0xFF;
        const bl0 = <u32>(q0 >> 53) & 0xFF;
        const bh0 = (<u32>(q0 >> 61) & 0x07) | (<u32>(q1 << 3) & 0xF8);

        // 2-bit weights, start at 69
        const weights = <u32>(((q1 >> 4) & 0xFFFFFFFC) | ((q1 >> 5) & 1));

        // UASTC mode 1 maps to BC7 mode 3 with the same endpoints used for both subsets
        const packedEndpoints0 = mode3(rl0, rh0, gl0, gh0, bl0, bh0);
        const ru0: u64 = (packedEndpoints0 >>  0) & 0x3FFF;
        const gu0: u64 = (packedEndpoints0 >> 14) & 0x3FFF;
        const bu0: u64 = (packedEndpoints0 >> 28) & 0x3FFF;
        const pu0: u64 = (packedEndpoints0 >> 42) & 3;

        let ru1 = ru0;
        let gu1 = gu0;
        let bu1 = bu0;
        let pu1 = pu0;
        let packedWeights = weights;

        // The partition pattern index is 0, check BC7 anchor MSB and swap endpoints/weights
        if (weights & 0x80000000) {
          ru1 = ((ru1 >> 7) & 0x7F) | ((ru1 & 0x7F) << 7);
          gu1 = ((gu1 >> 7) & 0x7F) | ((gu1 & 0x7F) << 7);
          bu1 = ((bu1 >> 7) & 0x7F) | ((bu1 & 0x7F) << 7);
          pu1 = ((pu1 >> 1) &    1) | ((pu1 &    1) << 1);
          packedWeights ^= 0xF0F0F0F0; // partition pattern 0
        }

        // Apply BC7 anchors (0, 15) for pattern 0
        packedWeights = ((packedWeights >> 1) & 0x3FFFFFFE) | (packedWeights & 1);

        r0 = (gu1 << 52) | (gu0 << 38) | (ru1 << 24) | (ru0 << 10) | 8;
        r1 = (<u64>packedWeights << 34) | (pu1 << 32) | (pu0 << 30) | (bu1 << 16) | (bu0 << 2) | (gu1 >> 12);
      }
      break;
    case 2:
      {
        const pat = <u32>(q0 >> 20) & 0x1F;
        if (pat > 29) {
          r0 = errorBlock;
          break;
        }

        // 4-bit endpoints, unquantize in-place
        let lo = ((q1 << 39) | (q0 >> 25)) & 0x0F0F0F0F0F0F0F0F;
        let hi = ((q1 << 35) | (q0 >> 29)) & 0x0F0F0F0F0F0F0F0F;
        lo |= lo << 4;
        hi |= hi << 4;
        const rl0 = <u32>(lo >>  0) & 0xFF;
        const rh0 = <u32>(hi >>  0) & 0xFF;
        const gl0 = <u32>(lo >>  8) & 0xFF;
        const gh0 = <u32>(hi >>  8) & 0xFF;
        const bl0 = <u32>(lo >> 16) & 0xFF;
        const bh0 = <u32>(hi >> 16) & 0xFF;
        const rl1 = <u32>(lo >> 24) & 0xFF;
        const rh1 = <u32>(hi >> 24) & 0xFF;
        const gl1 = <u32>(lo >> 32) & 0xFF;
        const gh1 = <u32>(hi >> 32) & 0xFF;
        const bl1 = <u32>(lo >> 40) & 0xFF;
        const bh1 = <u32>(hi >> 40) & 0xFF;

        // Anchor bits location depends on the pattern index
        const anchor = getTwoSubsetAnchor(pat);
        const loMask: u64 = (0xFFFFFFFFFFFFFFFF << ((anchor * 3) + 2)) ^ 0xFFFFFFFFFFFFFFF8;
        const hiMask: u64 = (0xFFFFFFFFFFFFFFFF << ((anchor * 3) + 3));

        // 3-bit weights, start at 73
        const weights = ((q1 >> 7) & hiMask) | ((q1 >> 8) & loMask) | ((q1 >> 9) & 3);

        const subsetSwap = getBC7TwoSubsetSwap(pat);
        const bc7patternIndex = getTwoSubsetPatternIndex(pat);

        // Remap 2 UASTC endpoint pairs to 2 BC7 endpoint pairs
        const bc7rl0 = subsetSwap ? rl1 : rl0;
        const bc7rh0 = subsetSwap ? rh1 : rh0;
        const bc7gl0 = subsetSwap ? gl1 : gl0;
        const bc7gh0 = subsetSwap ? gh1 : gh0;
        const bc7bl0 = subsetSwap ? bl1 : bl0;
        const bc7bh0 = subsetSwap ? bh1 : bh0;

        const bc7rl1 = subsetSwap ? rl0 : rl1;
        const bc7rh1 = subsetSwap ? rh0 : rh1;
        const bc7gl1 = subsetSwap ? gl0 : gl1;
        const bc7gh1 = subsetSwap ? gh0 : gh1;
        const bc7bl1 = subsetSwap ? bl0 : bl1;
        const bc7bh1 = subsetSwap ? bh0 : bh1;

        // Check BC7 anchor MSB to swap endpoints/weights
        const bc7anchor1 = getBC7TwoSubsetAnchor(pat) * 3;
        const swap1 = weights & (1 << (bc7anchor1 + 2));

        // UASTC mode 2 maps to BC7 mode 1
        const packedEndpoints0 = mode1(
          bc7rl0, bc7rh0, bc7gl0, bc7gh0, bc7bl0, bc7bh0
        );
        const ru0: u64 = (packedEndpoints0 >>  0) & 0xFFF;
        const gu0: u64 = (packedEndpoints0 >> 12) & 0xFFF;
        const bu0: u64 = (packedEndpoints0 >> 24) & 0xFFF;
        const pu0: u64 = (packedEndpoints0 >> 36) & 1;

        const packedEndpoints1 = mode1(
          swap1 ? bc7rh1 : bc7rl1, swap1 ? bc7rl1 : bc7rh1,
          swap1 ? bc7gh1 : bc7gl1, swap1 ? bc7gl1 : bc7gh1,
          swap1 ? bc7bh1 : bc7bl1, swap1 ? bc7bl1 : bc7bh1
        );
        const ru1: u64 = (packedEndpoints1 >>  0) & 0xFFF;
        const gu1: u64 = (packedEndpoints1 >> 12) & 0xFFF;
        const bu1: u64 = (packedEndpoints1 >> 24) & 0xFFF;
        const pu1: u64 = (packedEndpoints1 >> 36) & 1;

        let packedWeights = weights;
        if (swap1) {
          const patternMask = triplicate16(getTwoSubsetPattern(pat));
          packedWeights ^= patternMask;
        }

        // Apply BC7 anchors
        const bc7lMask = (0xFFFFFFFFFFFF << (bc7anchor1 + 1)) ^ 0xFFFFFFFFFFFC;
        const bc7hMask = 0xFFFFFFFFFFFF << (bc7anchor1 + 1);
        packedWeights = (
          ((packedWeights >> 2) & bc7hMask) |
          ((packedWeights >> 1) & bc7lMask) |
          ((packedWeights >> 0) & 3)
        );

        r0 = (bu0 << 56) | (gu1 << 44) | (gu0 << 32) | (ru1 << 20) | (ru0 << 8) | (bc7patternIndex << 2) | 2;
        r1 = (packedWeights << 18) | (pu1 << 17) | (pu0 << 16) | (bu1 << 4) | (bu0 >> 8);
      }
      break;
    case 3:
      {
        const pat = <u32>(q0 >> 20) & 0xF;
        if (pat > 10) {
          r0 = errorBlock;
          break;
        }

        // Four trits (18 values), 3 * 8 + 5 bits
        const et0 = unpackTrits(<u32>(q0 >> 24) & 0xFF);
        const et1 = unpackTrits(<u32>(q0 >> 32) & 0xFF);
        const et2 = unpackTrits(<u32>(q0 >> 40) & 0xFF);
        const et3 = unpackTrits(<u32>(q0 >> 48) & 0x1F);

        // 2-bit endpoints
        let rl0 = <u32>(q0 >> 53) & 0x3;
        let rh0 = <u32>(q0 >> 55) & 0x3;
        let gl0 = <u32>(q0 >> 57) & 0x3;
        let gh0 = <u32>(q0 >> 59) & 0x3;
        let bl0 = <u32>(q0 >> 61) & 0x3;
        let bh0 = (<u32>(q0 >> 63) & 0x1) | (<u32>(q1 << 1) & 0x2);
        let rl1 = <u32>(q1 >>  1) & 0x3;
        let rh1 = <u32>(q1 >>  3) & 0x3;
        let gl1 = <u32>(q1 >>  5) & 0x3;
        let gh1 = <u32>(q1 >>  7) & 0x3;
        let bl1 = <u32>(q1 >>  9) & 0x3;
        let bh1 = <u32>(q1 >> 11) & 0x3;
        let rl2 = <u32>(q1 >> 13) & 0x3;
        let rh2 = <u32>(q1 >> 15) & 0x3;
        let gl2 = <u32>(q1 >> 17) & 0x3;
        let gh2 = <u32>(q1 >> 19) & 0x3;
        let bl2 = <u32>(q1 >> 21) & 0x3;
        let bh2 = <u32>(q1 >> 23) & 0x3;

        rl0 = quant5(unq11(rl0, et0 & 3));
        rh0 = quant5(unq11(rh0, (et0 >> 2) & 3));
        gl0 = quant5(unq11(gl0, (et0 >> 4) & 3));
        gh0 = quant5(unq11(gh0, (et0 >> 6) & 3));
        bl0 = quant5(unq11(bl0, et0 >> 8));
        bh0 = quant5(unq11(bh0, et1 & 3));
        rl1 = quant5(unq11(rl1, (et1 >> 2) & 3));
        rh1 = quant5(unq11(rh1, (et1 >> 4) & 3));
        gl1 = quant5(unq11(gl1, (et1 >> 6) & 3));
        gh1 = quant5(unq11(gh1, et1 >> 8));
        bl1 = quant5(unq11(bl1, et2 & 3));
        bh1 = quant5(unq11(bh1, (et2 >> 2) & 3));
        rl2 = quant5(unq11(rl2, (et2 >> 4) & 3));
        rh2 = quant5(unq11(rh2, (et2 >> 6) & 3));
        gl2 = quant5(unq11(gl2, et2 >> 8));
        gh2 = quant5(unq11(gh2, et3 & 3));
        bl2 = quant5(unq11(bl2, (et3 >> 2) & 3));
        bh2 = quant5(unq11(bh2, (et3 >> 4) & 3));

        const anchorL = getThreeSubsetAnchorL(pat);
        const anchorH = getThreeSubsetAnchorH(pat);

        const lMask = (0xFFFFFFFF << ((anchorL << 1) | 1)) ^ 0xFFFFFFFC;
        const mMask = ~(((1 << ((anchorL << 1) + 2)) - 1) | (0xFFFFFFFF << ((anchorH << 1) + 1)));
        const hMask = 0xFFFFFFFF << ((anchorH << 1) + 2);

        // 2-bit weights, start at 89
        const weights = (
          (<u32>(q1 >> 22) & hMask) |
          (<u32>(q1 >> 23) & mMask) |
          (<u32>(q1 >> 24) & lMask) |
          (<u32>(q1 >> 25) & 1)
        );

        // 3-bit value that maps BC7 subsets to UASTC subsets for a given partition
        // 001 - BC7 subset 0
        // 010 - BC7 subset 1
        // 100 - BC7 subset 2
        const subsetOrder1 = ((0x13F401 >> (pat << 1)) & 3) + 1;
        const subsetOrder2 = ((0x3C1D7F >> (pat << 1)) & 3) + 1;
        const bc7patternIndex = getThreeSubsetPatternIndexForModeIndex3(pat);

        // Remap 3 UASTC endpoint pairs to 3 BC7 endpoint pairs
        const bc7rl0 = select(rl1, (subsetOrder2 & 1) ? rl2 : rl0, subsetOrder1 & 1);
        const bc7rh0 = select(rh1, (subsetOrder2 & 1) ? rh2 : rh0, subsetOrder1 & 1);
        const bc7gl0 = select(gl1, (subsetOrder2 & 1) ? gl2 : gl0, subsetOrder1 & 1);
        const bc7gh0 = select(gh1, (subsetOrder2 & 1) ? gh2 : gh0, subsetOrder1 & 1);
        const bc7bl0 = select(bl1, (subsetOrder2 & 1) ? bl2 : bl0, subsetOrder1 & 1);
        const bc7bh0 = select(bh1, (subsetOrder2 & 1) ? bh2 : bh0, subsetOrder1 & 1);

        const bc7rl1 = select(rl1, (subsetOrder2 & 2) ? rl2 : rl0, subsetOrder1 & 2);
        const bc7rh1 = select(rh1, (subsetOrder2 & 2) ? rh2 : rh0, subsetOrder1 & 2);
        const bc7gl1 = select(gl1, (subsetOrder2 & 2) ? gl2 : gl0, subsetOrder1 & 2);
        const bc7gh1 = select(gh1, (subsetOrder2 & 2) ? gh2 : gh0, subsetOrder1 & 2);
        const bc7bl1 = select(bl1, (subsetOrder2 & 2) ? bl2 : bl0, subsetOrder1 & 2);
        const bc7bh1 = select(bh1, (subsetOrder2 & 2) ? bh2 : bh0, subsetOrder1 & 2);

        const bc7rl2 = select(rl1, (subsetOrder2 & 4) ? rl2 : rl0, subsetOrder1 & 4);
        const bc7rh2 = select(rh1, (subsetOrder2 & 4) ? rh2 : rh0, subsetOrder1 & 4);
        const bc7gl2 = select(gl1, (subsetOrder2 & 4) ? gl2 : gl0, subsetOrder1 & 4);
        const bc7gh2 = select(gh1, (subsetOrder2 & 4) ? gh2 : gh0, subsetOrder1 & 4);
        const bc7bl2 = select(bl1, (subsetOrder2 & 4) ? bl2 : bl0, subsetOrder1 & 4);
        const bc7bh2 = select(bh1, (subsetOrder2 & 4) ? bh2 : bh0, subsetOrder1 & 4);

        // Check BC7 anchors MSB to swap endpoints/weights
        const bc7anchor1 = (<u32>(0xA6535666888 >> (pat << 2)) & 0xF) << 1;
        const bc7anchor2 = (((pat & 0xE) == 8) ? 10 : 15) << 1;

        const swap1 = <bool>(weights & (1 << (bc7anchor1 + 1)));
        const swap2 = <bool>(weights & (1 << (bc7anchor2 + 1)));

        // UASTC mode 3 maps to BC7 mode 2, copy prequantized endpoints
        const packedEndpoints0 = (
          (<u64>(
            ((swap2 ? bc7gh2 : bc7gl2) << 20) |
            ((swap1 ? bc7gl1 : bc7gh1) << 15) |
            ((swap1 ? bc7gh1 : bc7gl1) << 10) |
            ((bc7gh0                 ) <<  5) |
            ((bc7gl0                 ) <<  0)
          ) << 30) |
          (<u64>(
            ((swap2 ? bc7rl2 : bc7rh2) << 25) |
            ((swap2 ? bc7rh2 : bc7rl2) << 20) |
            ((swap1 ? bc7rl1 : bc7rh1) << 15) |
            ((swap1 ? bc7rh1 : bc7rl1) << 10) |
            ((bc7rh0                 ) <<  5) |
            ((bc7rl0                 ) <<  0)
          ))
        );

        const packedEndpoints1 = (
          (<u64>(swap2 ? bc7bl2 : bc7bh2) << 30) |
          (<u64>(
            ((swap2 ? bc7bh2 : bc7bl2) << 25) |
            ((swap1 ? bc7bl1 : bc7bh1) << 20) |
            ((swap1 ? bc7bh1 : bc7bl1) << 15) |
            ((bc7bh0                 ) << 10) |
            ((bc7bl0                 ) <<  5) |
            ((swap2 ? bc7gl2 : bc7gh2) <<  0)
          ))
        );

        let packedWeights = weights;
        if (swap1 || swap2) {
          const pattern = getThreeSubsetPatternForModeIndex3(pat);
          const patternMask = (
            select(pattern & 0xFFFF, 0, swap1) |
            select(pattern >> 16, 0, swap2)
          );
          packedWeights ^= duplicate16(patternMask);
        }

        // Apply BC7 anchors
        const bc7lMask = (0xFFFFFFFF << bc7anchor1) ^ 0xFFFFFFFE;
        const bc7mMask = ~(((1 << bc7anchor1) - 1) | (0xFFFFFFFF << (bc7anchor2 - 1)));
        const bc7hMask = 0xFFFFFFFF << (bc7anchor2 - 1);
        packedWeights = (
          ((packedWeights >> 3) & bc7hMask) |
          ((packedWeights >> 2) & bc7mMask) |
          ((packedWeights >> 1) & bc7lMask) |
          ((packedWeights >> 0) & 1)
        );

        r0 = (packedEndpoints0 << 9) | (bc7patternIndex << 3) | 4;
        r1 = (<u64>packedWeights << 35) | packedEndpoints1;
      }
      break;
    case 4:
      {
        const pat = <u32>(q0 >> 20) & 0x1F;
        if (pat > 29) {
          r0 = errorBlock;
          break;
        }

        // Four quints (12 values), 4 * 7 bits
        const eq0 = unpackQuints(<u32>(q0 >> 25) & 0x7F);
        const eq1 = unpackQuints(<u32>(q0 >> 32) & 0x7F);
        const eq2 = unpackQuints(<u32>(q0 >> 39) & 0x7F);
        const eq3 = unpackQuints(<u32>(q0 >> 46) & 0x7F);

        // 3-bit endpoints
        let rl0 = <u32>(q0 >> 53) & 0x7;
        let rh0 = <u32>(q0 >> 56) & 0x7;
        let gl0 = <u32>(q0 >> 59) & 0x7;
        let gh0 = (<u32>(q0 >> 62) & 0x3) | (<u32>(q1 << 2) & 0x4);
        let bl0 = <u32>(q1 >> 1) & 0x7;
        let bh0 = <u32>(q1 >> 4) & 0x7;
        let rl1 = <u32>(q1 >> 7) & 0x7;
        let rh1 = <u32>(q1 >> 10) & 0x7;
        let gl1 = <u32>(q1 >> 13) & 0x7;
        let gh1 = <u32>(q1 >> 16) & 0x7;
        let bl1 = <u32>(q1 >> 19) & 0x7;
        let bh1 = <u32>(q1 >> 22) & 0x7;

        rl0 = unq39(rl0, eq0 & 7);
        rh0 = unq39(rh0, (eq0 >> 4) & 7);
        gl0 = unq39(gl0, eq0 >> 8);
        gh0 = unq39(gh0, eq1 & 7);
        bl0 = unq39(bl0, (eq1 >> 4) & 7);
        bh0 = unq39(bh0, eq1 >> 8);
        rl1 = unq39(rl1, eq2 & 7);
        rh1 = unq39(rh1, (eq2 >> 4) & 7);
        gl1 = unq39(gl1, eq2 >> 8);
        gh1 = unq39(gh1, eq3 & 7);
        bl1 = unq39(bl1, (eq3 >> 4) & 7);
        bh1 = unq39(bh1, eq3 >> 8);

        // Anchor bits location depends on the pattern index
        const anchor = getTwoSubsetAnchor(pat);
        const loMask = (0xFFFFFFFF << ((anchor << 1) | 1)) ^ 0xFFFFFFFC;
        const hiMask = 0xFFFFFFFF << ((anchor << 1) + 2);

        // 2-bit weights, start at 89
        const weights = <u32>(((q1 >> 23) & hiMask) | ((q1 >> 24) & loMask) | ((q1 >> 25) & 1));

        const subsetSwap = getBC7TwoSubsetSwap(pat);
        const bc7patternIndex = getTwoSubsetPatternIndex(pat);

        // Remap 2 UASTC endpoint pairs to 2 BC7 endpoint pairs
        const bc7rl0 = subsetSwap ? rl1 : rl0;
        const bc7rh0 = subsetSwap ? rh1 : rh0;
        const bc7gl0 = subsetSwap ? gl1 : gl0;
        const bc7gh0 = subsetSwap ? gh1 : gh0;
        const bc7bl0 = subsetSwap ? bl1 : bl0;
        const bc7bh0 = subsetSwap ? bh1 : bh0;

        const bc7rl1 = subsetSwap ? rl0 : rl1;
        const bc7rh1 = subsetSwap ? rh0 : rh1;
        const bc7gl1 = subsetSwap ? gl0 : gl1;
        const bc7gh1 = subsetSwap ? gh0 : gh1;
        const bc7bl1 = subsetSwap ? bl0 : bl1;
        const bc7bh1 = subsetSwap ? bh0 : bh1;

        // Check BC7 anchors MSB to swap endpoints/weights
        const bc7anchor1 = getBC7TwoSubsetAnchor(pat) << 1;
        const swap1 = weights & (1 << (bc7anchor1 + 1));

        // UASTC mode 4 maps to BC7 mode 3
        const packedEndpoints0 = mode3(
          bc7rl0, bc7rh0, bc7gl0, bc7gh0, bc7bl0, bc7bh0
        );
        const ru0: u64 = (packedEndpoints0 >>  0) & 0x3FFF;
        const gu0: u64 = (packedEndpoints0 >> 14) & 0x3FFF;
        const bu0: u64 = (packedEndpoints0 >> 28) & 0x3FFF;
        const pu0: u64 = (packedEndpoints0 >> 42) & 3;

        const packedEndpoints1 = mode3(
          swap1 ? bc7rh1 : bc7rl1, swap1 ? bc7rl1 : bc7rh1,
          swap1 ? bc7gh1 : bc7gl1, swap1 ? bc7gl1 : bc7gh1,
          swap1 ? bc7bh1 : bc7bl1, swap1 ? bc7bl1 : bc7bh1
        );
        const ru1: u64 = (packedEndpoints1 >>  0) & 0x3FFF;
        const gu1: u64 = (packedEndpoints1 >> 14) & 0x3FFF;
        const bu1: u64 = (packedEndpoints1 >> 28) & 0x3FFF;
        const pu1: u64 = (packedEndpoints1 >> 42) & 3;

        let packedWeights = weights;
        if (swap1) {
          const patternMask = duplicate16(getTwoSubsetPattern(pat));
          packedWeights ^= patternMask;
        }

        // Apply BC7 anchors
        const bc7lMask = (0xFFFFFFFF << bc7anchor1) ^ 0xFFFFFFFE;
        const bc7hMask = 0xFFFFFFFF << (bc7anchor1 - 1);
        packedWeights = ((packedWeights >> 2) & bc7hMask) | ((packedWeights >> 1) & bc7lMask) | (packedWeights & 1);

        r0 = (gu1 << 52) | (gu0 << 38) | (ru1 << 24) | (ru0 << 10) | (bc7patternIndex << 4) | 8;
        r1 = (<u64>packedWeights << 34) | (pu1 << 32) | (pu0 << 30) | (bu1 << 16) | (bu0 << 2) | (gu1 >> 12);
      }
      break;
    case 5:
      {
        // 8-bit endpoints
        const rl0 = <u32>(q0 >> 20) & 0xFF;
        const rh0 = <u32>(q0 >> 28) & 0xFF;
        const gl0 = <u32>(q0 >> 36) & 0xFF;
        const gh0 = <u32>(q0 >> 44) & 0xFF;
        const bl0 = <u32>(q0 >> 52) & 0xFF;
        const bh0 = (<u32>(q0 >> 60) & 0x0F) | (<u32>(q1 << 4) & 0xF0);

        // 3-bit endpoints, start at 68
        const weights = ((q1 >> 3) & 0xFFFFFFFFFFF8) | ((q1 >> 4) & 3);

        // UASTC mode 5 maps to BC7 mode 6
        const packedEndpoints = mode6(rl0, rh0, gl0, gh0, bl0, bh0, 255, 255);
        const packedWeights = scaleWeights3(weights);

        r0 = (packedEndpoints << 7) | 0x40;
        r1 = (packedWeights & 0xFFFFFFFFFFFFFFF0) | ((packedWeights << 1) & 0xE) | (packedEndpoints >> 57);
      }
      break;
    case 6:
      {
        const compSel = <i32>(q0 >> 20) & 0x3;

        // Two quints (6 values), 2 * 7 bits
        const eq0 = unpackQuints(<u32>(q0 >> 22) & 0x7F);
        const eq1 = unpackQuints(<u32>(q0 >> 29) & 0x7F);

        // 5-bit endpoints
        let rl0 = <u32>(q0 >> 36) & 0x1F;
        let rh0 = <u32>(q0 >> 41) & 0x1F;
        let gl0 = <u32>(q0 >> 46) & 0x1F;
        let gh0 = <u32>(q0 >> 51) & 0x1F;
        let bl0 = <u32>(q0 >> 56) & 0x1F;
        let bh0 = (<u32>(q0 >> 61) & 0x7) | (<u32>(q1 << 3) & 0x18);

        rl0 = unq159(rl0, eq0 & 7);
        rh0 = unq159(rh0, (eq0 >> 4) & 7);
        gl0 = unq159(gl0, eq0 >> 8);
        gh0 = unq159(gh0, eq1 & 7);
        bl0 = unq159(bl0, (eq1 >> 4) & 7);
        bh0 = unq159(bh0, eq1 >> 8);

        // 2-bit weights, start at 66
        const weights = regroupWeights(
          (q1 & 0xFFFFFFFFFFFFFFF0) | ((q1 >> 1) & 4) | ((q1 >> 2) & 1)
        );

        // UASTC mode 6 maps to BC7 mode 5
        const packedEndpoints = mode5(rl0, rh0, gl0, gh0, bl0, bh0, 255, 255, compSel);
        const packedWeights = (
          ((weights << 0) & 0xFFFFFFFC00000000) |
          ((weights << 1) & 0x3FFFFFFF8) |
          ((weights << 2) & 4)
        );
        r0 = (packedEndpoints << 8) | (((compSel + 1) & 3) << 6) | 0x20;
        r1 = packedWeights | (packedEndpoints >> 56);
      }
      break;
    case 7:
      {
        const pat = <u32>(q0 >> 20) & 0x1F;
        if (pat > 18) {
          r0 = errorBlock;
          break;
        }

        // Four quints (12 values), 4 * 7 bits
        const eq0 = unpackQuints(<u32>(q0 >> 25) & 0x7F);
        const eq1 = unpackQuints(<u32>(q0 >> 32) & 0x7F);
        const eq2 = unpackQuints(<u32>(q0 >> 39) & 0x7F);
        const eq3 = unpackQuints(<u32>(q0 >> 46) & 0x7F);

        // 3-bit endpoints
        let rl0 = <u32>(q0 >> 53) & 0x7;
        let rh0 = <u32>(q0 >> 56) & 0x7;
        let gl0 = <u32>(q0 >> 59) & 0x7;
        let gh0 = (<u32>(q0 >> 62) & 0x3) | (<u32>(q1 << 2) & 0x4);
        let bl0 = <u32>(q1 >>  1) & 0x7;
        let bh0 = <u32>(q1 >>  4) & 0x7;
        let rl1 = <u32>(q1 >>  7) & 0x7;
        let rh1 = <u32>(q1 >> 10) & 0x7;
        let gl1 = <u32>(q1 >> 13) & 0x7;
        let gh1 = <u32>(q1 >> 16) & 0x7;
        let bl1 = <u32>(q1 >> 19) & 0x7;
        let bh1 = <u32>(q1 >> 22) & 0x7;

        rl0 = quant5(unq39(rl0, eq0 & 7));
        rh0 = quant5(unq39(rh0, (eq0 >> 4) & 7));
        gl0 = quant5(unq39(gl0, eq0 >> 8));
        gh0 = quant5(unq39(gh0, eq1 & 7));
        bl0 = quant5(unq39(bl0, (eq1 >> 4) & 7));
        bh0 = quant5(unq39(bh0, eq1 >> 8));
        rl1 = quant5(unq39(rl1, eq2 & 7));
        rh1 = quant5(unq39(rh1, (eq2 >> 4) & 7));
        gl1 = quant5(unq39(gl1, eq2 >> 8));
        gh1 = quant5(unq39(gh1, eq3 & 7));
        bl1 = quant5(unq39(bl1, (eq3 >> 4) & 7));
        bh1 = quant5(unq39(bh1, eq3 >> 8));

        // Anchor bits location depends on the pattern index
        const anchor = getTwoSubsetAnchorForModeIndex7(pat);
        const loMask = (0xFFFFFFFF << ((anchor << 1) | 1)) ^ 0xFFFFFFFC;
        const hiMask = 0xFFFFFFFF << ((anchor << 1) + 2);

        // 2-bit weights, start at 89
        const weights = <u32>(((q1 >> 23) & hiMask) | ((q1 >> 24) & loMask) | ((q1 >> 25) & 1));

        // 3-bit value that maps BC7 subsets to UASTC subsets for a given partition
        // 001 - BC7 subset 0
        // 010 - BC7 subset 1
        // 100 - BC7 subset 2
        const subsetOrder = <u32>(0x532F4311D95452 >> (pat * 3)) & 7;
        const bc7patternIndex = getThreeSubsetPatternIndexForModeIndex7(pat);

        // Remap 2 UASTC endpoint pairs to 3 BC7 endpoint pairs
        const bc7rl0 = (subsetOrder & 1) ? rl1 : rl0;
        const bc7rh0 = (subsetOrder & 1) ? rh1 : rh0;
        const bc7gl0 = (subsetOrder & 1) ? gl1 : gl0;
        const bc7gh0 = (subsetOrder & 1) ? gh1 : gh0;
        const bc7bl0 = (subsetOrder & 1) ? bl1 : bl0;
        const bc7bh0 = (subsetOrder & 1) ? bh1 : bh0;

        const bc7rl1 = (subsetOrder & 2) ? rl1 : rl0;
        const bc7rh1 = (subsetOrder & 2) ? rh1 : rh0;
        const bc7gl1 = (subsetOrder & 2) ? gl1 : gl0;
        const bc7gh1 = (subsetOrder & 2) ? gh1 : gh0;
        const bc7bl1 = (subsetOrder & 2) ? bl1 : bl0;
        const bc7bh1 = (subsetOrder & 2) ? bh1 : bh0;

        const bc7rl2 = (subsetOrder & 4) ? rl1 : rl0;
        const bc7rh2 = (subsetOrder & 4) ? rh1 : rh0;
        const bc7gl2 = (subsetOrder & 4) ? gl1 : gl0;
        const bc7gh2 = (subsetOrder & 4) ? gh1 : gh0;
        const bc7bl2 = (subsetOrder & 4) ? bl1 : bl0;
        const bc7bh2 = (subsetOrder & 4) ? bh1 : bh0;

        // Check BC7 anchors MSB to swap endpoints/weights
        const bc7anchor1 = getBC7ThreeSubsetAnchor1ForModeIndex7(pat) << 1;
        const bc7anchor2 = getBC7ThreeSubsetAnchor2ForModeIndex7(pat) << 1;

        const swap1 = <bool>(weights & (1 << (bc7anchor1 + 1)));
        const swap2 = <bool>(weights & (1 << (bc7anchor2 + 1)));

        // UASTC mode 7 maps to BC7 mode 2, copy prequantized endpoints
        const packedEndpoints0 = (
          (<u64>(
            ((swap2 ? bc7gh2 : bc7gl2) << 20) |
            ((swap1 ? bc7gl1 : bc7gh1) << 15) |
            ((swap1 ? bc7gh1 : bc7gl1) << 10) |
            ((bc7gh0                 ) <<  5) |
            ((bc7gl0                 ) <<  0)
          ) << 30) |
          (<u64>(
            ((swap2 ? bc7rl2 : bc7rh2) << 25) |
            ((swap2 ? bc7rh2 : bc7rl2) << 20) |
            ((swap1 ? bc7rl1 : bc7rh1) << 15) |
            ((swap1 ? bc7rh1 : bc7rl1) << 10) |
            ((bc7rh0                 ) <<  5) |
            ((bc7rl0                 ) <<  0)
          ))
        );

        const packedEndpoints1 = (
          (<u64>(swap2 ? bc7bl2 : bc7bh2) << 30) |
          (<u64>(
            ((swap2 ? bc7bh2 : bc7bl2) << 25) |
            ((swap1 ? bc7bl1 : bc7bh1) << 20) |
            ((swap1 ? bc7bh1 : bc7bl1) << 15) |
            ((bc7bh0                 ) << 10) |
            ((bc7bl0                 ) <<  5) |
            ((swap2 ? bc7gl2 : bc7gh2) <<  0)
          ))
        );

        let packedWeights = weights;
        if (swap1 || swap2) {
          const pattern = getThreeSubsetPatternForModeIndex7(pat);
          const patternMask = (
            select(pattern & 0xFFFF, 0, swap1) |
            select(pattern >> 16,    0, swap2)
          );
          packedWeights ^= duplicate16(patternMask);
        }

        // To generate correct masks, we must ensure that anchors are sorted
        const bc7anchorL = min(bc7anchor1, bc7anchor2);
        const bc7anchorH = max(bc7anchor1, bc7anchor2);

        // Apply BC7 anchors
        const bc7lMask = (0xFFFFFFFF << bc7anchorL) ^ 0xFFFFFFFE;
        const bc7mMask = ~(((1 << bc7anchorL) - 1) | (0xFFFFFFFF << (bc7anchorH - 1)));
        const bc7hMask = 0xFFFFFFFF << (bc7anchorH - 1);
        packedWeights = (
          ((packedWeights >> 3) & bc7hMask) |
          ((packedWeights >> 2) & bc7mMask) |
          ((packedWeights >> 1) & bc7lMask) |
          ((packedWeights >> 0) & 1)
        );

        r0 = (packedEndpoints0 << 9) | (bc7patternIndex << 3) | 4;
        r1 = (<u64>packedWeights << 35) | packedEndpoints1;
      }
      break;
    case 8:
      {
        const r = <u32>(q0 >>  5) & 0xFF;
        const g = <u32>(q0 >> 13) & 0xFF;
        const b = <u32>(q0 >> 21) & 0xFF;
        const a = <u32>(q0 >> 29) & 0xFF;

        const rq = solidEndpoints(r);
        const gq = solidEndpoints(g);
        const bq = solidEndpoints(b);

        // UASTC mode 8 maps to BC7 mode 5, write precomputed endpoints
        const packedEndpoints = (
          (<u64>(((a * 257) << 14) | bq) << 28) |
          (<u64>(((gq     ) << 14) | rq))
        );

        r0 = (packedEndpoints << 8) | 0x20;
        r1 = 0x00000000AAAAAAAC | (packedEndpoints >> 56);
      }
      break;
    case 9:
      {
        const pat = <u32>(q0 >> 28) & 0x1F;
        if (pat > 29) {
          r0 = errorBlock;
          break;
        }

        // 4-bit endpoints, unquantize in-place
        let lo = ((q1 << 31) | (q0 >> 33)) & 0x0F0F0F0F0F0F0F0F;
        let hi = ((q1 << 27) | (q0 >> 37)) & 0x0F0F0F0F0F0F0F0F;
        lo |= lo << 4;
        hi |= hi << 4;
        const rl0 = <u32>(lo >>  0) & 0xFF;
        const rh0 = <u32>(hi >>  0) & 0xFF;
        const gl0 = <u32>(lo >>  8) & 0xFF;
        const gh0 = <u32>(hi >>  8) & 0xFF;
        const bl0 = <u32>(lo >> 16) & 0xFF;
        const bh0 = <u32>(hi >> 16) & 0xFF;
        const al0 = <u32>(lo >> 24) & 0xFF;
        const ah0 = <u32>(hi >> 24) & 0xFF;
        const rl1 = <u32>(lo >> 32) & 0xFF;
        const rh1 = <u32>(hi >> 32) & 0xFF;
        const gl1 = <u32>(lo >> 40) & 0xFF;
        const gh1 = <u32>(hi >> 40) & 0xFF;
        const bl1 = <u32>(lo >> 48) & 0xFF;
        const bh1 = <u32>(hi >> 48) & 0xFF;
        const al1 = <u32>(lo >> 56) & 0xFF;
        const ah1 = <u32>(hi >> 56) & 0xFF;

        // Anchor bits location depends on the pattern index
        const anchor = getTwoSubsetAnchor(pat);
        const loMask = (0xFFFFFFFF << ((anchor << 1) | 1)) ^ 0xFFFFFFFC;
        const hiMask = 0xFFFFFFFF << ((anchor << 1) + 2);

        // 2-bit weights, start at 97
        const weights = (
          ((q1 >> 31) & hiMask) |
          ((q1 >> 32) & loMask) |
          ((q1 >> 33) & 1)
        );

        const subsetSwap = getBC7TwoSubsetSwap(pat);
        const bc7patternIndex = getTwoSubsetPatternIndex(pat);

        // Remap 2 UASTC endpoint pairs to 2 BC7 endpoint pairs
        const bc7rl0 = subsetSwap ? rl1 : rl0;
        const bc7rh0 = subsetSwap ? rh1 : rh0;
        const bc7gl0 = subsetSwap ? gl1 : gl0;
        const bc7gh0 = subsetSwap ? gh1 : gh0;
        const bc7bl0 = subsetSwap ? bl1 : bl0;
        const bc7bh0 = subsetSwap ? bh1 : bh0;
        const bc7al0 = subsetSwap ? al1 : al0;
        const bc7ah0 = subsetSwap ? ah1 : ah0;

        const bc7rl1 = subsetSwap ? rl0 : rl1;
        const bc7rh1 = subsetSwap ? rh0 : rh1;
        const bc7gl1 = subsetSwap ? gl0 : gl1;
        const bc7gh1 = subsetSwap ? gh0 : gh1;
        const bc7bl1 = subsetSwap ? bl0 : bl1;
        const bc7bh1 = subsetSwap ? bh0 : bh1;
        const bc7al1 = subsetSwap ? al0 : al1;
        const bc7ah1 = subsetSwap ? ah0 : ah1;

        // Check BC7 anchors MSB to swap endpoints/weights
        const bc7anchor1 = getBC7TwoSubsetAnchor(pat) << 1;
        const swap1 = weights & (1 << (bc7anchor1 + 1));

        // UASTC mode 9 maps to BC7 mode 7
        const packedEndpoints0 = mode7(
          bc7rl0, bc7rh0, bc7gl0, bc7gh0,
          bc7bl0, bc7bh0, bc7al0, bc7ah0
        );
        const ru0: u64 = (packedEndpoints0 >>  0) & 0x3FF;
        const gu0: u64 = (packedEndpoints0 >> 10) & 0x3FF;
        const bu0: u64 = (packedEndpoints0 >> 20) & 0x3FF;
        const au0: u64 = (packedEndpoints0 >> 30) & 0x3FF;
        const pu0: u64 = (packedEndpoints0 >> 40) & 3;

        const packedEndpoints1 = mode7(
          swap1 ? bc7rh1 : bc7rl1, swap1 ? bc7rl1 : bc7rh1,
          swap1 ? bc7gh1 : bc7gl1, swap1 ? bc7gl1 : bc7gh1,
          swap1 ? bc7bh1 : bc7bl1, swap1 ? bc7bl1 : bc7bh1,
          swap1 ? bc7ah1 : bc7al1, swap1 ? bc7al1 : bc7ah1
        );
        const ru1: u64 = (packedEndpoints1 >>  0) & 0x3FF;
        const gu1: u64 = (packedEndpoints1 >> 10) & 0x3FF;
        const bu1: u64 = (packedEndpoints1 >> 20) & 0x3FF;
        const au1: u64 = (packedEndpoints1 >> 30) & 0x3FF;
        const pu1: u64 = (packedEndpoints1 >> 40) & 3;

        let packedWeights = weights;
        if (swap1) {
          const patternMask = duplicate16(getTwoSubsetPattern(pat));
          packedWeights ^= patternMask;
        }

        // Apply BC7 anchors
        const bc7lMask = (0xFFFFFFFF << bc7anchor1) ^ 0xFFFFFFFE;
        const bc7hMask = 0xFFFFFFFF << (bc7anchor1 - 1);
        packedWeights = (
          ((packedWeights >> 2) & bc7hMask) |
          ((packedWeights >> 1) & bc7lMask) |
          ((packedWeights >> 0) & 1)
        );

        r0 = (bu0 << 54) | (gu1 << 44) | (gu0 << 34) | (ru1 << 24) | (ru0 << 14) | (bc7patternIndex << 8) | 0x80;
        r1 = (packedWeights << 34) | (pu1 << 32) | (pu0 << 30) | (au1 << 20) | (au0 << 10) | bu1;
      }
      break;
    case 10:
      {
        // Two trits (8 values), 8 + 5 bits
        const et0 = unpackTrits(<u32>(q0 >> 20) & 0xFF);
        const et1 = unpackTrits(<u32>(q0 >> 28) & 0x1F);

        // 4-bit endpoints
        let rl0 = <u32>(q0 >> 33) & 0xF;
        let rh0 = <u32>(q0 >> 37) & 0xF;
        let gl0 = <u32>(q0 >> 41) & 0xF;
        let gh0 = <u32>(q0 >> 45) & 0xF;
        let bl0 = <u32>(q0 >> 49) & 0xF;
        let bh0 = <u32>(q0 >> 53) & 0xF;
        let al0 = <u32>(q0 >> 57) & 0xF;
        let ah0 = (<u32>(q0 >> 61) & 0x7) | (<u32>(q1 << 3) & 0x8);

        rl0 = unq47(rl0, et0 & 3);
        rh0 = unq47(rh0, (et0 >> 2) & 3);
        gl0 = unq47(gl0, (et0 >> 4) & 3);
        gh0 = unq47(gh0, (et0 >> 6) & 3);
        bl0 = unq47(bl0, et0 >> 8);
        bh0 = unq47(bh0, et1 & 3);
        al0 = unq47(al0, (et1 >> 2) & 3);
        ah0 = unq47(ah0, (et1 >> 4) & 3);

        // 4-bit weights, start at 65, no need to move or recover anchor
        const weights = q1 & 0xFFFFFFFFFFFFFFFE;

        // UASTC mode 10 maps to BC7 mode 6
        const packedEndpoints = mode6(rl0, rh0, gl0, gh0, bl0, bh0, al0, ah0);

        r0 = (packedEndpoints << 7) | 0x40;
        r1 = weights | (packedEndpoints >> 57);
      }
      break;
    case 11:
      {
        const compSel = <i32>(q0 >> 19) & 0x3;

        // Two trits (8 values), 8 + 5 bits
        const et0 = unpackTrits(<u32>(q0 >> 21) & 0xFF);
        const et1 = unpackTrits(<u32>(q0 >> 29) & 0x1F);

        // 4-bit endpoints
        let rl0 = <u32>(q0 >> 34) & 0xF;
        let rh0 = <u32>(q0 >> 38) & 0xF;
        let gl0 = <u32>(q0 >> 42) & 0xF;
        let gh0 = <u32>(q0 >> 46) & 0xF;
        let bl0 = <u32>(q0 >> 50) & 0xF;
        let bh0 = <u32>(q0 >> 54) & 0xF;
        let al0 = <u32>(q0 >> 58) & 0xF;
        let ah0 = (<u32>(q0 >> 62) & 0x3) | (<u32>(q1 << 2) & 0xC);

        rl0 = unq47(rl0, et0 & 3);
        rh0 = unq47(rh0, (et0 >> 2) & 3);
        gl0 = unq47(gl0, (et0 >> 4) & 3);
        gh0 = unq47(gh0, (et0 >> 6) & 3);
        bl0 = unq47(bl0, et0 >> 8);
        bh0 = unq47(bh0, et1 & 3);
        al0 = unq47(al0, (et1 >> 2) & 3);
        ah0 = unq47(ah0, (et1 >> 4) & 3);

        // 2-bit weights, start at 66
        const weights = (q1 & 0xFFFFFFFFFFFFFFF0) | ((q1 >> 1) & 4) | ((q1 >> 2) & 1);

        // UASTC mode 11 maps to BC7 mode 5
        const packedEndpoints = mode5(rl0, rh0, gl0, gh0, bl0, bh0, al0, ah0, compSel);
        let packedWeights = regroupWeights(weights);
        packedWeights = (
          ((packedWeights << 0) & 0xFFFFFFFC00000000) |
          ((packedWeights << 1) & 0x3FFFFFFF8) |
          ((packedWeights << 2) & 4)
        );

        r0 = (packedEndpoints << 8) | (((compSel + 1) & 3) << 6) | 0x20;
        r1 = packedWeights | (packedEndpoints >> 56);
      }
      break;
    case 12:
      {
        // Two trits (8 values), 8 + 5 bits
        const et0 = unpackTrits(<u32>(q0 >> 20) & 0xFF);
        const et1 = unpackTrits(<u32>(q0 >> 28) & 0x1F);

        // 6-bit endpoints
        let rl0 = <u32>(q0 >> 33) & 0x3F;
        let rh0 = <u32>(q0 >> 39) & 0x3F;
        let gl0 = <u32>(q0 >> 45) & 0x3F;
        let gh0 = <u32>(q0 >> 51) & 0x3F;
        let bl0 = <u32>(q0 >> 57) & 0x3F;
        let bh0 = (<u32>(q0 >> 63) & 0x1) | (<u32>(q1 << 1) & 0x3E);
        let al0 = <u32>(q1 >> 5) & 0x3F;
        let ah0 = <u32>(q1 >> 11) & 0x3F;

        rl0 = unq191(rl0, et0 & 3);
        rh0 = unq191(rh0, (et0 >> 2) & 3);
        gl0 = unq191(gl0, (et0 >> 4) & 3);
        gh0 = unq191(gh0, (et0 >> 6) & 3);
        bl0 = unq191(bl0, et0 >> 8);
        bh0 = unq191(bh0, et1 & 3);
        al0 = unq191(al0, (et1 >> 2) & 3);
        ah0 = unq191(ah0, (et1 >> 4) & 3);

        // 3-bit weights, start at 81
        const weights = ((q1 >> 16) & 0xFFFFFFFFFFF8) | ((q1 >> 17) & 3);

        // UASTC mode 12 maps to BC7 mode 6
        const packedEndpoints = mode6(rl0, rh0, gl0, gh0, bl0, bh0, al0, ah0);
        let packedWeights = scaleWeights3(weights);
        packedWeights = (
          ((packedWeights << 0) & 0xFFFFFFFFFFFFFFF0) |
          ((packedWeights << 1) & 0xE)
        );

        r0 = (packedEndpoints << 7) | 0x40;
        r1 = packedWeights | (packedEndpoints >> 57);
      }
      break;
    case 13:
      {
        const compSel = <i32>(q0 >> 28) & 0x3;

        // 8-bit endpoints
        const rl0 = <u32>(q0 >> 30) & 0xFF;
        const rh0 = <u32>(q0 >> 38) & 0xFF;
        const gl0 = <u32>(q0 >> 46) & 0xFF;
        const gh0 = <u32>(q0 >> 54) & 0xFF;
        const bl0 = (<u32>(q0 >> 62) & 0x03) | (<u32>(q1 << 2) & 0xFC);
        const bh0 = <u32>(q1 >> 6) & 0xFF;
        const al0 = <u32>(q1 >> 14) & 0xFF;
        const ah0 = <u32>(q1 >> 22) & 0xFF;

        // 1-bit weights, start at 94
        const weights = (q1 >> 28) & 0xFFFFFFFC;

        // UASTC mode 13 maps to BC7 mode 5
        const packedEndpoints = mode5(rl0, rh0, gl0, gh0, bl0, bh0, al0, ah0, compSel);
        let packedWeights = regroupWeights(duplicate32(weights));
        packedWeights = (
          ((packedWeights << 0) & 0xFFFFFFFC00000000) |
          ((packedWeights << 1) & 0x3FFFFFFF8) |
          ((packedWeights << 2) & 4)
        );

        r0 = (packedEndpoints << 8) | (((compSel + 1) & 3) << 6) | 0x20;
        r1 = packedWeights | (packedEndpoints >> 56);
      }
      break;
    case 14:
      {
        // 8-bit endpoints
        const rl0 = <u32>(q0 >> 28) & 0xFF;
        const rh0 = <u32>(q0 >> 36) & 0xFF;
        const gl0 = <u32>(q0 >> 44) & 0xFF;
        const gh0 = <u32>(q0 >> 52) & 0xFF;
        const bl0 = (<u32>(q0 >> 60) & 0xF) | (<u32>(q1 << 4) & 0xF0);
        const bh0 = <u32>(q1 >> 4) & 0xFF;
        const al0 = <u32>(q1 >> 12) & 0xFF;
        const ah0 = <u32>(q1 >> 20) & 0xFF;

        // 2-bit weights, start at 92
        const weights = ((q1 >> 27) & 0xFFFFFFFC) | ((q1 >> 28) & 1);

        // UASTC mode 14 maps to BC7 mode 6
        const packedEndpoints = mode6(rl0, rh0, gl0, gh0, bl0, bh0, al0, ah0);
        let packedWeights = scaleWeights2(weights);
        packedWeights = (
          ((packedWeights << 0) & 0xFFFFFFFFFFFFFFF0) |
          ((packedWeights << 1) & 0xE)
        );

        r0 = (packedEndpoints << 7) | 0x40;
        r1 = packedWeights | (packedEndpoints >> 57);
      }
      break;
    case 15:
      {
        // 8-bit endpoints
        const ll0 = <u32>(q0 >> 30) & 0xFF;
        const lh0 = <u32>(q0 >> 38) & 0xFF;
        const al0 = <u32>(q0 >> 46) & 0xFF;
        const ah0 = <u32>(q0 >> 54) & 0xFF;

        // 4-bit weights, start at 62, no need to normalize anchors for BC7
        const weights = ((q1 << 2) & 0x7FFFFFFFFFFFFFFC) | ((q0 >> 62) & 3);

        // UASTC mode 15 maps to BC7 mode 6
        const packedEndpoints = mode6LA(ll0, lh0, al0, ah0);

        r0 = (packedEndpoints << 7) | 0x40;
        r1 = (weights << 1) | (packedEndpoints >> 57);
      }
      break;
    case 16:
      {
        const pat = <u32>(q0 >> 29) & 0x1F;
        if (pat > 29) {
          r0 = errorBlock;
          break;
        }

        // 8-bit endpoints
        const ll0 = <u32>(q0 >> 34) & 0xFF;
        const lh0 = <u32>(q0 >> 42) & 0xFF;
        const al0 = <u32>(q0 >> 50) & 0xFF;
        const ah0 = (<u32>(q0 >> 58) & 0x3F) | (<u32>(q1 << 6) & 0xC0);
        const ll1 = <u32>(q1 >> 2) & 0xFF;
        const lh1 = <u32>(q1 >> 10) & 0xFF;
        const al1 = <u32>(q1 >> 18) & 0xFF;
        const ah1 = <u32>(q1 >> 26) & 0xFF;

        // Anchor bits location depends on the pattern index
        const anchor = getTwoSubsetAnchor(pat);
        const loMask = (0xFFFFFFFF << ((anchor << 1) | 1)) ^ 0xFFFFFFFC;
        const hiMask = 0xFFFFFFFF << ((anchor << 1) + 2);

        // 2-bit weights, start at 98
        const weights = <u32>(
          ((q1 >> 32) & hiMask) |
          ((q1 >> 33) & loMask) |
          ((q1 >> 34) & 1)
        );

        const subsetSwap = getBC7TwoSubsetSwap(pat);
        const bc7patternIndex = getTwoSubsetPatternIndex(pat);

        // Remap 2 UASTC endpoint pairs to 2 BC7 endpoint pairs
        const bc7ll0 = subsetSwap ? ll1 : ll0;
        const bc7lh0 = subsetSwap ? lh1 : lh0;
        const bc7al0 = subsetSwap ? al1 : al0;
        const bc7ah0 = subsetSwap ? ah1 : ah0;

        const bc7ll1 = subsetSwap ? ll0 : ll1;
        const bc7lh1 = subsetSwap ? lh0 : lh1;
        const bc7al1 = subsetSwap ? al0 : al1;
        const bc7ah1 = subsetSwap ? ah0 : ah1;

        // Check BC7 anchors MSB to swap endpoints/weights
        const bc7anchor1 = getBC7TwoSubsetAnchor(pat) << 1;
        const swap1 = weights & (1 << (bc7anchor1 + 1));

        // UASTC mode 16 maps to BC7 mode 7
        const packedEndpoints0 = mode7LA(bc7ll0, bc7lh0, bc7al0, bc7ah0);
        const lu0: u64 = (packedEndpoints0 >>  0) & 0x3FF;
        const au0: u64 = (packedEndpoints0 >> 10) & 0x3FF;
        const pu0: u64 = (packedEndpoints0 >> 20) & 3;

        const packedEndpoints1 = mode7LA(
          swap1 ? bc7lh1 : bc7ll1, swap1 ? bc7ll1 : bc7lh1,
          swap1 ? bc7ah1 : bc7al1, swap1 ? bc7al1 : bc7ah1
        );
        const lu1: u64 = (packedEndpoints1 >>  0) & 0x3FF;
        const au1: u64 = (packedEndpoints1 >> 10) & 0x3FF;
        const pu1: u64 = (packedEndpoints1 >> 20) & 3;

        let packedWeights = weights;
        if (swap1) {
          packedWeights ^= duplicate16(getTwoSubsetPattern(pat));
        }

        // Apply BC7 anchors
        const bc7lMask = (0xFFFFFFFF << bc7anchor1) ^ 0xFFFFFFFE;
        const bc7hMask = 0xFFFFFFFF << (bc7anchor1 - 1);
        packedWeights = (
          ((packedWeights >> 2) & bc7hMask) |
          ((packedWeights >> 1) & bc7lMask) |
          ((packedWeights >> 0) & 1)
        );

        r0 = (lu0 << 54) | (lu1 << 44) | (lu0 << 34) | (lu1 << 24) | (lu0 << 14) | (bc7patternIndex << 8) | 0x80;
        r1 = (<u64>packedWeights << 34) | (pu1 << 32) | (pu0 << 30) | (au1 << 20) | (au0 << 10) | lu1;
      }
      break;
    case 17:
      {
        // 8-bit endpoints
        const ll0 = <u32>(q0 >> 29) & 0xFF;
        const lh0 = <u32>(q0 >> 37) & 0xFF;
        const al0 = <u32>(q0 >> 45) & 0xFF;
        const ah0 = <u32>(q0 >> 53) & 0xFF;

        // 2-bit weights, start at 61
        const weights = (q1 << 5) | ((q0 >> 59) & 16) | ((q0 >> 60) & 4) | ((q0 >> 61) & 1);

        // UASTC mode 16 maps to BC7 mode 5
        const packedEndpoints = mode5LA(ll0, lh0, al0, ah0);
        let packedWeights = regroupWeights(weights);
        packedWeights = (
          ((packedWeights << 0) & 0xFFFFFFFC00000000) |
          ((packedWeights << 1) & 0x3FFFFFFF8) |
          ((packedWeights << 2) & 4)
        );

        r0 = (packedEndpoints << 8) | 0x20;
        r1 = packedWeights | (packedEndpoints >> 56);
      }
      break;
    case 18:
      {
        // 5-bit endpoints, unquantize in-place
        let lo = <u32>(q0 >> 16) & 0xF83E0F8;
        let hi = <u32>(q0 >> 21) & 0xF83E0F8;
        lo |= lo >> 5;
        hi |= hi >> 5;
        const rl0 = (lo >>  0) & 0xFF;
        const rh0 = (hi >>  0) & 0xFF;
        const gl0 = (lo >> 10) & 0xFF;
        const gh0 = (hi >> 10) & 0xFF;
        const bl0 = (lo >> 20) & 0xFF;
        const bh0 = (hi >> 20) & 0xFF;

        // 5-bit weights, start at 49
        // All 16 weights do not fit into a single 64-bit variable,
        // split them as 8 (40) + 8 (40).
        const weights1 = (q1 >> 24) & 0xFFFFFFFFFF;
        const weights0 = ((q1 << 16) & 0xFFFFFF0000) | ((q0 >> 48) & 0xFFE0) | ((q0 >> 49) & 0xF);

        // UASTC mode 18 maps to BC7 mode 6
        const packedEndpoints = mode6(rl0, rh0, gl0, gh0, bl0, bh0, 255, 255);
        const packedWeights = (scaleWeights5(weights1) << 32) | scaleWeights5(weights0);

        r0 = (packedEndpoints << 7) | 0x40;
        r1 = (packedWeights & 0xFFFFFFFFFFFFFFF0) | ((packedWeights << 1) & 0xE) | (packedEndpoints >> 57);
      }
      break;
    default:
      r0 = errorBlock;
      break;
  }
  store<u64>(offset, r0, 0);
  store<u64>(offset, r1, 8);
}

/// Solid-color endpoints precomputation

const solidEndpointsOffset = 1536;

/**
 * Get packed precomputed 7-bit endpoint pair for a 8-bit channel value.
 */
// @ts-ignore: 1206
@inline
function solidEndpoints(c: i32): i32 {
  return load<i16>(c << 1, solidEndpointsOffset);
}

/**
 * Precompute and store packed 7-bit endpoint pairs for each 8-bit channel value.
 */
// @ts-ignore: 1206
@inline
function storeSolidEndpoints(): void {
  for (let c: u32 = 0; c < 256; c++) {
    const l = c >> 1;
    const h = (c >> 1) + (c & 1) - (c >> 7);
    store<u16>(c << 1, (h << 7) | l, solidEndpointsOffset);
  }
}

/// Endpoint quantization routines

/**
 * Quantize 8-bit value to 5 bits for BC7 modes 3 and 7.
 * Same as ((v * 31 + 127) / 255)
 */
// @ts-ignore: 1206
@inline
function quant5(v: u32): u32 {
  return (v * 0xF9 + 0x3FF) >> 11;
}

/**
 * Quantize 8-bit value to 7 bits for BC7 mode 5.
 * Same as ((v * 127 + 127) / 255)
 */
// @ts-ignore: 1206
@inline
function quant7(v: u32): u32 {
  return ((v + 1) * 0xFF) >> 9;
}

/**
 * Quantize 8-bit LA endpoint pair to 7778 and pack for BC7 mode 5.
 */
// @ts-ignore: 1206
@inline
function mode5LA(ll: u32, lh: u32, al: u32, ah: u32): u64 {
  const llq = <u64>quant7(ll) * 0x10004001;
  const lhq = <u64>quant7(lh) * 0x800200080;
  return (<u64>((ah << 8) | al) << 42) | lhq | llq;
}

/**
 * Quantize 8-bit RGBA endpoint pair to 7778 with channel rotation.
 * The result needs to be further repacked for BC7 mode 5.
 */
// @ts-ignore: 1206
@inline
function mode5(
  rl: u32, rh: u32, gl: u32, gh: u32,
  bl: u32, bh: u32, al: u32, ah: u32,
  compSel: i32
): u64 {
  switch (compSel) {
    case 0:
      return (<u64>((rh << 22) | (rl << 14) | (quant7(bh) << 7) | quant7(bl)) << 28) |
        ((quant7(gh) << 21) | (quant7(gl) << 14) | (quant7(ah) << 7) | quant7(al));
    case 1:
      return (<u64>((gh << 22) | (gl << 14) | (quant7(bh) << 7) | quant7(bl)) << 28) |
        ((quant7(ah) << 21) | (quant7(al) << 14) | (quant7(rh) << 7) | quant7(rl));
    case 2:
      return (<u64>((bh << 22) | (bl << 14) | (quant7(ah) << 7) | quant7(al)) << 28) |
        ((quant7(gh) << 21) | (quant7(gl) << 14) | (quant7(rh) << 7) | quant7(rl));
    default:
      return (<u64>((ah << 22) | (al << 14) | (quant7(bh) << 7) | quant7(bl)) << 28) |
        ((quant7(gh) << 21) | (quant7(gl) << 14) | (quant7(rh) << 7) | quant7(rl));
  }
}

// @ts-ignore: 1206
@inline
function square(v: i32): i32 {
  return v * v;
}

/// BC7 mode 1 endpoints precomputation

const mode1EndpointsOffset = 3072;

function storeMode1(): void {
  for (let v = 0; v < 256; v++) {
    const vq0 = min(((v + 1) >> 2) << 1, 126);
    const vq1 = min((((max(v, 1) - 1) >> 2) << 1) + 1, 127);
    const vs0 = (vq0 << 1) | (vq0 >> 6);
    const vs1 = (vq1 << 1) | (vq1 >> 6);
    const error = square(v - vs1) - square(v - vs0);
    store<u8>(v << 2,   vq0, mode1EndpointsOffset + 0);
    store<u8>(v << 2,   vq1, mode1EndpointsOffset + 1);
    store<i8>(v << 2, error, mode1EndpointsOffset + 2);
  }
}

/**
 * Quantize 8-bit RGB endpoint pair to 6 bits with a p-bit.
 * The result needs to be further repacked for BC7 mode 1.
 */
function mode1(rl: u32, rh: u32, gl: u32, gh: u32, bl: u32, bh: u32): u64 {
  rl = (rl << 2) + mode1EndpointsOffset;
  rh = (rh << 2) + mode1EndpointsOffset;
  gl = (gl << 2) + mode1EndpointsOffset;
  gh = (gh << 2) + mode1EndpointsOffset;
  bl = (bl << 2) + mode1EndpointsOffset;
  bh = (bh << 2) + mode1EndpointsOffset;

  const rlq0: u32 = load<u8>(rl, 0);
  const rlq1: u32 = load<u8>(rl, 1);
  const rhq0: u32 = load<u8>(rh, 0);
  const rhq1: u32 = load<u8>(rh, 1);
  const glq0: u32 = load<u8>(gl, 0);
  const glq1: u32 = load<u8>(gl, 1);
  const ghq0: u32 = load<u8>(gh, 0);
  const ghq1: u32 = load<u8>(gh, 1);
  const blq0: u32 = load<u8>(bl, 0);
  const blq1: u32 = load<u8>(bl, 1);
  const bhq0: u32 = load<u8>(bh, 0);
  const bhq1: u32 = load<u8>(bh, 1);

  const error = (
    <i32>load<i8>(rl, 2) +
    <i32>load<i8>(gl, 2) +
    <i32>load<i8>(bl, 2) +
    <i32>load<i8>(rh, 2) +
    <i32>load<i8>(gh, 2) +
    <i32>load<i8>(bh, 2)
  );

  const packed0 = (
    (<u64>(bhq0 >> 1) << 30) |
    (<u64>(
      ((blq0 >> 1) << 24) |
      ((ghq0 >> 1) << 18) |
      ((glq0 >> 1) << 12) |
      ((rhq0 >> 1) <<  6) |
      ((rlq0 >> 1) <<  0)
    ))
  );

  const packed1 = (
    (<u64>(64 | (bhq1 >> 1)) << 30) |
    (<u64>(
      ((blq1 >> 1) << 24) |
      ((ghq1 >> 1) << 18) |
      ((glq1 >> 1) << 12) |
      ((rhq1 >> 1) <<  6) |
      ((rlq1 >> 1) <<  0)
    ))
  );

  return select(packed0, packed1, error >= 0);
}

/**
 * Quantize 8-bit RGB endpoint pair to 7 bits with two p-bits.
 * The result needs to be further repacked for BC7 mode 3.
 */
function mode3(rl: u32, rh: u32, gl: u32, gh: u32, bl: u32, bh: u32): u64 {
  const rlq0 = rl == 255 ? 254 : (rl + 1);
  const rhq0 = rh == 255 ? 254 : (rh + 1);
  const glq0 = gl == 255 ? 254 : (gl + 1);
  const ghq0 = gh == 255 ? 254 : (gh + 1);
  const blq0 = bl == 255 ? 254 : (bl + 1);
  const bhq0 = bh == 255 ? 254 : (bh + 1);

  const errorLo0 = (rl & 1) + (gl & 1) + (bl & 1);
  const errorHi0 = (rh & 1) + (gh & 1) + (bh & 1);

  const errorLo1 = (~rl & 1) + (~gl & 1) + (~bl & 1);
  const errorHi1 = (~rh & 1) + (~gh & 1) + (~bh & 1);

  const packedLo0 = (<u64>(blq0 >> 1) << 28) | <u64>(((glq0 >> 1) << 14) | ((rlq0 >> 1) << 0));
  const packedHi0 = (<u64>(bhq0 >> 1) << 35) | <u64>(((ghq0 >> 1) << 21) | ((rhq0 >> 1) << 7));

  const packedLo1 = (<u64>(0x4000 | (bl >> 1)) << 28) | (<u64>(((gl >> 1) << 14) | (rl >> 1)) << 0);
  const packedHi1 = (<u64>( 0x100 | (bh >> 1)) << 35) | (<u64>(((gh >> 1) << 14) | (rh >> 1)) << 7);

  const packedLo = select(packedLo0, packedLo1, errorLo0 <= errorLo1);
  const packedHi = select(packedHi0, packedHi1, errorHi0 <= errorHi1);

  return packedLo | packedHi;
}

/**
 * Quantize 8-bit RGBA endpoint pair to 7 bits with 2 p-bits and pack for BC7 mode 6.
 */
function mode6(
  rl: u32, rh: u32, gl: u32, gh: u32,
  bl: u32, bh: u32, al: u32, ah: u32
): u64 {
  const rlq0 = rl == 255 ? 254 : (rl + 1);
  const rhq0 = rh == 255 ? 254 : (rh + 1);
  const glq0 = gl == 255 ? 254 : (gl + 1);
  const ghq0 = gh == 255 ? 254 : (gh + 1);
  const blq0 = bl == 255 ? 254 : (bl + 1);
  const bhq0 = bh == 255 ? 254 : (bh + 1);
  const alq0 = al == 255 ? 254 : (al + 1);
  const ahq0 = ah == 255 ? 254 : (ah + 1);

  const errorLo0 = (rl & 1) + (gl & 1) + (bl & 1) + (al & 1);
  const errorHi0 = (rh & 1) + (gh & 1) + (bh & 1) + (ah & 1);

  const errorLo1 = (~rl & 1) + (~gl & 1) + (~bl & 1) + (~al & 1);
  const errorHi1 = (~rh & 1) + (~gh & 1) + (~bh & 1) + (~ah & 1);

  const packedLo0 = (
    (<u64>(((alq0 >> 1) << 14) | (blq0 >> 1)) << 28) |
    (<u64>(((glq0 >> 1) << 14) | (rlq0 >> 1)) <<  0)
  );
  const packedHi0 = (
    (<u64>(((ahq0 >> 1) << 14) | (bhq0 >> 1)) << 35) |
    (<u64>(((ghq0 >> 1) << 14) | (rhq0 >> 1)) <<  7)
  );

  const packedLo1 = (
    (<u64>(0x10000000 | ((al >> 1) << 14) | (bl >> 1)) << 28) |
    (<u64>(             ((gl >> 1) << 14) | (rl >> 1)) <<  0)
  );
  const packedHi1 = (
    (<u64>(0x400000 | ((ah >> 1) << 14) | (bh >> 1)) << 35) |
    (<u64>(           ((gh >> 1) << 14) | (rh >> 1)) <<  7)
  );

  const packedLo = select(packedLo0, packedLo1, errorLo0 <= errorLo1);
  const packedHi = select(packedHi0, packedHi1, errorHi0 <= errorHi1);

  return packedLo | packedHi;
}

/**
 * Quantize 8-bit LA endpoint pair to 7 bits with 2 p-bits and pack for BC7 mode 6.
 */
function mode6LA(ll: u32, lh: u32, al: u32, ah: u32): u64 {
  const llq0 = ll == 255 ? 254 : (ll + 1);
  const lhq0 = lh == 255 ? 254 : (lh + 1);
  const alq0 = al == 255 ? 254 : (al + 1);
  const ahq0 = ah == 255 ? 254 : (ah + 1);

  const errorLo0 = 3 * (ll & 1) + (al & 1);
  const errorHi0 = 3 * (lh & 1) + (ah & 1);

  const errorLo1 = 3 * (~ll & 1) + (~al & 1);
  const errorHi1 = 3 * (~lh & 1) + (~ah & 1);

  const packedLo0 = (<u64>(alq0 >> 1) << 42) | (<u64>(llq0 >> 1) * 0x10004001);
  const packedHi0 = (<u64>(ahq0 >> 1) << 49) | (<u64>(lhq0 >> 1) * 0x800200080);

  const packedLo1 = (<u64>1 << 56) | (<u64>(al >> 1) << 42) | (<u64>(ll >> 1) * 0x10004001);
  const packedHi1 = (<u64>1 << 57) | (<u64>(ah >> 1) << 49) | (<u64>(lh >> 1) * 0x800200080);

  const packedLo = select(packedLo0, packedLo1, errorLo0 <= errorLo1);
  const packedHi = select(packedHi0, packedHi1, errorHi0 <= errorHi1);

  return packedLo | packedHi;
}

/// BC7 mode 7 endpoints precomputation

const mode7EndpointsOffset = 4096;

function storeMode7(): void {
  for (let v = 0; v < 256; v++) {
    const vq0 = min(((((v * 0xFD) >> 10) + 1) & 0x7E), 62);
    const vq1 = min(((((v * 0xFD) >> 10)) & 0x7E) + 1, 63);
    const vs0 = (vq0 << 2) | (vq0 >> 4);
    const vs1 = (vq1 << 2) | (vq1 >> 4);
    const error = square(v - vs1) - square(v - vs0);
    store<u8>(v << 2,   vq0, mode7EndpointsOffset + 0);
    store<u8>(v << 2,   vq1, mode7EndpointsOffset + 1);
    store<i8>(v << 2, error, mode7EndpointsOffset + 2);
  }
}

/**
 * Quantize 8-bit RGBA endpoint pair to 5 bits with 2 p-bits.
 * The result needs to be further repacked for BC7 mode 7.
 */
function mode7(
  rl: u32, rh: u32, gl: u32, gh: u32,
  bl: u32, bh: u32, al: u32, ah: u32
): u64 {
  rl = (rl << 2) + mode7EndpointsOffset;
  rh = (rh << 2) + mode7EndpointsOffset;
  gl = (gl << 2) + mode7EndpointsOffset;
  gh = (gh << 2) + mode7EndpointsOffset;
  bl = (bl << 2) + mode7EndpointsOffset;
  bh = (bh << 2) + mode7EndpointsOffset;
  al = (al << 2) + mode7EndpointsOffset;
  ah = (ah << 2) + mode7EndpointsOffset;

  const rlq0: u32 = load<u8>(rl, 0);
  const rlq1: u32 = load<u8>(rl, 1);
  const rhq0: u32 = load<u8>(rh, 0);
  const rhq1: u32 = load<u8>(rh, 1);
  const glq0: u32 = load<u8>(gl, 0);
  const glq1: u32 = load<u8>(gl, 1);
  const ghq0: u32 = load<u8>(gh, 0);
  const ghq1: u32 = load<u8>(gh, 1);
  const blq0: u32 = load<u8>(bl, 0);
  const blq1: u32 = load<u8>(bl, 1);
  const bhq0: u32 = load<u8>(bh, 0);
  const bhq1: u32 = load<u8>(bh, 1);
  const alq0: u32 = load<u8>(al, 0);
  const alq1: u32 = load<u8>(al, 1);
  const ahq0: u32 = load<u8>(ah, 0);
  const ahq1: u32 = load<u8>(ah, 1);

  const errorLo = (
    <i32>load<i8>(rl, 2) +
    <i32>load<i8>(gl, 2) +
    <i32>load<i8>(bl, 2) +
    <i32>load<i8>(al, 2)
  );

  const errorHi = (
    <i32>load<i8>(rh, 2) +
    <i32>load<i8>(gh, 2) +
    <i32>load<i8>(bh, 2) +
    <i32>load<i8>(ah, 2)
  );

  const packedLo0 = (
    (<u64>(alq0 >> 1) << 30) |
    (<u64>(blq0 >> 1) << 20) |
    ((glq0 >> 1) << 10) |
    ((rlq0 >> 1) <<  0)
  );
  const packedHi0 = (
    (<u64>(ahq0 >> 1) << 35) |
    (<u64>(bhq0 >> 1) << 25) |
    ((ghq0 >> 1) << 15) |
    ((rhq0 >> 1) <<  5)
  );

  const packedLo1 = (
    (<u64>1           << 40) |
    (<u64>(alq1 >> 1) << 30) |
    (<u64>(blq1 >> 1) << 20) |
    ((glq1 >> 1) << 10) |
    ((rlq1 >> 1) <<  0)
  );
  const packedHi1 = (
    (<u64>1           << 41) |
    (<u64>(ahq1 >> 1) << 35) |
    (<u64>(bhq1 >> 1) << 25) |
    ((ghq1 >> 1) << 15) |
    ((rhq1 >> 1) <<  5)
  );

  const packedLo = select(packedLo0, packedLo1, errorLo >= 0);
  const packedHi = select(packedHi0, packedHi1, errorHi >= 0);

  return packedLo | packedHi;
}

/**
 * Quantize 8-bit LA endpoint pair to 5 bits with 2 p-bits.
 * The result needs to be further repacked for BC7 mode 7.
 */
function mode7LA(ll: u32, lh: u32, al: u32, ah: u32): u32 {
  ll = (ll << 2) + mode7EndpointsOffset;
  lh = (lh << 2) + mode7EndpointsOffset;
  al = (al << 2) + mode7EndpointsOffset;
  ah = (ah << 2) + mode7EndpointsOffset;

  const llq0: u32 = load<u8>(ll, 0);
  const llq1: u32 = load<u8>(ll, 1);
  const lhq0: u32 = load<u8>(lh, 0);
  const lhq1: u32 = load<u8>(lh, 1);
  const alq0: u32 = load<u8>(al, 0);
  const alq1: u32 = load<u8>(al, 1);
  const ahq0: u32 = load<u8>(ah, 0);
  const ahq1: u32 = load<u8>(ah, 1);

  const errorLo = 3 * <i32>load<i8>(ll, 2) + <i32>load<i8>(al, 2);
  const errorHi = 3 * <i32>load<i8>(lh, 2) + <i32>load<i8>(ah, 2);

  const packedLo0 = ((alq0 >> 1) << 10) | ((llq0 >> 1) << 0);
  const packedHi0 = ((ahq0 >> 1) << 15) | ((lhq0 >> 1) << 5);

  const packedLo1 = (1 << 20) | ((alq1 >> 1) << 10) | ((llq1 >> 1) << 0);
  const packedHi1 = (1 << 21) | ((ahq1 >> 1) << 15) | ((lhq1 >> 1) << 5);

  const packedLo = select(packedLo0, packedLo1, errorLo >= 0);
  const packedHi = select(packedHi0, packedHi1, errorHi >= 0);

  return packedLo | packedHi;
}

const modeIndex3PatternsOffset = 2048;
const modeIndex7PatternsOffset = 2096;
const twoSubsetsPatternsOffset = 2176;

function storePatterns(): void {
  // 11 3-subset patterns for UASTC Mode Index 3 / BC7 Mode 2.
  // Each pattern is stored as a 32-bit value.
  // Lower 16 bits denote subset 1, higher 16 bits denote subset 2.
  store<u64>(modeIndex3PatternsOffset, 0xF0000F00CC003300, 0);
  store<u64>(modeIndex3PatternsOffset, 0xFF0000F0F0000FF0, 8);
  store<u64>(modeIndex3PatternsOffset, 0x8888666688884444, 16);
  store<u64>(modeIndex3PatternsOffset, 0xEE0000EECCCC2222, 24);
  store<u64>(modeIndex3PatternsOffset, 0x0F0000F044442222, 32);
  store<u64>(modeIndex3PatternsOffset, 0x00000000C00C0CC0, 40);

  // 19 3-subset patterns for UASTC Mode Index 7 / BC7 Mode 2.
  // Each pattern is stored as a 32-bit value.
  // Lower 16 bits denote subset 1, higher 16 bits denote subset 2.
  store<u64>(modeIndex7PatternsOffset, 0x88884444FF0000F0, 0);
  store<u64>(modeIndex7PatternsOffset, 0x3310CC80F60008CC, 8);
  store<u64>(modeIndex7PatternsOffset, 0xCCCC2222F0000F00, 16);
  store<u64>(modeIndex7PatternsOffset, 0x08CEC40073008CC8, 24);
  store<u64>(modeIndex7PatternsOffset, 0xEE0000EE03C0C03C, 32);
  store<u64>(modeIndex7PatternsOffset, 0xCCCC033077008888, 40);
  store<u64>(modeIndex7PatternsOffset, 0xEC80130000CEEC00, 48);
  store<u64>(modeIndex7PatternsOffset, 0xEC80004C90006000, 56);
  store<u64>(modeIndex7PatternsOffset, 0xEC80136CEE0000EE, 64);
  store<u64>(modeIndex7PatternsOffset, 0x0000000073108C00, 72);

  // 30 2-subset patterns for UASTC Mode Indices 2, 4, 9, 16
  // pre-swapped to match their BC7 counterparts.
  // Each pattern is stored as a 16-bit value.
  store<u64>(twoSubsetsPatternsOffset, 0xECC8EEEE8888CCCC, 0);
  store<u64>(twoSubsetsPatternsOffset, 0xEC80FEC8FEECC880, 8);
  store<u64>(twoSubsetsPatternsOffset, 0xE800FE80FFECC800, 16);
  store<u64>(twoSubsetsPatternsOffset, 0xF000FFF0FF00FFE8, 24);
  store<u64>(twoSubsetsPatternsOffset, 0x008C08CE7100008E, 32);
  store<u64>(twoSubsetsPatternsOffset, 0x088C8CCE31007310, 40);
  store<u64>(twoSubsetsPatternsOffset, 0xAAAA0FF066663110, 48);
  store<u64>(twoSubsetsPatternsOffset, 0x00000000C936F0F0, 56);
}

/**
 * Get 3-subset BC7 mode 2 patterns for a given UASTC pattern index (Mode Index 3).
 */
function getThreeSubsetPatternForModeIndex3(i: u32): u32 {
  return load<u32>(i << 2, modeIndex3PatternsOffset);
}

/**
 * Get 3-subset BC7 mode 2 patterns for a given UASTC pattern index (Mode Index 7).
 */
function getThreeSubsetPatternForModeIndex7(i: u32): u32 {
  return load<u32>(i << 2, modeIndex7PatternsOffset);
}

/**
 * Get pattern value for a given UASTC pattern index (Mode Indices 2, 4, 9, 16).
 */
function getTwoSubsetPattern(i: u32): u32 {
  return load<u16>(i << 1, twoSubsetsPatternsOffset);
}

/**
 * Get BC7 mode 2 partition pattern index for a given UASTC pattern index (Mode Index 3).
 */
// @ts-ignore: 1206
@inline
function getThreeSubsetPatternIndexForModeIndex3(pat: u32): u32 {
  const c00_07: u64 = 0x140D0C0B0A090804;
  const c08_10: u64 = 0x392423;
  const c = pat > 7 ? c08_10 : c00_07;
  return <u32>(c >> ((pat & 7) << 3)) & 0xFF;
}

/**
 * Get BC7 partition pattern index a given pattern index (Mode Index 7).
 */
// @ts-ignore: 1206
@inline
function getThreeSubsetPatternIndexForModeIndex7(pat: u32): u32 {
  const c00_07: u64 = 0x21010D0802000B0A;
  const c08_15: u64 = 0x223B20033A151428;
  const c16_18: u64 = 0x1F0E14;
  const c = select(c16_18, (pat > 7 ? c08_15 : c00_07), pat > 15);
  return <u32>(c >> ((pat & 7) << 3)) & 0xFF;
}

/**
 * Get BC7 partition pattern index for a given pattern index (Mode Indices 2, 4, 9, 16).
 */
// @ts-ignore: 1206
@inline
function getTwoSubsetPatternIndex(pat: u32): u32 {
  if (pat < 26) return pat + u32(pat > 15);
  return (0x3421201D >> ((pat - 26) << 3)) & 0xFF;
}

/**
 * Get BC7 subset 1 anchor value for a given UASTC pattern index (Mode Index 7).
 */
// @ts-ignore: 1206
@inline
function getBC7ThreeSubsetAnchor1ForModeIndex7(pat: u32): u32 {
  const c00_15: u64 = 0x3D8F833FF358F366;
  const c16_18: u64 = 0xF33;
  return <u32>(((pat > 15) ? c16_18 : c00_15) >> ((pat & 0xF) << 2)) & 0xF;
}

/**
 * Get BC7 subset 2 anchor value for a given UASTC pattern index (Mode Index 7).
 */
// @ts-ignore: 1206
@inline
function getBC7ThreeSubsetAnchor2ForModeIndex7(pat: u32): u32 {
  const c00_15: u64 = 0xFFF3F8F638FF8FFF;
  const c16_18: u64 = 0x8FF;
  return <u32>(((pat > 15) ? c16_18 : c00_15) >> ((pat & 0xF) << 2)) & 0xF;
}

/**
 * Get BC7 subset swap flag for a given pattern index (Mode Indices 2, 4, 9, 16).
 */
// @ts-ignore: 1206
@inline
function getBC7TwoSubsetSwap(pat: u32): u32 {
  return (0x3D63BAD4 >> pat) & 1;
}

/**
 * Get BC7 subset 1 anchor value for a given UASTC pattern index (Mode Indices 2, 4, 9, 16).
 */
// @ts-ignore: 1206
@inline
function getBC7TwoSubsetAnchor(pat: u32): u32 {
  if (pat < 16) return 15;
  return <u32>(0xFFF8282F882282 >> ((pat & 0xF) << 2)) & 0xF;
}

/**
 * Convert 2-bit UASTC weights to 4-bit BC7.
 */
// @ts-ignore: 1206
@inline
function scaleWeights2(v: u64): u64 {
  // ab * 16 -> 00ab * 16
  v = ((v << 16) & 0x0000FFFF00000000) | (v & 0x000000000000FFFF);
  v = ((v <<  8) & 0x00FF000000FF0000) | (v & 0x000000FF000000FF);
  v = ((v <<  4) & 0x0F000F000F000F00) | (v & 0x000F000F000F000F);
  v = ((v <<  2) & 0x3030303030303030) | (v & 0x0303030303030303);

  // 00ab * 16 -> abab * 16
  return v * 5;
}

/**
 * Convert 3-bit UASTC weights to 4-bit BC7.
 */
// @ts-ignore: 1206
@inline
function scaleWeights3(w: u64): u64 {
  // abc * 16 -> 0abc * 16
  w = ((w << 8) & 0x00FFFFFF00000000) | (w & 0x0000000000FFFFFF);
  w = ((w << 4) & 0x0FFF00000FFF0000) | (w & 0x00000FFF00000FFF);
  w = ((w << 2) & 0x3F003F003F003F00) | (w & 0x003F003F003F003F);
  w = ((w << 1) & 0x7070707070707070) | (w & 0x0707070707070707);

  // 0abc * 16 -> abca * 16
  return (w << 1) | ((w >> 2) & 0x1111111111111111);
}

/**
 * Convert 5-bit UASTC weights to 4-bit BC7.
 */
// @ts-ignore: 1206
@inline
function scaleWeights5(weights: u64): u64 {
  // Weights could be scaled by a single right shift
  // but 14 and 17 must first be mapped to 12 or 13 and 18 or 19 respectively.

  // Replace 14 with 12 and 17 with 19 as it's the simplest option:
  // 14 XOR 2 = 12; 17 XOR 2 = 19.

  // Mark 5-bit regions with all zeros where 14 or 17 are present.
  let x14 = weights ^ (0x842108421 * 14);
  let x17 = weights ^ (0x842108421 * 17);

  // Where a 5-bit region has some bits set, ensure that the MSB is also set.
  x14 |= (x14 & 0x7BDEF7BDEF) + 0x7BDEF7BDEF;
  x17 |= (x17 & 0x7BDEF7BDEF) + 0x7BDEF7BDEF;

  // XOR 2 all 5-bit regions that contain 14 or 17.
  weights ^= (~(x14 & x17) >> 3) & 0x1084210842;

  // abcde * 8 -> 0abcd * 8
  weights = (weights >> 1) & 0x7BDEF7BDEF;

  // 0abcd * 8 -> abcd * 8
  weights = (weights & 0x00000003C0F03C0F) | ((weights >> 1) & 0x0000003C0F03C0F0);
  weights = (weights & 0x000000000FF000FF) | ((weights >> 2) & 0x0000000FF000FF00);
  weights = (weights & 0x000000000000FFFF) | ((weights >> 4) & 0x00000000FFFF0000);

  return weights;
}

/**
 * Regroup 2x2x16 bits to 2x16x2 for BC7 mode 5.
 */
// @ts-ignore: 1206
@inline
function regroupWeights(w: u64): u64 {
  let x: u64 = 0;
  x = ((w >>  2) ^ (w >>  4)) & 0x0303030303030303;
  w ^= (x <<  2) | (x <<  4);
  x = ((w >>  4) ^ (w >>  8)) & 0x000F000F000F000F;
  w ^= (x <<  4) | (x <<  8);
  x = ((w >>  8) ^ (w >> 16)) & 0x000000FF000000FF;
  w ^= (x <<  8) | (x << 16);
  x = ((w >> 16) ^ (w >> 32)) & 0x000000000000FFFF;
  w ^= (x << 16) | (x << 32);
  return w;
}
