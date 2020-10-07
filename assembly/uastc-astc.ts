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
  storePatterns,
  getTwoSubsetPattern,
  getTwoSubsetPatternForModeIndex7,
  getThreeSubsetPattern,
  duplicate16, triplicate16
} from './lib/uastc/patterns';

let firstRun = true;

/**
 * Repack UASTC data as ASTC in-place
 * @param nBlocks - The total number of compressed blocks
 */
export function transcode(nBlocks: i32): i32 {
  const totalBytes = nBlocks * 16;
  if ((memory.size() - 1) * 65536 < totalBytes) return 1;

  if (firstRun) {
    /*
    Memory layout:
       0...1475: Common data
    1536...1791: Trits encoding
    1792...1919: Quints encoding
    1920...2047: Pattern indices
    2048...2239: Pattern data
    */
    storeCommonData();
    storeTritsAstc();
    storeQuintsAstc();
    storeAstcPatternIndices();
    storePatterns();
    firstRun = false;
  }

  for (let offset = 65536; offset < 65536 + totalBytes; offset += 16) {
    const q0 = load<u64>(offset, 0);
    const q1 = load<u64>(offset, 8);
    repackASTC(q0, q1, offset);
  }
  return 0;
}

// @ts-ignore: 1206
@inline
function repackASTC(q0: u64, q1: u64, offset: i32): void {
  const voidExtent: u64 = 0xFFFFFFFFFFFFFDFC;
  const errorColor: u64 = 0xFFFFFFFF0000FFFF;

  let r0: u64 = 0;
  let r1: u64 = 0;

  let modeIndex = getModeIndex(<u32>q0 & 0x7F);

  // Mode Indices 4 and 7 share a lot of transcoding steps but merging them
  // in a switch-case causes unoptimal compiler output.
  const mode4 = modeIndex == 4;
  modeIndex = mode4 ? 7 : modeIndex;

  switch (modeIndex) {
    case 0:
      {
        // Two trits (6 values), 8 + 2 bits
        const et0 = unpackTrits(<u32>(q0 >> 19) & 0xFF);
        const et1 = unpackTrits(<u32>(q0 >> 27) & 0x3);

        // 6-bit endpoints
        const rl0 = <u32>(q0 >> 29) & 0x3F;
        const rh0 = <u32>(q0 >> 35) & 0x3F;
        const gl0 = <u32>(q0 >> 41) & 0x3F;
        const gh0 = <u32>(q0 >> 47) & 0x3F;
        const bl0 = <u32>(q0 >> 53) & 0x3F;
        const bh0 = (<u32>(q0 >> 59) & 0x1F) | (<u32>(q1 << 5) & 0x20);

        // 4-bit weights, start at 65
        const weights = (q1 & 0xFFFFFFFFFFFFFFF0) | ((q1 >> 1) & 7);

        const rl0t = et0 & 3;
        const rh0t = (et0 >> 2) & 3;
        const gl0t = (et0 >> 4) & 3;
        const gh0t = (et0 >> 6) & 3;
        const bl0t = et0 >> 8;
        const bh0t = et1 & 3;

        const swap = (
          (unq191(rl0, rl0t) + unq191(gl0, gl0t) + unq191(bl0, bl0t)) >
          (unq191(rh0, rh0t) + unq191(gh0, gh0t) + unq191(bh0, bh0t))
        );

        const t0 = packTrits(
          swap ? rh0t : rl0t, swap ? rl0t : rh0t,
          swap ? gh0t : gl0t, swap ? gl0t : gh0t,
          swap ? bh0t : bl0t);
        const t1 = packTrits(
          swap ? bl0t : bh0t,
          0, 0, 0, 0);

        // Pack endpoints & weights
        const packedBits = interleaveBits6Tx2(
          swap ? rh0 : rl0, swap ? rl0 : rh0,
          swap ? gh0 : gl0, swap ? gl0 : gh0,
          swap ? bh0 : bl0, swap ? bl0 : bh0,
          0, 0);
        const packedTrits = (interleaveTrits6(t1) << 38) | interleaveTrits6(t0);
        const packedEndpoints = packedBits | packedTrits;
        const packedWeights = reverse64(swap ? ~weights : weights);

        // ASTC Mode 578, CEM 8, 17-bit header
        r0 = (packedEndpoints << 17) | 0x10242;
        r1 = packedWeights;
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

        // Check blue contraction and pack endpoints & weights
        const swap = (rl0 + gl0 + bl0) > (rh0 + gh0 + bh0);
        const packedEndpoints = (
          (packRGBAz8(rh0, gh0, bh0, 0) << (swap ? 0 : 8)) |
          (packRGBAz8(rl0, gl0, bl0, 0) << (swap ? 8 : 0))
        );

        const packedWeights = reverse32(swap ? ~weights : weights);

        // ASTC Mode 66, CEM 8, 17-bit header
        r0 = (packedEndpoints << 17) | 0x10042;
        r1 = (<u64>packedWeights << 32) | (packedEndpoints >> 47);
      }
      break;
    case 2:
      {
        const pat = <u32>(q0 >> 20) & 0x1F;
        if (pat > 29) {
          r0 = voidExtent;
          r1 = errorColor;
          break;
        }

        // 4-bit endpoints
        const rl0 = <u32>(q0 >> 25) & 0xF;
        const rh0 = <u32>(q0 >> 29) & 0xF;
        const gl0 = <u32>(q0 >> 33) & 0xF;
        const gh0 = <u32>(q0 >> 37) & 0xF;
        const bl0 = <u32>(q0 >> 41) & 0xF;
        const bh0 = <u32>(q0 >> 45) & 0xF;
        const rl1 = <u32>(q0 >> 49) & 0xF;
        const rh1 = <u32>(q0 >> 53) & 0xF;
        const gl1 = <u32>(q0 >> 57) & 0xF;
        const gh1 = (<u32>(q0 >> 61) & 0x7) | (<u32>(q1 << 3) & 0x8);
        const bl1 = <u32>(q1 >> 1) & 0xF;
        const bh1 = <u32>(q1 >> 5) & 0xF;

        // Anchor bits location depends on the pattern index; unset unused bits
        const anchor = getTwoSubsetAnchor(pat);
        const loMask: u64 = (0xFFFFFFFFFFFFFFFF << ((anchor * 3) + 2)) ^ 0xFFFFFFFFFFFFFFF8;
        const hiMask: u64 = (0xFFFFFFFFFFFFFFFF << ((anchor * 3) + 3)) & 0xFFFFFFFFFFFF;

        // 3-bit weights, start at 73
        const weights = ((q1 >> 7) & hiMask) | ((q1 >> 8) & loMask) | ((q1 >> 9) & 3);

        // Check blue contraction and pack endpoints & weights
        const swap0 = (rl0 + gl0 + bl0) > (rh0 + gh0 + bh0);
        const swap1 = (rl1 + gl1 + bl1) > (rh1 + gh1 + bh1);
        const packedEndpoints0 = <u64>(
          (packRGBAz4(rh0, gh0, bh0, 0) << (swap0 ? 0 : 4)) |
          (packRGBAz4(rl0, gl0, bl0, 0) << (swap0 ? 4 : 0))
        );
        const packedEndpoints1 = <u64>(
          (packRGBAz4(rh1, gh1, bh1, 0) << (swap1 ? 0 : 4)) |
          (packRGBAz4(rl1, gl1, bl1, 0) << (swap1 ? 4 : 0))
        );
        const packedEndpoints = (packedEndpoints1 << 24) | packedEndpoints0;

        let packedWeights = weights;
        if (swap0 && swap1) {
          packedWeights ^= 0xFFFFFFFFFFFF;
        } else if (swap0 !== swap1) {
          const patternMask = triplicate16(getTwoSubsetPattern(pat));
          packedWeights ^= swap1 ? patternMask : (patternMask ^ 0xFFFFFFFFFFFF);
        }

        packedWeights = reverse64(packedWeights);

        // ASTC Mode 83, 2 subsets, CEM 8, 29-bit header
        r0 = (packedEndpoints << 29) | (getTwoSubsetsPatternIndex(pat) << 13) | 0x10000853;
        r1 = packedWeights | (packedEndpoints >> 35);
      }
      break;
    case 3:
      {
        const pat = <u32>(q0 >> 20) & 0xF;
        if (pat > 10) {
          r0 = voidExtent;
          r1 = errorColor;
          break;
        }

        // Four trits (18 values), 3 * 8 + 5 bits
        const et0 = unpackTrits(<u32>(q0 >> 24) & 0xFF);
        const et1 = unpackTrits(<u32>(q0 >> 32) & 0xFF);
        const et2 = unpackTrits(<u32>(q0 >> 40) & 0xFF);
        const et3 = unpackTrits(<u32>(q0 >> 48) & 0x1F);

        // 2-bit endpoints
        const rl0 = <u32>(q0 >> 53) & 0x3;
        const rh0 = <u32>(q0 >> 55) & 0x3;
        const gl0 = <u32>(q0 >> 57) & 0x3;
        const gh0 = <u32>(q0 >> 59) & 0x3;
        const bl0 = <u32>(q0 >> 61) & 0x3;
        const bh0 = (<u32>(q0 >> 63) & 0x1) | (<u32>(q1 << 1) & 0x2);
        const rl1 = <u32>(q1 >> 1) & 0x3;
        const rh1 = <u32>(q1 >> 3) & 0x3;
        const gl1 = <u32>(q1 >> 5) & 0x3;
        const gh1 = <u32>(q1 >> 7) & 0x3;
        const bl1 = <u32>(q1 >> 9) & 0x3;
        const bh1 = <u32>(q1 >> 11) & 0x3;
        const rl2 = <u32>(q1 >> 13) & 0x3;
        const rh2 = <u32>(q1 >> 15) & 0x3;
        const gl2 = <u32>(q1 >> 17) & 0x3;
        const gh2 = <u32>(q1 >> 19) & 0x3;
        const bl2 = <u32>(q1 >> 21) & 0x3;
        const bh2 = <u32>(q1 >> 23) & 0x3;

        const anchorL = getThreeSubsetAnchorL(pat);
        const anchorH = getThreeSubsetAnchorH(pat);

        const lMask = (0xFFFFFFFF << ((anchorL << 1) | 1)) ^ 0xFFFFFFFC;
        const mMask = ~(((1 << ((anchorL << 1) + 2)) - 1) | (0xFFFFFFFF << ((anchorH << 1) + 1)));
        const hMask = 0xFFFFFFFF << ((anchorH << 1) + 2);

        // 2-bit weights, start at 89
        const weights = (
          (<u32>(q1 >> 22) & hMask) | (<u32>(q1 >> 23) & mMask) |
          (<u32>(q1 >> 24) & lMask) | (<u32>(q1 >> 25) & 1)
        );

        const rl0t = et0 & 3;
        const rh0t = (et0 >> 2) & 3;
        const gl0t = (et0 >> 4) & 3;
        const gh0t = (et0 >> 6) & 3;
        const bl0t = et0 >> 8;
        const bh0t = et1 & 3;
        const rl1t = (et1 >> 2) & 3;
        const rh1t = (et1 >> 4) & 3;
        const gl1t = (et1 >> 6) & 3;
        const gh1t = et1 >> 8;
        const bl1t = et2 & 3;
        const bh1t = (et2 >> 2) & 3;
        const rl2t = (et2 >> 4) & 3;
        const rh2t = (et2 >> 6) & 3;
        const gl2t = et2 >> 8;
        const gh2t = et3 & 3;
        const bl2t = (et3 >> 2) & 3;
        const bh2t = (et3 >> 4) & 3;

        const swap0 = (
          (unq11(rl0, rl0t) + unq11(gl0, gl0t) + unq11(bl0, bl0t)) >
          (unq11(rh0, rh0t) + unq11(gh0, gh0t) + unq11(bh0, bh0t))
        );
        const swap1 = (
          (unq11(rl1, rl1t) + unq11(gl1, gl1t) + unq11(bl1, bl1t)) >
          (unq11(rh1, rh1t) + unq11(gh1, gh1t) + unq11(bh1, bh1t))
        );
        const swap2 = (
          (unq11(rl2, rl2t) + unq11(gl2, gl2t) + unq11(bl2, bl2t)) >
          (unq11(rh2, rh2t) + unq11(gh2, gh2t) + unq11(bh2, bh2t))
        );
        const t0 = packTrits(
          swap0 ? rh0t : rl0t, swap0 ? rl0t : rh0t,
          swap0 ? gh0t : gl0t, swap0 ? gl0t : gh0t,
          swap0 ? bh0t : bl0t);
        const t1 = packTrits(
          swap0 ? bl0t : bh0t,
          swap1 ? rh1t : rl1t, swap1 ? rl1t : rh1t,
          swap1 ? gh1t : gl1t, swap1 ? gl1t : gh1t);
        const t2 = packTrits(
          swap1 ? bh1t : bl1t, swap1 ? bl1t : bh1t,
          swap2 ? rh2t : rl2t, swap2 ? rl2t : rh2t,
          swap2 ? gh2t : gl2t);
        const t3 = packTrits(
          swap2 ? gl2t : gh2t,
          swap2 ? bh2t : bl2t, swap2 ? bl2t : bh2t,
          0, 0);

        // Pack endpoints & weights
        // Packed endpoints do not fit into 64 bits, split as 54 + 11
        const packedBits0 =
          (<u64>interleaveBits2T(
            swap0 ? rh0 : rl0, swap0 ? rl0 : rh0,
            swap0 ? gh0 : gl0, swap0 ? gl0 : gh0,
            swap0 ? bh0 : bl0)) |
          (<u64>interleaveBits2T(
            swap0 ? bl0 : bh0,
            swap1 ? rh1 : rl1, swap1 ? rl1 : rh1,
            swap1 ? gh1 : gl1, swap1 ? gl1 : gh1) << 18) |
          (<u64>interleaveBits2T(
            swap1 ? bh1 : bl1, swap1 ? bl1 : bh1,
            swap2 ? rh2 : rl2, swap2 ? rl2 : rh2,
            swap2 ? gh2 : gl2) << 36);
        const packedBits1 =
          interleaveBits2T(
            swap2 ? gl2 : gh2,
            swap2 ? bh2 : bl2, swap2 ? bl2 : bh2,
            0, 0);
        const packedTrits0 =
          (<u64>interleaveTrits2(t2) << 36) |
          (<u64>interleaveTrits2(t1) << 18) |
          (<u64>interleaveTrits2(t0) <<  0);
        const packedTrits1 = interleaveTrits2(t3);
        const packedEndpoints0 = packedBits0 | packedTrits0;
        const packedEndpoints1 = packedBits1 | packedTrits1;

        let packedWeights = weights;
        if (swap0 && swap1 && swap2) {
          packedWeights = ~packedWeights;
        } else if (swap0 || swap1 || swap2) {
          const pattern = getThreeSubsetPattern(pat);
          const patternMask1 = duplicate16(pattern & 0xFFFF);
          const patternMask2 = duplicate16(pattern >> 16);
          const patternMask0 = 0xFFFFFFFF ^ (patternMask1 | patternMask2);
          packedWeights ^=
            (swap0 ? patternMask0 : 0) |
            (swap1 ? patternMask1 : 0) |
            (swap2 ? patternMask2 : 0);
        }

        packedWeights = reverse32(packedWeights);

        // ASTC Mode 66, 3 subsets, CEM 8, 29-bit header
        r0 = (packedEndpoints0 << 29) | (getThreeSubsetsPatternIndex(pat) << 13) | 0x10001042;
        r1 = (<u64>packedWeights << 32) | (packedEndpoints1 << 19) | (packedEndpoints0 >> 35);
      }
      break;
    case 7:
      {
        const pat = <u32>(q0 >> 20) & 0x1F;
        if (pat > (mode4 ? 29 : 18)) {
          r0 = voidExtent;
          r1 = errorColor;
          break;
        }

        // Four quints (12 values), 4 * 7 bits
        const eq0 = unpackQuints(<u32>(q0 >> 25) & 0x7F);
        const eq1 = unpackQuints(<u32>(q0 >> 32) & 0x7F);
        const eq2 = unpackQuints(<u32>(q0 >> 39) & 0x7F);
        const eq3 = unpackQuints(<u32>(q0 >> 46) & 0x7F);

        // 3-bit endpoints
        const rl0 = <u32>(q0 >> 53) & 0x7;
        const rh0 = <u32>(q0 >> 56) & 0x7;
        const gl0 = <u32>(q0 >> 59) & 0x7;
        const gh0 = (<u32>(q0 >> 62) & 0x3) | (<u32>(q1 << 2) & 0x4);
        const bl0 = <u32>(q1 >> 1) & 0x7;
        const bh0 = <u32>(q1 >> 4) & 0x7;
        const rl1 = <u32>(q1 >> 7) & 0x7;
        const rh1 = <u32>(q1 >> 10) & 0x7;
        const gl1 = <u32>(q1 >> 13) & 0x7;
        const gh1 = <u32>(q1 >> 16) & 0x7;
        const bl1 = <u32>(q1 >> 19) & 0x7;
        const bh1 = <u32>(q1 >> 22) & 0x7;

        // Anchor bits location depends on the pattern index
        const anchor = mode4 ? getTwoSubsetAnchor(pat) : getTwoSubsetAnchorForModeIndex7(pat);
        const loMask = (0xFFFFFFFF << ((anchor << 1) | 1)) ^ 0xFFFFFFFC;
        const hiMask = 0xFFFFFFFF << ((anchor << 1) + 2);

        // 2-bit weights, start at 89
        const weights = <u32>(((q1 >> 23) & hiMask) | ((q1 >> 24) & loMask) | ((q1 >> 25) & 1));

        const rl0q = eq0 & 7;
        const rh0q = (eq0 >> 4) & 7;
        const gl0q = eq0 >> 8;
        const gh0q = eq1 & 7;
        const bl0q = (eq1 >> 4) & 7;
        const bh0q = eq1 >> 8;
        const rl1q = eq2 & 7;
        const rh1q = (eq2 >> 4) & 7;
        const gl1q = eq2 >> 8;
        const gh1q = eq3 & 7;
        const bl1q = (eq3 >> 4) & 7;
        const bh1q = eq3 >> 8;

        const swap0 = (
          (unq39(rl0, rl0q) + unq39(gl0, gl0q) + unq39(bl0, bl0q)) >
          (unq39(rh0, rh0q) + unq39(gh0, gh0q) + unq39(bh0, bh0q))
        );
        const swap1 = (
          (unq39(rl1, rl1q) + unq39(gl1, gl1q) + unq39(bl1, bl1q)) >
          (unq39(rh1, rh1q) + unq39(gh1, gh1q) + unq39(bh1, bh1q))
        );

        const qu0 = packQuints(
          swap0 ? rh0q : rl0q, swap0 ? rl0q : rh0q, swap0 ? gh0q : gl0q);
        const qu1 = packQuints(
          swap0 ? gl0q : gh0q, swap0 ? bh0q : bl0q, swap0 ? bl0q : bh0q);
        const qu2 = packQuints(
          swap1 ? rh1q : rl1q, swap1 ? rl1q : rh1q, swap1 ? gh1q : gl1q);
        const qu3 = packQuints(
          swap1 ? gl1q : gh1q, swap1 ? bh1q : bl1q, swap1 ? bl1q : bh1q);
        const packedQuints = (
          (<u64>((interleaveQuints3(qu3) << 16) | interleaveQuints3(qu2)) << 32) |
          (<u64>((interleaveQuints3(qu1) << 16) | interleaveQuints3(qu0)) <<  0)
        );
        const packedBits =
          (<u64>interleaveBits3Qx2(
            swap0 ? rh0 : rl0, swap0 ? rl0 : rh0,
            swap0 ? gh0 : gl0, swap0 ? gl0 : gh0,
            swap0 ? bh0 : bl0, swap0 ? bl0 : bh0)) |
          (<u64>interleaveBits3Qx2(
            swap1 ? rh1 : rl1, swap1 ? rl1 : rh1,
            swap1 ? gh1 : gl1, swap1 ? gl1 : gh1,
            swap1 ? bh1 : bl1, swap1 ? bl1 : bh1) << 32);
        const packedEndpoints = packedQuints | packedBits;

        let packedWeights = weights;
        if (swap0 && swap1) {
          packedWeights ^= 0xFFFFFFFF;
        } else if (swap0 !== swap1) {
          const patternMask = duplicate16(mode4 ? getTwoSubsetPattern(pat) : getTwoSubsetPatternForModeIndex7(pat));
          packedWeights ^= swap1 ? patternMask : ~patternMask;
        }

        packedWeights = reverse32(packedWeights);

        // ASTC Mode 66, 2 subsets, CEM 8, 29-bit header
        r0 = ((mode4 ? getTwoSubsetsPatternIndex(pat) : getTwoSubsetsPatternIndexForModeIndex7(pat)) << 13) | (packedEndpoints << 29) | 0x10000842;
        r1 = (<u64>packedWeights << 32) | (packedEndpoints >> 35);
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

        // 3-bit weights, start at 68
        const weights = ((q1 >> 3) & 0xFFFFFFFFFFF8) | ((q1 >> 4) & 3);

        // Check blue contraction and pack endpoints & weights
        const swap = (rl0 + gl0 + bl0) > (rh0 + gh0 + bh0);
        const packedEndpoints = (
          (packRGBAz8(rh0, gh0, bh0, 0) << (swap ? 0 : 8)) |
          (packRGBAz8(rl0, gl0, bl0, 0) << (swap ? 8 : 0))
        );

        const packedWeights = reverse64(swap ? (~weights & 0xFFFFFFFFFFFF) : weights);

        // ASTC Mode 83, CEM 8, 17-bit header
        r0 = (packedEndpoints << 17) | 0x10053;
        r1 = packedWeights | (packedEndpoints >> 47);
      }
      break;
    case 6:
      {
        const compSel = <u32>(q0 >> 20) & 0x3;

        // Two quints (6 values), 2 * 7 bits
        const eq0 = unpackQuints(<u32>(q0 >> 22) & 0x7F);
        const eq1 = unpackQuints(<u32>(q0 >> 29) & 0x7F);

        // 5-bit endpoints
        const rl0 = <u32>(q0 >> 36) & 0x1F;
        const rh0 = <u32>(q0 >> 41) & 0x1F;
        const gl0 = <u32>(q0 >> 46) & 0x1F;
        const gh0 = <u32>(q0 >> 51) & 0x1F;
        const bl0 = <u32>(q0 >> 56) & 0x1F;
        const bh0 = (<u32>(q0 >> 61) & 0x7) | (<u32>(q1 << 3) & 0x18);

        // 2-bit weights, start at 66
        const weights = (q1 & 0xFFFFFFFFFFFFFFF0) | ((q1 >> 1) & 4) | ((q1 >> 2) & 1);

        const rl0q = eq0 & 7;
        const rh0q = (eq0 >> 4) & 7;
        const gl0q = eq0 >> 8;
        const gh0q = eq1 & 7;
        const bl0q = (eq1 >> 4) & 7;
        const bh0q = eq1 >> 8;

        const swap = (
          (unq159(rl0, rl0q) + unq159(gl0, gl0q) + unq159(bl0, bl0q)) >
          (unq159(rh0, rh0q) + unq159(gh0, gh0q) + unq159(bh0, bh0q))
        );

        const qu0 = packQuints(
          swap ? rh0q : rl0q,
          swap ? rl0q : rh0q,
          swap ? gh0q : gl0q);
        const qu1 = packQuints(
          swap ? gl0q : gh0q,
          swap ? bh0q : bl0q,
          swap ? bl0q : bh0q);

        // Pack endpoints & weights
        const packedBits = interleaveBits5Qx2(
          swap ? rh0 : rl0, swap ? rl0 : rh0,
          swap ? gh0 : gl0, swap ? gl0 : gh0,
          swap ? bh0 : bl0, swap ? bl0 : bh0);
        const packedQuints = (<u64>interleaveQuints5(qu1) << 22) | interleaveQuints5(qu0);
        const packedEndpoints = packedBits | packedQuints;
        const packedWeights = reverse64(swap ? ~weights : weights);

        // ASTC Mode 1090 (Dp), CEM 8, 17-bit header
        r0 = (<u64>compSel << 62) | (packedEndpoints << 17) | 0x10442;
        r1 = packedWeights;
      }
      break;
    case 8:
      {
        const r = <u32>(q0 >>  5) & 0xFF;
        const g = <u32>(q0 >> 13) & 0xFF;
        const b = <u32>(q0 >> 21) & 0xFF;
        const a = <u32>(q0 >> 29) & 0xFF;

        r0 = voidExtent;
        r1 = (0x101000000000000 * a) | (0x10100000000 * b) | (0x1010000 * g) | (0x101 * r);
      }
      break;
    case 9:
      {
        const pat = <u32>(q0 >> 28) & 0x1F;
        if (pat > 29) {
          r0 = voidExtent;
          r1 = errorColor;
          break;
        }

        // 4-bit endpoints
        const rl0 = <u32>(q0 >> 33) & 0xF;
        const rh0 = <u32>(q0 >> 37) & 0xF;
        const gl0 = <u32>(q0 >> 41) & 0xF;
        const gh0 = <u32>(q0 >> 45) & 0xF;
        const bl0 = <u32>(q0 >> 49) & 0xF;
        const bh0 = <u32>(q0 >> 53) & 0xF;
        const al0 = <u32>(q0 >> 57) & 0xF;
        const ah0 = (<u32>(q0 >> 61) & 0x7) | (<u32>(q1 << 3) & 0x8);
        const rl1 = <u32>(q1 >> 1) & 0xF;
        const rh1 = <u32>(q1 >> 5) & 0xF;
        const gl1 = <u32>(q1 >> 9) & 0xF;
        const gh1 = <u32>(q1 >> 13) & 0xF;
        const bl1 = <u32>(q1 >> 17) & 0xF;
        const bh1 = <u32>(q1 >> 21) & 0xF;
        const al1 = <u32>(q1 >> 25) & 0xF;
        const ah1 = <u32>(q1 >> 29) & 0xF;

        // Anchor bits location depends on the pattern index
        const anchor = getTwoSubsetAnchor(pat);
        const loMask = (0xFFFFFFFF << ((anchor << 1) | 1)) ^ 0xFFFFFFFC;
        const hiMask = 0xFFFFFFFF << ((anchor << 1) + 2);

        // 2-bit weights, start at 97
        const weights = <u32>(((q1 >> 31) & hiMask) | ((q1 >> 32) & loMask) | ((q1 >> 33) & 1));

        // Check blue contraction and pack endpoints & weights
        const swap0 = (rl0 + gl0 + bl0) > (rh0 + gh0 + bh0);
        const swap1 = (rl1 + gl1 + bl1) > (rh1 + gh1 + bh1);
        const packedEndpoints0 = (
          (packRGBAz4(rh0, gh0, bh0, ah0) << (swap0 ? 0 : 4)) |
          (packRGBAz4(rl0, gl0, bl0, al0) << (swap0 ? 4 : 0))
        );
        const packedEndpoints1 = (
          (packRGBAz4(rh1, gh1, bh1, ah1) << (swap1 ? 0 : 4)) |
          (packRGBAz4(rl1, gl1, bl1, al1) << (swap1 ? 4 : 0))
        );
        const packedEndpoints = (<u64>packedEndpoints1 << 32) | <u64>packedEndpoints0;

        let packedWeights = weights;
        if (swap0 && swap1) {
          packedWeights ^= 0xFFFFFFFF;
        } else if (swap0 !== swap1) {
          const patternMask = duplicate16(getTwoSubsetPattern(pat));
          packedWeights ^= swap1 ? patternMask : (patternMask ^ 0xFFFFFFFF);
        }
        packedWeights = reverse32(packedWeights);

        // ASTC Mode 66, 2 subsets, CEM 12, 29-bit header
        r0 = (packedEndpoints << 29) | (getTwoSubsetsPatternIndex(pat) << 13) | 0x18000842;
        r1 = (<u64>packedWeights << 32) | (packedEndpoints >> 35);
      }
      break;
    case 10:
      {
        // Two trits (8 values), 8 + 5 bits
        const et0 = unpackTrits(<u32>(q0 >> 20) & 0xFF);
        const et1 = unpackTrits(<u32>(q0 >> 28) & 0x1F);

        // 4-bit endpoints
        const rl0 = <u32>(q0 >> 33) & 0xF;
        const rh0 = <u32>(q0 >> 37) & 0xF;
        const gl0 = <u32>(q0 >> 41) & 0xF;
        const gh0 = <u32>(q0 >> 45) & 0xF;
        const bl0 = <u32>(q0 >> 49) & 0xF;
        const bh0 = <u32>(q0 >> 53) & 0xF;
        const al0 = <u32>(q0 >> 57) & 0xF;
        const ah0 = (<u32>(q0 >> 61) & 0x7) | (<u32>(q1 << 3) & 0x8);

        // 4-bit weights, start at 65
        const weights = (q1 & 0xFFFFFFFFFFFFFFF0) | ((q1 >> 1) & 7);

        const rl0t = et0 & 3;
        const rh0t = (et0 >> 2) & 3;
        const gl0t = (et0 >> 4) & 3;
        const gh0t = (et0 >> 6) & 3;
        const bl0t = et0 >> 8;
        const bh0t = et1 & 3;
        const al0t = (et1 >> 2) & 3;
        const ah0t = (et1 >> 4) & 3;

        const swap = (
          (unq47(rl0, rl0t) + unq47(gl0, gl0t) + unq47(bl0, bl0t)) >
          (unq47(rh0, rh0t) + unq47(gh0, gh0t) + unq47(bh0, bh0t))
        );

        const t0 = packTrits(
          swap ? rh0t : rl0t, swap ? rl0t : rh0t,
          swap ? gh0t : gl0t, swap ? gl0t : gh0t,
          swap ? bh0t : bl0t);
        const t1 = packTrits(
          swap ? bl0t : bh0t,
          swap ? ah0t : al0t, swap ? al0t : ah0t,
          0, 0);

        // Pack endpoints & weights
        const packedBits = interleaveBits4Tx2(
          swap ? rh0 : rl0, swap ? rl0 : rh0,
          swap ? gh0 : gl0, swap ? gl0 : gh0,
          swap ? bh0 : bl0, swap ? bl0 : bh0,
          swap ? ah0 : al0, swap ? al0 : ah0);
        const packedTrits = (<u64>interleaveTrits4(t1) << 28) | interleaveTrits4(t0);
        const packedEndpoints = packedBits | packedTrits;
        const packedWeights = reverse64(swap ? ~weights : weights);

        // ASTC Mode 578, CEM 12, 17-bit header
        r0 = (packedEndpoints << 17) | 0x18242;
        r1 = packedWeights;
      }
      break;
    case 11:
      {
        const compSel = <u32>(q0 >> 19) & 0x3;

        // Two trits (8 values), 8 + 5 bits
        const et0 = unpackTrits(<u32>(q0 >> 21) & 0xFF);
        const et1 = unpackTrits(<u32>(q0 >> 29) & 0x1F);

        // 4-bit endpoints
        const rl0 = <u32>(q0 >> 34) & 0xF;
        const rh0 = <u32>(q0 >> 38) & 0xF;
        const gl0 = <u32>(q0 >> 42) & 0xF;
        const gh0 = <u32>(q0 >> 46) & 0xF;
        const bl0 = <u32>(q0 >> 50) & 0xF;
        const bh0 = <u32>(q0 >> 54) & 0xF;
        const al0 = <u32>(q0 >> 58) & 0xF;
        const ah0 = (<u32>(q0 >> 62) & 0x3) | (<u32>(q1 << 2) & 0xC);

        // 2-bit weights, start at 66
        const weights = (q1 & 0xFFFFFFFFFFFFFFF0) | ((q1 >> 1) & 4) | ((q1 >> 2) & 1);

        const rl0t = et0 & 3;
        const rh0t = (et0 >> 2) & 3;
        const gl0t = (et0 >> 4) & 3;
        const gh0t = (et0 >> 6) & 3;
        const bl0t = et0 >> 8;
        const bh0t = et1 & 3;
        const al0t = (et1 >> 2) & 3;
        const ah0t = (et1 >> 4) & 3;

        const swap = (
          (unq47(rl0, rl0t) + unq47(gl0, gl0t) + unq47(bl0, bl0t)) >
          (unq47(rh0, rh0t) + unq47(gh0, gh0t) + unq47(bh0, bh0t))
        );

        const t0 = packTrits(
          swap ? rh0t : rl0t, swap ? rl0t : rh0t,
          swap ? gh0t : gl0t, swap ? gl0t : gh0t,
          swap ? bh0t : bl0t);
        const t1 = packTrits(
          swap ? bl0t : bh0t,
          swap ? ah0t : al0t, swap ? al0t : ah0t,
          0, 0);

        // Pack endpoints & weights
        const packedBits = interleaveBits4Tx2(
          swap ? rh0 : rl0, swap ? rl0 : rh0,
          swap ? gh0 : gl0, swap ? gl0 : gh0,
          swap ? bh0 : bl0, swap ? bl0 : bh0,
          swap ? ah0 : al0, swap ? al0 : ah0);
        const packedTrits = (<u64>interleaveTrits4(t1) << 28) | interleaveTrits4(t0);
        const packedEndpoints = packedBits | packedTrits;

        const packedWeights = reverse64(swap ? ~weights : weights);

        // ASTC Mode 1090 (Dp), CEM 12, 17-bit header
        r0 = (<u64>compSel << 62) | (packedEndpoints << 17) | 0x18442;
        r1 = packedWeights;
      }
      break;
    case 12:
      {
        // Two trits (8 values), 8 + 5 bits
        const et0 = unpackTrits(<u32>(q0 >> 20) & 0xFF);
        const et1 = unpackTrits(<u32>(q0 >> 28) & 0x1F);

        // 6-bit endpoints
        const rl0 = <u32>(q0 >> 33) & 0x3F;
        const rh0 = <u32>(q0 >> 39) & 0x3F;
        const gl0 = <u32>(q0 >> 45) & 0x3F;
        const gh0 = <u32>(q0 >> 51) & 0x3F;
        const bl0 = <u32>(q0 >> 57) & 0x3F;
        const bh0 = (<u32>(q0 >> 63) & 0x1) | (<u32>(q1 << 1) & 0x3E);
        const al0 = <u32>(q1 >>  5) & 0x3F;
        const ah0 = <u32>(q1 >> 11) & 0x3F;

        // 3-bit weights, start at 81
        const weights = ((q1 >> 16) & 0xFFFFFFFFFFF8) | ((q1 >> 17) & 3);

        const rl0t = et0 & 3;
        const rh0t = (et0 >> 2) & 3;
        const gl0t = (et0 >> 4) & 3;
        const gh0t = (et0 >> 6) & 3;
        const bl0t = et0 >> 8;
        const bh0t = et1 & 3;
        const al0t = (et1 >> 2) & 3;
        const ah0t = (et1 >> 4) & 3;

        const swap = (
          (unq191(rl0, rl0t) + unq191(gl0, gl0t) + unq191(bl0, bl0t)) >
          (unq191(rh0, rh0t) + unq191(gh0, gh0t) + unq191(bh0, bh0t))
        );

        const t0 = packTrits(
          swap ? rh0t : rl0t, swap ? rl0t : rh0t,
          swap ? gh0t : gl0t, swap ? gl0t : gh0t,
          swap ? bh0t : bl0t);
        const t1 = packTrits(
          swap ? bl0t : bh0t,
          swap ? ah0t : al0t, swap ? al0t : ah0t,
          0, 0);

        // Pack endpoints & weights
        const packedBits = interleaveBits6Tx2(
          swap ? rh0 : rl0, swap ? rl0 : rh0,
          swap ? gh0 : gl0, swap ? gl0 : gh0,
          swap ? bh0 : bl0, swap ? bl0 : bh0,
          swap ? ah0 : al0, swap ? al0 : ah0);
        const packedTrits = (interleaveTrits6(t1) << 38) | interleaveTrits6(t0);
        const packedEndpoints = packedBits | packedTrits;
        const packedWeights = reverse64(swap ? weights ^ 0xFFFFFFFFFFFF : weights);

        // ASTC Mode 83, CEM 12, 17-bit header
        r0 = (packedEndpoints << 17) | 0x18053;
        r1 = packedWeights | (packedEndpoints >> 47);
      }
      break;
    case 13:
      {
        const compSel = <u32>(q0 >> 28) & 0x3;

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
        const weights = <u32>((q1 >> 28) & 0xFFFFFFFC);

        // Check blue contraction and pack endpoints & weights
        const swap = (rl0 + gl0 + bl0) > (rh0 + gh0 + bh0);
        const packedEndpoints = (
          (packRGBAz8(rh0, gh0, bh0, ah0) << (swap ? 0 : 8)) |
          (packRGBAz8(rl0, gl0, bl0, al0) << (swap ? 8 : 0))
        );

        const packedWeights = reverse32(swap ? ~weights : weights);

        // ASTC Mode 1089 (Dp), CEM 12, 17-bit header
        r0 = (packedEndpoints << 17) | 0x18441;
        r1 = (<u64>packedWeights << 32) | (<u64>compSel << 30) | (packedEndpoints >> 47);
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
        const bh0 = <u32>(q1 >>  4) & 0xFF;
        const al0 = <u32>(q1 >> 12) & 0xFF;
        const ah0 = <u32>(q1 >> 20) & 0xFF;

        // 2-bit weights, start at 92
        const weights = <u32>(((q1 >> 27) & 0xFFFFFFFC) | ((q1 >> 28) & 1));

        // Check blue contraction and pack endpoints & weights
        const swap = (rl0 + gl0 + bl0) > (rh0 + gh0 + bh0);
        const packedEndpoints = (
          (packRGBAz8(rh0, gh0, bh0, ah0) << (swap ? 0 : 8)) |
          (packRGBAz8(rl0, gl0, bl0, al0) << (swap ? 8 : 0))
        );

        const packedWeights = reverse32(swap ? ~weights : weights);

        // ASTC Mode 66, CEM 12, 17-bit header
        r0 = (packedEndpoints << 17) | 0x18042;
        r1 = (<u64>packedWeights << 32) | (packedEndpoints >> 47);
      }
      break;
    case 15:
      {
        // 8-bit endpoints
        const ll0 = <u32>(q0 >> 30) & 0xFF;
        const lh0 = <u32>(q0 >> 38) & 0xFF;
        const al0 = <u32>(q0 >> 46) & 0xFF;
        const ah0 = <u32>(q0 >> 54) & 0xFF;

        // 4-bit weights, start at 62
        const weights = ((q1 << 3) & 0xFFFFFFFFFFFFFFF0) | ((q1 << 2) & 4) | ((q0 >> 62) & 3);

        // Pack endpoints & weights
        const packedEndpoints = (
          (packRGBAz8(lh0, ah0, 0, 0) << 8) |
          (packRGBAz8(ll0, al0, 0, 0) << 0)
        );
        const packedWeights = reverse64(weights);

        // ASTC Mode 578, CEM 4, 17-bit header
        r0 = (packedEndpoints << 17) | 0x8242;
        r1 = packedWeights;
      }
      break;
    case 16:
      {
        const pat = <u32>(q0 >> 29) & 0x1F;
        if (pat > 29) {
          r0 = voidExtent;
          r1 = errorColor;
          break;
        }

        // 8-bit endpoints
        const ll0 = <u32>(q0 >> 34) & 0xFF;
        const lh0 = <u32>(q0 >> 42) & 0xFF;
        const al0 = <u32>(q0 >> 50) & 0xFF;
        const ah0 = (<u32>(q0 >> 58) & 0x3F) | (<u32>(q1 << 6) & 0xC0);
        const ll1 = <u32>(q1 >>  2) & 0xFF;
        const lh1 = <u32>(q1 >> 10) & 0xFF;
        const al1 = <u32>(q1 >> 18) & 0xFF;
        const ah1 = <u32>(q1 >> 26) & 0xFF;

        // Anchor bits location depends on the pattern index
        const anchor = getTwoSubsetAnchor(pat);
        const loMask = (0xFFFFFFFF << ((anchor << 1) | 1)) ^ 0xFFFFFFFC;
        const hiMask = 0xFFFFFFFF << ((anchor << 1) + 2);

        // 1-bit weights, start at 98
        const weights = <u32>(((q1 >> 32) & hiMask) | ((q1 >> 33) & loMask) | ((q1 >> 34) & 1));

        // Pack endpoints & weights
        const packedEndpoints = (
          (packRGBAz8(lh0, ah0, lh1, ah1) << 8) |
          (packRGBAz8(ll0, al0, ll1, al1) << 0)
        );
        const packedWeights = reverse32(weights);

        // ASTC Mode 66, CEM 4, 29-bit header
        r0 = (packedEndpoints << 29) | (getTwoSubsetsPatternIndex(pat) << 13) | 0x8000842;
        r1 = (<u64>packedWeights << 32) | (packedEndpoints >> 35);
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

        // Pack endpoints & weights
        const packedEndpoints = packRGBAz8(ll0, al0, 0, 0) | (packRGBAz8(lh0, ah0, 0, 0) << 8);
        const packedWeights = reverse64(weights);

        // ASTC Mode 1090 (Dp), CEM 4, 17-bit header
        r0 = 0xC000000000000000 | (packedEndpoints << 17) | 0x8442;
        r1 = packedWeights;
      }
      break;
    case 18:
      {
        // 5-bit endpoints
        const rl0 = <u32>(q0 >> 19) & 0x1F;
        const rh0 = <u32>(q0 >> 24) & 0x1F;
        const gl0 = <u32>(q0 >> 29) & 0x1F;
        const gh0 = <u32>(q0 >> 34) & 0x1F;
        const bl0 = <u32>(q0 >> 39) & 0x1F;
        const bh0 = <u32>(q0 >> 44) & 0x1F;

        // 5-bit weights, start at 49
        // All 16 weights do not fit into a single 64-bit variable,
        // split them as 12.8 (64) + 3.2 (16).
        const weightsExtra = <u32>(q1 >> 48) & 0xFFFF;
        const weights = (q1 << 16) | ((q0 >> 48) & 0xFFE0) | ((q0 >> 49) & 0xF);

        // Check blue contraction and pack endpoints & weights
        const swap = sumUnq31(rl0, gl0, bl0) > sumUnq31(rh0, gh0, bh0);
        const packedEndpoints = (
          (packRGBz5(rh0, gh0, bh0) << (swap ? 0 : 5)) |
          (packRGBz5(rl0, gl0, bl0) << (swap ? 5 : 0))
        );

        const packedWeights = reverse64(swap ? ~weights : weights);
        const packedWeightsExtra = reverse16(swap ? (~weightsExtra & 0xFFFF) : weightsExtra);

        // ASTC Mode 595, CEM 8, 17-bit header
        r0 = (<u64>packedWeightsExtra << 48) | (<u64>packedEndpoints << 17) | 0x10253;
        r1 = packedWeights;
      }
      break;
    default:
      r0 = voidExtent;
      r1 = errorColor;
      break;
  }
  store<u64>(offset, r0, 0);
  store<u64>(offset, r1, 8);
}

const threeSubsetsPatternIndicesOffset = 1920;
const twoSubsetsModeIndex7PatternIndicesOffset = 1944;
const twoSubsetsPatternIndicesOffset = 1984;

function storeAstcPatternIndices(): void {
  store<u64>(threeSubsetsPatternIndicesOffset, 0x009C0020004A0104, 0);
  store<u64>(threeSubsetsPatternIndicesOffset, 0x000002E9000F00B7, 8);
  store<u64>(threeSubsetsPatternIndicesOffset, 0x000000FE0386014F, 16);

  store<u64>(twoSubsetsModeIndex7PatternIndicesOffset, 0x0089003D00300024, 0);
  store<u64>(twoSubsetsModeIndex7PatternIndicesOffset, 0x011900E200B700A1, 8);
  store<u64>(twoSubsetsModeIndex7PatternIndicesOffset, 0x01EF01DF0133012E, 16);
  store<u64>(twoSubsetsModeIndex7PatternIndicesOffset, 0x031F025D02520251, 24);
  store<u64>(twoSubsetsModeIndex7PatternIndicesOffset, 0x000003E103DC032C, 32);

  store<u64>(twoSubsetsPatternIndicesOffset, 0x001D00100014001C, 0);
  store<u64>(twoSubsetsPatternIndicesOffset, 0x0048006B0009005B, 8);
  store<u64>(twoSubsetsPatternIndicesOffset, 0x0072003200CC0095, 16);
  store<u64>(twoSubsetsPatternIndicesOffset, 0x0027004E001101F0, 24);
  store<u64>(twoSubsetsPatternIndicesOffset, 0x009C002B033C00FC, 32);
  store<u64>(twoSubsetsPatternIndicesOffset, 0x011101DC00D20074, 40);
  store<u64>(twoSubsetsPatternIndicesOffset, 0x00C300F6016702AC, 48);
  store<u64>(twoSubsetsPatternIndicesOffset, 0x00000000020C02B6, 56);
}

/**
 * Get ASTC partition pattern index for a given UASTC pattern index (Mode Indices 2, 4, 9, 16)
 */
// @ts-ignore: 1206
@inline
function getTwoSubsetsPatternIndex(i: u32): u32 {
  return load<u16>(i << 1, twoSubsetsPatternIndicesOffset);
}

/**
 * Get ASTC partition pattern index for a given UASTC pattern index (Mode Index 7)
 */
// @ts-ignore: 1206
@inline
function getTwoSubsetsPatternIndexForModeIndex7(i: u32): u32 {
  return load<u16>(i << 1, twoSubsetsModeIndex7PatternIndicesOffset);
}

/**
 * Get ASTC partition pattern index for a given UASTC pattern index (Mode Index 3)
 */
// @ts-ignore: 1206
@inline
function getThreeSubsetsPatternIndex(i: u32): u32 {
  return load<u16>(i << 1, threeSubsetsPatternIndicesOffset);
}

// Direct endpoint interleave

/**
 * Pack 4-bit RGBA values interleaved with 4-bit zeros
 */
// @ts-ignore: 1206
@inline
function packRGBAz4(r: u32, g: u32, b: u32, a: u32): u32 {
  return (a << 24) | (b << 16) | (g << 8) | r;
}

/**
 * Pack 5-bit RGB values interleaved with 5-bit zeros
 */
// @ts-ignore: 1206
@inline
function packRGBz5(r: u32, g: u32, b: u32): u32 {
  return (b << 20) | (g << 10) | r;
}

/**
 * Pack 8-bit RGBA values interleaved with 8-bit zeros
 */
// @ts-ignore: 1206
@inline
function packRGBAz8(r: u32, g: u32, b: u32, a: u32): u64 {
  return (
    (<u64>((a << 16) | b) << 32) |
    (<u64>((g << 16) | r) <<  0)
  );
}

// @ts-ignore: 1206
@inline
function sumUnq31(r: u32, g: u32, b: u32): u32 {
  return ((r + g + b) << 3) + (r >> 2) + (g >> 2) + (b >> 2);
}

// BISE Encoding routines

/**
 * Store 256 UASTC->ASTC trits mappings
 */

const tritEncodingOffset = 1536;

function storeTritsAstc(): void {
  store<u64>(tritEncodingOffset, 650776764766880000, 0);
  store<u64>(tritEncodingOffset, 1735597882344542218, 8);
  store<u64>(tritEncodingOffset, 1952049901571611161, 16);
  store<u64>(tritEncodingOffset, 2676301604231974156, 24);
  store<u64>(tritEncodingOffset, 3761122721743317030, 32);
  store<u64>(tritEncodingOffset, 3109492800697677365, 40);
  store<u64>(tritEncodingOffset, 4701808782525282099, 48);
  store<u64>(tritEncodingOffset, 5785517246076240962, 56);
  store<u64>(tritEncodingOffset, 6510331864162783825, 64);
  store<u64>(tritEncodingOffset, 5569927269768185667, 72);
  store<u64>(tritEncodingOffset, -8609046833500422066, 80);
  store<u64>(tritEncodingOffset, -7596001839262168439, 88);
  store<u64>(tritEncodingOffset, -7524517138261173864, 96);
  store<u64>(tritEncodingOffset, -6583521994303763301, 104);
  store<u64>(tritEncodingOffset, -5570477017043261787, 112);
  store<u64>(tritEncodingOffset, -6367040141341051468, 120);
  store<u64>(tritEncodingOffset, -4562518415084375125, 128);
  store<u64>(tritEncodingOffset, -3834312851682180415, 136);
  store<u64>(tritEncodingOffset, -2749211358622723632, 144);
  store<u64>(tritEncodingOffset, -3685114565415681062, 152);
  store<u64>(tritEncodingOffset, 7378413938219732685, 160);
  store<u64>(tritEncodingOffset, 8463515431278897512, 168);
  store<u64>(tritEncodingOffset, 8316854813823957110, 176);
  store<u64>(tritEncodingOffset, -2098149186491090057, 184);
  store<u64>(tritEncodingOffset, -1013051625802635804, 192);
  store<u64>(tritEncodingOffset, -2019026635231726350, 200);
  store<u64>(tritEncodingOffset, -1230066556261372953, 208);
  store<u64>(tritEncodingOffset, 6727320376107212060, 216);
  store<u64>(tritEncodingOffset, -2540384521977750434, 224);
  store<u64>(tritEncodingOffset, -2323963651270123811, 232);
  store<u64>(tritEncodingOffset, 8289660, 240);
}

/**
 * Pack five trits into a single 8-bit value
 */
// @ts-ignore
@inline
function packTrits(t0: u32, t1: u32, t2: u32, t3: u32, t4: u32): u32 {
  const t = t0 + 3 * (t1 + 3 * (t2 + 3 * (t3 + 3 * t4)));
  return load<u8>(t, tritEncodingOffset);
}

/**
 * Interleave packed 8-bit value of 5 trits
 * with zero-filled 2-bit gaps to form a 18-bit block.
 */
// @ts-ignore
@inline
function interleaveTrits2(t: u32): u32 {
  return (
    ((t & 0x80) << 10) |
    ((t & 0x60) <<  8) |
    ((t & 0x10) <<  6) |
    ((t & 0x0C) <<  4) |
    ((t & 0x03) <<  2)
  );
}

/**
 * Concatenate five 2-bit values with zero-filled
 * gaps for packed trit bits to form a 18-bit block.
 */
// @ts-ignore
@inline
function interleaveBits2T(
  v0: u32, v1: u32, v2: u32, v3: u32, v4: u32
): u32 {
  return (
    (v4 << 15) |
    (v3 << 11) |
    (v2 <<  8) |
    (v1 <<  4) |
    (v0 <<  0)
  );
}

/**
 * Interleave packed 8-bit value of 5 trits
 * with zero-filled 4-bit gaps to form a 28-bit block.
 */
// @ts-ignore
@inline
function interleaveTrits4(t: u32): u32 {
  return (
    ((t & 0x80) << 20) |
    ((t & 0x60) << 16) |
    ((t & 0x10) << 12) |
    ((t & 0x0C) <<  8) |
    ((t & 0x03) <<  4)
  );
}

/**
 * Concatenate eight 4-bit values with zero-filled
 * gaps for packed trit bits to form two 28-bit blocks.
 * Unused top two values are always zeros.
 */
// @ts-ignore
@inline
function interleaveBits4Tx2(
  v0: u64, v1: u64, v2: u64, v3: u64,
  v4: u64, v5: u64, v6: u64, v7: u64
): u64 {
  return (
    (v7 << 40) |
    (v6 << 34) |
    (v5 << 28) |
    (v4 << 23) |
    (v3 << 17) |
    (v2 << 12) |
    (v1 <<  6) |
    (v0 <<  0)
  );
}

/**
 * Interleave packed 8-bit value of 5 trits
 * with zero-filled 6-bit gaps to form a 38-bit block.
 */
// @ts-ignore
@inline
function interleaveTrits6(t: u64): u64 {
  return (
    ((t & 0x80) << 30) |
    ((t & 0x60) << 24) |
    ((t & 0x10) << 18) |
    ((t & 0x0C) << 12) |
    ((t & 0x03) <<  6)
  );
}

/**
 * Concatenate eight 6-bit values with zero-filled
 * gaps for packed trit bits to form two 38-bit blocks.
 * Unused top two values are always zeros, so the result fits in 61 bits.
 */
// @ts-ignore
@inline
function interleaveBits6Tx2(
  v0: u64, v1: u64, v2: u64, v3: u64,
  v4: u64, v5: u64, v6: u64, v7: u64
): u64 {
  return (
    (v7 << 54) |
    (v6 << 46) |
    (v5 << 38) |
    (v4 << 31) |
    (v3 << 23) |
    (v2 << 16) |
    (v1 <<  8) |
    (v0 <<  0)
  );
}

const quintEncodingOffset = 1792;

/**
 * Store 128 UASTC->ASTC quints mappings
 */
function storeQuintsAstc(): void {
  store<u64>(quintEncodingOffset, 0x0A09080403020100, 0);
  store<u64>(quintEncodingOffset, 0x1814131211100C0B, 8);
  store<u64>(quintEncodingOffset, 0x1D150D051C1B1A19, 16);
  store<u64>(quintEncodingOffset, 0x2928242322212006, 24);
  store<u64>(quintEncodingOffset, 0x34333231302C2B2A, 32);
  store<u64>(quintEncodingOffset, 0x352D253C3B3A3938, 40);
  store<u64>(quintEncodingOffset, 0x4844434241400E3D, 48);
  store<u64>(quintEncodingOffset, 0x535251504C4B4A49, 56);
  store<u64>(quintEncodingOffset, 0x4D455C5B5A595854, 64);
  store<u64>(quintEncodingOffset, 0x6463626160165D55, 72);
  store<u64>(quintEncodingOffset, 0x7271706C6B6A6968, 80);
  store<u64>(quintEncodingOffset, 0x657C7B7A79787473, 88);
  store<u64>(quintEncodingOffset, 0x474667661E7D756D, 96);
  store<u64>(quintEncodingOffset, 0x77762E4F4E6F6E26, 104);
  store<u64>(quintEncodingOffset, 0x3E5F5E7F7E365756, 112);
  store<u64>(quintEncodingOffset, 0x0000001F3F372F27, 120);
}

/**
 * Pack three quints into a single 7-bit value
 */
// @ts-ignore
@inline
function packQuints(q0: u32, q1: u32, q2: u32): u32 {
  const q = q0 + 5 * (q1 + 5 * q2);
  return load<u8>(q, quintEncodingOffset);
}

/**
 * Interleave packed 7-bit value of 3 quints
 * with zero-filled 3-bit gaps to form a 16-bit block.
 */
// @ts-ignore
@inline
function interleaveQuints3(q: u32): u32 {
  return (
    ((q & 0x60) << 9) |
    ((q & 0x18) << 6) |
    ((q & 0x07) << 3)
  );
}

/**
 * Concatenate six 3-bit values with zero-filled
 * gaps for packed quint bits to form two 16-bit blocks.
 */
// @ts-ignore
@inline
function interleaveBits3Qx2(
  v0: u32, v1: u32, v2: u32,
  v3: u32, v4: u32, v5: u32
): u32 {
  return (
    (v5 << 27) |
    (v4 << 22) |
    (v3 << 16) |
    (v2 << 11) |
    (v1 <<  6) |
    (v0 <<  0)
  );
}

/**
 * Interleave packed 7-bit value of 3 quints
 * with zero-filled 5-bit gaps to form a 22-bit block.
 */
// @ts-ignore
@inline
function interleaveQuints5(q: u32): u32 {
  return (
    ((q & 0x60) << 15) |
    ((q & 0x18) << 10) |
    ((q & 0x07) <<  5)
  );
}

/**
 * Concatenate six 5-bit values with zero-filled
 * gaps for packed quint bits to form two 22-bit blocks.
 */
// @ts-ignore
@inline
function interleaveBits5Qx2(
  v0: u64, v1: u64, v2: u64,
  v3: u64, v4: u64, v5: u64): u64 {
  return (
    (v5 << 37) |
    (v4 << 30) |
    (v3 << 22) |
    (v2 << 15) |
    (v1 <<  8) |
    (v0 <<  0)
  );
}


// The following routines were adapted from
// https://graphics.stanford.edu/~seander/bithacks.html#ReverseParallel


/**
 * Reverse 16 bits
 */
// @ts-ignore: 1206
@inline
function reverse16(v: u32): u32 {
  v = ((v >> 1) & 0x5555) | ((v & 0x5555) << 1);
  v = ((v >> 2) & 0x3333) | ((v & 0x3333) << 2);
  v = ((v >> 4) & 0x0F0F) | ((v & 0x0F0F) << 4);
  v = ((v >> 8) & 0x00FF) | ((v & 0x00FF) << 8);
  return v;
}

/**
 * Reverse 32 bits
 */
// @ts-ignore: 1206
@inline
function reverse32(v: u32): u32 {
  v = ((v >> 1) & 0x55555555) | ((v & 0x55555555) << 1);
  v = ((v >> 2) & 0x33333333) | ((v & 0x33333333) << 2);
  v = ((v >> 4) & 0x0F0F0F0F) | ((v & 0x0F0F0F0F) << 4);
  v = ((v >> 8) & 0x00FF00FF) | ((v & 0x00FF00FF) << 8);
  v = rotr(v, 16);
  return v;
}

/**
 * Reverse 64 bits
 */
// @ts-ignore: 1206
@inline
function reverse64(v: u64): u64 {
  v = ((v >>  1) & 0x5555555555555555) | ((v & 0x5555555555555555) <<  1);
  v = ((v >>  2) & 0x3333333333333333) | ((v & 0x3333333333333333) <<  2);
  v = ((v >>  4) & 0x0F0F0F0F0F0F0F0F) | ((v & 0x0F0F0F0F0F0F0F0F) <<  4);
  v = ((v >>  8) & 0x00FF00FF00FF00FF) | ((v & 0x00FF00FF00FF00FF) <<  8);
  v = ((v >> 16) & 0x0000FFFF0000FFFF) | ((v & 0x0000FFFF0000FFFF) << 16);
  v = rotr(v, 32);
  return v;
}
