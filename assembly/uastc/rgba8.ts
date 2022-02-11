// Copyright 2020 The Khronos Group Inc.
//
// SPDX-License-Identifier: Apache-2.0

import {
  getTwoSubsetPattern,
  getTwoSubsetPatternForModeIndex7,
  getThreeSubsetPattern,
} from './lib/patterns';

import {
  precomputeCommonData,
  getModeIndex,
  unpackQuints, unpackTrits,
  unq11, unq39, unq47, unq159, unq191,
  getThreeSubsetAnchorL, getThreeSubsetAnchorH,
  getTwoSubsetAnchorForModeIndex7, getTwoSubsetAnchor,
} from './lib/common';

// Compiler-provided constants
// @ts-ignore
const srgb = SRGB;

// @ts-ignore
const channels = CHANNELS;

if (channels != 1 && channels != 2 && channels != 4) {
  ERROR('CHANNELS must be 1, 2, or 4.');
}

if (srgb && channels != 4) {
  ERROR('For sRGB, CHANNELS must be 4.');
}

/**
 * Decode UASTC data as RGBA8
 * @param width - Texture width in pixels
 * @param height - Texture height in pixels
 */
export function decode(width: i32, height: i32): i32 {
  // Fail on negative or too large dimensions
  if ((width | height) < 0 || width > 16384 || height > 16384) return 1;

  // Fail on insufficient memory
  const xBlocks = (width + 3) >> 2;
  const yBlocks = (height + 3) >> 2;
  const compressedByteLength = xBlocks * yBlocks * 16;
  if ((memory.size() - 1) * 65536 < compressedByteLength + 4 * yBlocks * width * channels) {
    return 1;
  }

  const completeXBlocks = width >> 2;
  const extraByteLength = (width & 3) * channels;
  const uncompressedLineByteStride = width * channels;
  const writeSkip = uncompressedLineByteStride * 3 + extraByteLength;

  const compressedBlockSkip = extraByteLength ? 16 : 0;

  let readOffset = 65536;
  let writeOffset = readOffset + compressedByteLength;

  for (let y = 0; y < yBlocks; y++) {
    for (let x = 0; x < completeXBlocks; x++) {
      decodeBlock(readOffset, writeOffset, uncompressedLineByteStride);
      readOffset += 16;
      writeOffset += 4 * channels;
    }
    readOffset += compressedBlockSkip;
    writeOffset += writeSkip;
  }

  // Image width is not a multiple of 4.
  if (extraByteLength) {
    readOffset = 65536 + completeXBlocks * 16;
    writeOffset = 65536 + compressedByteLength + completeXBlocks * 4 * channels;

    const compressedBlockLineByteStride = xBlocks * 16;
    const uncompressedBlockLineByteStride = uncompressedLineByteStride * 4;

    for (let y = 0; y < yBlocks; y++) {
      // Decode to a temporary memory location and copy only needed pixels.
      decodeBlock(readOffset, 4096, 4 * channels);
      for (let x = 0; x < extraByteLength; x += channels) {
        let s = writeOffset;
        if (channels == 4) {
          store<u32>(s + x, load<u32>(x, 4096 +  0));
          s += uncompressedLineByteStride;
          store<u32>(s + x, load<u32>(x, 4096 + 16));
          s += uncompressedLineByteStride;
          store<u32>(s + x, load<u32>(x, 4096 + 32));
          s += uncompressedLineByteStride;
          store<u32>(s + x, load<u32>(x, 4096 + 48));
        } else if (channels == 2) {
          store<u16>(s + x, load<u16>(x, 4096 +  0));
          s += uncompressedLineByteStride;
          store<u16>(s + x, load<u16>(x, 4096 +  8));
          s += uncompressedLineByteStride;
          store<u16>(s + x, load<u16>(x, 4096 + 16));
          s += uncompressedLineByteStride;
          store<u16>(s + x, load<u16>(x, 4096 + 24));
        } else if (channels == 1) {
          store<u8>(s + x, load<u8>(x, 4096 +  0));
          s += uncompressedLineByteStride;
          store<u8>(s + x, load<u8>(x, 4096 +  4));
          s += uncompressedLineByteStride;
          store<u8>(s + x, load<u8>(x, 4096 +  8));
          s += uncompressedLineByteStride;
          store<u8>(s + x, load<u8>(x, 4096 + 12));
        }
      }
      readOffset  += compressedBlockLineByteStride;
      writeOffset += uncompressedBlockLineByteStride;
    }
  }
  return 0;
}

function decodeBlock(readOffset: i32, offset: i32, stride: i32): void {
  const q0 = load<u64>(readOffset, 0);
  const q1 = load<u64>(readOffset, 8);

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
        const et1 = channels > 2 ? unpackTrits(<u32>(q0 >> 27) & 0x3) : 0;

        // 6-bit endpoints
        let rl0 = <u32>(q0 >> 29) & 0x3F;
        let rh0 = <u32>(q0 >> 35) & 0x3F;
        let gl0 = <u32>(q0 >> 41) & 0x3F;
        let gh0 = <u32>(q0 >> 47) & 0x3F;
        let bl0 = <u32>(q0 >> 53) & 0x3F;
        let bh0 = (<u32>(q0 >> 59) & 0x1F) | (<u32>(q1 << 5) & 0x20);

        rl0 = unq191(rl0, et0 & 3);
        rh0 = unq191(rh0, (et0 >> 2) & 3);
        gl0 = channels > 1 ? unq191(gl0, (et0 >> 4) & 3) : 0;
        gh0 = channels > 1 ? unq191(gh0, (et0 >> 6) & 3) : 0;
        bl0 = channels > 2 ? unq191(bl0, et0 >> 8)       : 0;
        bh0 = channels > 2 ? unq191(bh0, et1 & 3)        : 0;

        // 4-bit weights, start at 65
        const weights = (q1 & 0xFFFFFFFFFFFFFFF0) | ((q1 >> 1) & 7);

        writeSingleSubsetColorAlphaBlock(
          rl0, rh0, gl0, gh0, bl0, bh0, 255, 255,
          weights, 4, offset, stride
        );
      }
      break;
    case 1:
      {
        // 8-bit endpoints
        const rl0 = <u32>(q0 >> 21) & 0xFF;
        const rh0 = <u32>(q0 >> 29) & 0xFF;
        const gl0 = channels > 1 ? <u32>(q0 >> 37) & 0xFF                             : 0;
        const gh0 = channels > 1 ? <u32>(q0 >> 45) & 0xFF                             : 0;
        const bl0 = channels > 2 ? <u32>(q0 >> 53) & 0xFF                             : 0;
        const bh0 = channels > 2 ? (<u32>(q0 >> 61) & 0x07) | (<u32>(q1 << 3) & 0xF8) : 0;

        // 2-bit weights, start at 69
        const weights = ((q1 >> 4) & 0xFFFFFFFC) | ((q1 >> 5) & 1);
        writeSingleSubsetColorAlphaBlock(
          rl0, rh0, gl0, gh0, bl0, bh0, 255, 255,
          weights, 2, offset, stride
        );
      }
      break;
    case 2:
      {
        const pat = <u32>(q0 >> 20) & 0x1F;
        if (pat > 29) {
          writeErrorBlock(offset, stride);
          return;
        }

        // 4-bit endpoints, unquantize in-place
        let lo = ((q1 << 39) | (q0 >> 25)) & 0x0F0F0F0F0F0F0F0F;
        let hi = ((q1 << 35) | (q0 >> 29)) & 0x0F0F0F0F0F0F0F0F;
        lo |= lo << 4;
        hi |= hi << 4;
        const rl0 = (lo >> 0) & 0xFF;
        const rh0 = (hi >> 0) & 0xFF;
        const gl0 = channels > 1 ? (lo >>  8) & 0xFF : 0;
        const gh0 = channels > 1 ? (hi >>  8) & 0xFF : 0;
        const bl0 = channels > 2 ? (lo >> 16) & 0xFF : 0;
        const bh0 = channels > 2 ? (hi >> 16) & 0xFF : 0;
        const rl1 = (lo >> 24) & 0xFF;
        const rh1 = (hi >> 24) & 0xFF;
        const gl1 = channels > 1 ? (lo >> 32) & 0xFF : 0;
        const gh1 = channels > 1 ? (hi >> 32) & 0xFF : 0;
        const bl1 = channels > 2 ? (lo >> 40) & 0xFF : 0;
        const bh1 = channels > 2 ? (hi >> 40) & 0xFF : 0;

        // Anchor bits location depends on the pattern index
        const anchor = getTwoSubsetAnchor(pat);
        const loMask: u64 = (0xFFFFFFFFFFFFFFFF << ((anchor * 3) + 2)) ^ 0xFFFFFFFFFFFFFFF8;
        const hiMask: u64 = (0xFFFFFFFFFFFFFFFF << ((anchor * 3) + 3));

        // 3-bit weights, start at 73
        const weights = ((q1 >> 7) & hiMask) | ((q1 >> 8) & loMask) | ((q1 >> 9) & 3);

        writeDualSubsetColorBlock(
          rl0, rh0, gl0, gh0, bl0, bh0,
          rl1, rh1, gl1, gh1, bl1, bh1,
          weights, 3, getTwoSubsetPattern(pat),
          offset, stride
        );
      }
      break;
    case 3:
      {
        const pat = <u32>(q0 >> 20) & 0xF;
        if (pat > 10) {
          writeErrorBlock(offset, stride);
          return;
        }

        // Four trits (18 values), 3 * 8 + 5 bits
        const et0 = unpackTrits(<u32>(q0 >> 24) & 0xFF);
        const et1 = unpackTrits(<u32>(q0 >> 32) & 0xFF);
        const et2 = unpackTrits(<u32>(q0 >> 40) & 0xFF);
        const et3 = channels > 1 ? unpackTrits(<u32>(q0 >> 48) & 0x1F) : 0;

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

        rl0 = unq11(rl0, et0 & 3);
        rh0 = unq11(rh0, (et0 >> 2) & 3);
        gl0 = channels > 1 ? unq11(gl0, (et0 >> 4) & 3) : 0;
        gh0 = channels > 1 ? unq11(gh0, (et0 >> 6) & 3) : 0;
        bl0 = channels > 2 ? unq11(bl0, et0 >> 8)       : 0;
        bh0 = channels > 2 ? unq11(bh0, et1 & 3)        : 0;
        rl1 = unq11(rl1, (et1 >> 2) & 3);
        rh1 = unq11(rh1, (et1 >> 4) & 3);
        gl1 = channels > 1 ? unq11(gl1, (et1 >> 6) & 3) : 0;
        gh1 = channels > 1 ? unq11(gh1, et1 >> 8)       : 0;
        bl1 = channels > 2 ? unq11(bl1, et2 & 3)        : 0;
        bh1 = channels > 2 ? unq11(bh1, (et2 >> 2) & 3) : 0;
        rl2 = unq11(rl2, (et2 >> 4) & 3);
        rh2 = unq11(rh2, (et2 >> 6) & 3);
        gl2 = channels > 1 ? unq11(gl2, et2 >> 8)       : 0;
        gh2 = channels > 1 ? unq11(gh2, et3 & 3)        : 0;
        bl2 = channels > 2 ? unq11(bl2, (et3 >> 2) & 3) : 0;
        bh2 = channels > 2 ? unq11(bh2, (et3 >> 4) & 3) : 0;

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

        const pattern = getThreeSubsetPattern(pat);
        writeTripleSubsetColorBlock(
          rl0, rh0, gl0, gh0, bl0, bh0,
          rl1, rh1, gl1, gh1, bl1, bh1,
          rl2, rh2, gl2, gh2, bl2, bh2,
          weights,
          pattern & 0xFFFF,
          pattern >> 16,
          offset, stride
        );
      }
      break;
    case 7:
      {
        const pat = <u32>(q0 >> 20) & 0x1F;
        if (pat > (mode4 ? 29 : 18)) {
          writeErrorBlock(offset, stride);
          return;
        }

        // Four quints (12 values), 4 * 7 bits
        const eq0 = unpackQuints(<u32>(q0 >> 25) & 0x7F);
        const eq1 = channels > 1 ? unpackQuints(<u32>(q0 >> 32) & 0x7F) : 0;
        const eq2 = unpackQuints(<u32>(q0 >> 39) & 0x7F);
        const eq3 = channels > 1 ? unpackQuints(<u32>(q0 >> 46) & 0x7F) : 0;

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

        rl0 = unq39(rl0, eq0 & 7);
        rh0 = unq39(rh0, (eq0 >> 4) & 7);
        gl0 = channels > 1 ? unq39(gl0, eq0 >> 8)       : 0;
        gh0 = channels > 1 ? unq39(gh0, eq1 & 7)        : 0;
        bl0 = channels > 2 ? unq39(bl0, (eq1 >> 4) & 7) : 0;
        bh0 = channels > 2 ? unq39(bh0, eq1 >> 8)       : 0;
        rl1 = unq39(rl1, eq2 & 7);
        rh1 = unq39(rh1, (eq2 >> 4) & 7);
        gl1 = channels > 1 ? unq39(gl1, eq2 >> 8)       : 0;
        gh1 = channels > 1 ? unq39(gh1, eq3 & 7)        : 0;
        bl1 = channels > 2 ? unq39(bl1, (eq3 >> 4) & 7) : 0;
        bh1 = channels > 2 ? unq39(bh1, eq3 >> 8)       : 0;

        // Anchor bits location depends on the pattern index
        const anchor = mode4 ? getTwoSubsetAnchor(pat) : getTwoSubsetAnchorForModeIndex7(pat);
        const loMask = (0xFFFFFFFF << ((anchor << 1) | 1)) ^ 0xFFFFFFFC;
        const hiMask = 0xFFFFFFFF << ((anchor << 1) + 2);

        // 2-bit weights, start at 89
        const weights = ((q1 >> 23) & hiMask) | ((q1 >> 24) & loMask) | ((q1 >> 25) & 1);

        writeDualSubsetColorBlock(
          rl0, rh0, gl0, gh0, bl0, bh0,
          rl1, rh1, gl1, gh1, bl1, bh1,
          weights, 2,
          mode4
            ? getTwoSubsetPattern(pat)
            : getTwoSubsetPatternForModeIndex7(pat),
          offset, stride);
      }
      break;
    case 5:
      {
        // 8-bit endpoints
        const rl0 = <u32>(q0 >> 20) & 0xFF;
        const rh0 = <u32>(q0 >> 28) & 0xFF;
        const gl0 = channels > 1 ? <u32>(q0 >> 36) & 0xFF                             : 0;
        const gh0 = channels > 1 ? <u32>(q0 >> 44) & 0xFF                             : 0;
        const bl0 = channels > 2 ? <u32>(q0 >> 52) & 0xFF                             : 0;
        const bh0 = channels > 2 ? (<u32>(q0 >> 60) & 0x0F) | (<u32>(q1 << 4) & 0xF0) : 0;

        // 3-bit endpoints, start at 68
        const weights = ((q1 >> 3) & 0xFFFFFFFFFFF8) | ((q1 >> 4) & 3);

        writeSingleSubsetColorAlphaBlock(
          rl0, rh0, gl0, gh0, bl0, bh0, 255, 255,
          weights, 3, offset, stride
        );
      }
      break;
    case 6:
      {
        const compSel = <u32>(q0 >> 20) & 0x3;

        // Two quints (6 values), 2 * 7 bits
        const eq0 = unpackQuints(<u32>(q0 >> 22) & 0x7F);
        const eq1 = channels > 1 ? unpackQuints(<u32>(q0 >> 29) & 0x7F) : 0;

        // 5-bit endpoints
        let rl0 = <u32>(q0 >> 36) & 0x1F;
        let rh0 = <u32>(q0 >> 41) & 0x1F;
        let gl0 = <u32>(q0 >> 46) & 0x1F;
        let gh0 = <u32>(q0 >> 51) & 0x1F;
        let bl0 = <u32>(q0 >> 56) & 0x1F;
        let bh0 = (<u32>(q0 >> 61) & 0x7) | (<u32>(q1 << 3) & 0x18);

        rl0 = unq159(rl0, eq0 & 7);
        rh0 = unq159(rh0, (eq0 >> 4) & 7);
        gl0 = channels > 1 ? unq159(gl0, eq0 >> 8)       : 0;
        gh0 = channels > 1 ? unq159(gh0, eq1 & 7)        : 0;
        bl0 = channels > 2 ? unq159(bl0, (eq1 >> 4) & 7) : 0;
        bh0 = channels > 2 ? unq159(bh0, eq1 >> 8)       : 0;

        // 2-bit weights, start at 66
        const weights = (q1 & 0xFFFFFFFFFFFFFFF0) | ((q1 >> 1) & 4) | ((q1 >> 2) & 1);

        writeDualPlaneColorAlphaBlockW2(
          rl0, rh0, gl0, gh0, bl0, bh0, 255, 255,
          weights, compSel,
          offset, stride
        );
      }
      break;
    case 8:
      {
        const r = <u32>(q0 >>  5) & 0xFF;
        const g = channels > 1 ? <u32>(q0 >> 13) & 0xFF : 0;
        const b = channels > 2 ? <u32>(q0 >> 21) & 0xFF : 0;
        const a = channels > 3 ? <u32>(q0 >> 29) & 0xFF : 0;

        if (channels == 4) {
          let c: u64 = r | (g << 8) | (b << 16) | (a << 24);
          c |= c << 32;
          writeSolidBlock64(c, offset, stride);
        } else if (channels == 2) {
          const c = <u64>(r | (g << 8)) * 0x0001000100010001;
          writeSolidBlock64(c, offset, stride);
        } else if (channels == 1) {
          const c = r * 0x01010101;
          writeSolidBlock32(c, offset, stride);
        }
      }
      break;
    case 9:
      {
        const pat = <u32>(q0 >> 28) & 0x1F;
        if (pat > 29) {
          writeErrorBlock(offset, stride);
          return;
        }

        // 4-bit endpoints, unquantize in-place
        let lo = ((q1 << 31) | (q0 >> 33)) & 0x0F0F0F0F0F0F0F0F;
        let hi = ((q1 << 27) | (q0 >> 37)) & 0x0F0F0F0F0F0F0F0F;
        lo |= lo << 4;
        hi |= hi << 4;
        const rl0 = (lo >>  0) & 0xFF;
        const rh0 = (hi >>  0) & 0xFF;
        const gl0 = channels > 1 ? (lo >>  8) & 0xFF : 0;
        const gh0 = channels > 1 ? (hi >>  8) & 0xFF : 0;
        const bl0 = channels > 2 ? (lo >> 16) & 0xFF : 0;
        const bh0 = channels > 2 ? (hi >> 16) & 0xFF : 0;
        const al0 = channels > 3 ? (lo >> 24) & 0xFF : 0;
        const ah0 = channels > 3 ? (hi >> 24) & 0xFF : 0;
        const rl1 = (lo >> 32) & 0xFF;
        const rh1 = (hi >> 32) & 0xFF;
        const gl1 = channels > 1 ? (lo >> 40) & 0xFF : 0;
        const gh1 = channels > 1 ? (hi >> 40) & 0xFF : 0;
        const bl1 = channels > 2 ? (lo >> 48) & 0xFF : 0;
        const bh1 = channels > 2 ? (hi >> 48) & 0xFF : 0;
        const al1 = channels > 3 ? (lo >> 56) & 0xFF : 0;
        const ah1 = channels > 3 ? (hi >> 56) & 0xFF : 0;

        // Anchor bits location depends on the pattern index
        const anchor = getTwoSubsetAnchor(pat);
        const loMask = (0xFFFFFFFF << ((anchor << 1) | 1)) ^ 0xFFFFFFFC;
        const hiMask = 0xFFFFFFFF << ((anchor << 1) + 2);

        // 2-bit weights, start at 97
        const weights = ((q1 >> 31) & hiMask) | ((q1 >> 32) & loMask) | ((q1 >> 33) & 1);

        writeDualSubsetColorAlphaBlockW2(
          rl0, rh0, gl0, gh0, bl0, bh0, al0, ah0,
          rl1, rh1, gl1, gh1, bl1, bh1, al1, ah1,
          weights, 2,
          getTwoSubsetPattern(pat),
          offset, stride
        );
      }
      break;
    case 10:
      {
        // Two trits (8 values), 8 + 5 bits
        const et0 = unpackTrits(<u32>(q0 >> 20) & 0xFF);
        const et1 = channels > 2 ? unpackTrits(<u32>(q0 >> 28) & 0x1F) : 0;

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
        gl0 = channels > 1 ? unq47(gl0, (et0 >> 4) & 3) : 0;
        gh0 = channels > 1 ? unq47(gh0, (et0 >> 6) & 3) : 0;
        bl0 = channels > 2 ? unq47(bl0, et0 >> 8) : 0;
        bh0 = channels > 2 ? unq47(bh0, et1 & 3) : 0;
        al0 = channels > 3 ? unq47(al0, (et1 >> 2) & 3) : 0;
        ah0 = channels > 3 ? unq47(ah0, (et1 >> 4) & 3) : 0;

        // 4-bit weights, start at 65
        const weights = (q1 & 0xFFFFFFFFFFFFFFF0) | ((q1 >> 1) & 7);

        // Use non-unrolled loop here as it doesn't seem to affect the performance
        writeLoopSingleSubsetColorAlphaBlock(
          rl0, rh0, gl0, gh0, bl0, bh0, al0, ah0,
          weights, 4, offset, stride
        );
      }
      break;
    case 11:
      {
        const compSel = <u32>(q0 >> 19) & 0x3;

        // Two trits (8 values), 8 + 5 bits
        const et0 = unpackTrits(<u32>(q0 >> 21) & 0xFF);
        const et1 = channels > 2 ? unpackTrits(<u32>(q0 >> 29) & 0x1F) : 0;

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
        gl0 = channels > 1 ? unq47(gl0, (et0 >> 4) & 3) : 0;
        gh0 = channels > 1 ? unq47(gh0, (et0 >> 6) & 3) : 0;
        bl0 = channels > 2 ? unq47(bl0, et0 >> 8)       : 0;
        bh0 = channels > 2 ? unq47(bh0, et1 & 3)        : 0;
        al0 = channels > 3 ? unq47(al0, (et1 >> 2) & 3) : 0;
        ah0 = channels > 3 ? unq47(ah0, (et1 >> 4) & 3) : 0;

        // 2-bit weights, start at 66
        const weights = (q1 & 0xFFFFFFFFFFFFFFF0) | ((q1 >> 1) & 4) | ((q1 >> 2) & 1);

        writeDualPlaneColorAlphaBlockW2(
          rl0, rh0, gl0, gh0, bl0, bh0, al0, ah0,
          weights, compSel,
          offset, stride
        );
      }
      break;
    case 12:
      {
        // Two trits (8 values), 8 + 5 bits
        const et0 = unpackTrits(<u32>(q0 >> 20) & 0xFF);
        const et1 = channels > 2 ? unpackTrits(<u32>(q0 >> 28) & 0x1F) : 0;

        // 6-bit endpoints
        let rl0 = <u32>(q0 >> 33) & 0x3F;
        let rh0 = <u32>(q0 >> 39) & 0x3F;
        let gl0 = <u32>(q0 >> 45) & 0x3F;
        let gh0 = <u32>(q0 >> 51) & 0x3F;
        let bl0 = <u32>(q0 >> 57) & 0x3F;
        let bh0 = (<u32>(q0 >> 63) & 0x1) | (<u32>(q1 << 1) & 0x3E);
        let al0 = <u32>(q1 >>  5) & 0x3F;
        let ah0 = <u32>(q1 >> 11) & 0x3F;

        rl0 = unq191(rl0, et0 & 3);
        rh0 = unq191(rh0, (et0 >> 2) & 3);
        gl0 = channels > 1 ? unq191(gl0, (et0 >> 4) & 3) : 0;
        gh0 = channels > 1 ? unq191(gh0, (et0 >> 6) & 3) : 0;
        bl0 = channels > 2 ? unq191(bl0, et0 >> 8)       : 0;
        bh0 = channels > 2 ? unq191(bh0, et1 & 3)        : 0;
        al0 = channels > 3 ? unq191(al0, (et1 >> 2) & 3) : 0;
        ah0 = channels > 3 ? unq191(ah0, (et1 >> 4) & 3) : 0;

        // 3-bit weights, start at 81
        const weights = ((q1 >> 16) & 0xFFFFFFFFFFF8) | ((q1 >> 17) & 3);

        writeSingleSubsetColorAlphaBlock(
          rl0, rh0, gl0, gh0, bl0, bh0, al0, ah0,
          weights, 3, offset, stride
        );
      }
      break;
    case 13:
      {
        const compSel = <u32>(q0 >> 28) & 0x3;

        // 8-bit endpoints
        const rl0 = <u32>(q0 >> 30) & 0xFF;
        const rh0 = <u32>(q0 >> 38) & 0xFF;
        const gl0 = channels > 1 ? <u32>(q0 >> 46) & 0xFF                             : 0;
        const gh0 = channels > 1 ? <u32>(q0 >> 54) & 0xFF                             : 0;
        const bl0 = channels > 2 ? (<u32>(q0 >> 62) & 0x03) | (<u32>(q1 << 2) & 0xFC) : 0;
        const bh0 = channels > 2 ? <u32>(q1 >>  6) & 0xFF                             : 0;
        const al0 = channels > 3 ? <u32>(q1 >> 14) & 0xFF                             : 0;
        const ah0 = channels > 3 ? <u32>(q1 >> 22) & 0xFF                             : 0;

        // 1-bit weights, start at 94
        const weights = (q1 >> 28) & 0xFFFFFFFC;

        writeDualPlaneColorAlphaBlockW1(
          rl0, rh0, gl0, gh0, bl0, bh0, al0, ah0,
          weights, compSel,
          offset, stride
        );
      }
      break;
    case 14:
      {
        // 8-bit endpoints
        const rl0 = <u32>(q0 >> 28) & 0xFF;
        const rh0 = <u32>(q0 >> 36) & 0xFF;
        const gl0 = channels > 1 ? <u32>(q0 >> 44) & 0xFF                            : 0;
        const gh0 = channels > 1 ? <u32>(q0 >> 52) & 0xFF                            : 0;
        const bl0 = channels > 2 ? (<u32>(q0 >> 60) & 0xF) | (<u32>(q1 << 4) & 0xF0) : 0;
        const bh0 = channels > 2 ? <u32>(q1 >>  4) & 0xFF                            : 0;
        const al0 = channels > 3 ? <u32>(q1 >> 12) & 0xFF                            : 0;
        const ah0 = channels > 3 ? <u32>(q1 >> 20) & 0xFF                            : 0;

        // 2-bit weights, start at 92
        const weights = ((q1 >> 27) & 0xFFFFFFFC) | ((q1 >> 28) & 1);

        writeSingleSubsetColorAlphaBlock(
          rl0, rh0, gl0, gh0, bl0, bh0, al0, ah0,
          weights, 2, offset, stride
        );
      }
      break;
    case 15:
      {
        // 8-bit endpoints
        const ll0 = <u32>(q0 >> 30) & 0xFF;
        const lh0 = <u32>(q0 >> 38) & 0xFF;
        const al0 = channels > 3 ? <u32>(q0 >> 46) & 0xFF : 0;
        const ah0 = channels > 3 ? <u32>(q0 >> 54) & 0xFF : 0;

        // 4-bit weights, start at 62
        const weights = ((q1 << 3) & 0xFFFFFFFFFFFFFFF0) | ((q1 << 2) & 4) | ((q0 >> 62) & 3);

        writeSingleSubsetLumaAlphaBlock(
          ll0, lh0, al0, ah0,
          weights, offset, stride
        );
      }
      break;
    case 16:
      {
        const pat = <u32>(q0 >> 29) & 0x1F;
        if (pat > 29) {
          writeErrorBlock(offset, stride);
          return;
        }

        // 8-bit endpoints
        const ll0 = <u32>(q0 >> 34) & 0xFF;
        const lh0 = <u32>(q0 >> 42) & 0xFF;
        const al0 = channels > 3 ? <u32>(q0 >> 50) & 0xFF                             : 0;
        const ah0 = channels > 3 ? (<u32>(q0 >> 58) & 0x3F) | (<u32>(q1 << 6) & 0xC0) : 0;
        const ll1 = <u32>(q1 >> 2) & 0xFF;
        const lh1 = <u32>(q1 >> 10) & 0xFF;
        const al1 = channels > 3 ? <u32>(q1 >> 18) & 0xFF : 0;
        const ah1 = channels > 3 ? <u32>(q1 >> 26) & 0xFF : 0;

        // Anchor bits location depends on the pattern index
        const anchor = getTwoSubsetAnchor(pat);
        const loMask = (0xFFFFFFFF << ((anchor << 1) | 1)) ^ 0xFFFFFFFC;
        const hiMask = 0xFFFFFFFF << ((anchor << 1) + 2);

        // 2-bit weights, start at 98
        const weights = ((q1 >> 32) & hiMask) | ((q1 >> 33) & loMask) | ((q1 >> 34) & 1);

        writeDualSubsetLumaAlphaBlock(
          ll0, lh0, al0, ah0,
          ll1, lh1, al1, ah1,
          weights,
          getTwoSubsetPattern(pat),
          offset, stride
        );
      }
      break;
    case 17:
      {
        // 8-bit endpoints
        const ll0 = <u32>(q0 >> 29) & 0xFF;
        const lh0 = <u32>(q0 >> 37) & 0xFF;
        const al0 = channels > 3 ? <u32>(q0 >> 45) & 0xFF : 0;
        const ah0 = channels > 3 ? <u32>(q0 >> 53) & 0xFF : 0;

        // 2-bit weights, start at 61
        const weights = (q1 << 5) | ((q0 >> 59) & 16) | ((q0 >> 60) & 4) | ((q0 >> 61) & 1);

        writeDualPlaneLumaAlphaBlockW2(
          ll0, lh0, al0, ah0,
          weights,
          offset, stride
        );
      }
      break;
    case 18:
      {
        // 5-bit endpoints, unquantize in-place
        let lo = <u32>(q0 >> 16) & 0xF83E0F8;
        let hi = <u32>(q0 >> 21) & 0xF83E0F8;
        lo |= lo >> 5;
        hi |= hi >> 5;
        const rl0 = lo & 0xFF;
        const rh0 = hi & 0xFF;
        const gl0 = channels > 1 ? (lo >> 10) & 0xFF : 0;
        const gh0 = channels > 1 ? (hi >> 10) & 0xFF : 0;
        const bl0 = channels > 2 ? (lo >> 20) & 0xFF : 0;
        const bh0 = channels > 2 ? (hi >> 20) & 0xFF : 0;

        // 5-bit weights, start at 49
        // All 16 weights do not fit into a single 64-bit variable,
        // split them as 8 (40) + 8 (40).
        const weights1 = (q1 >> 24) & 0xFFFFFFFFFF;
        const weights0 = ((q1 << 16) & 0xFFFFFF0000) | ((q0 >> 48) & 0xFFE0) | ((q0 >> 49) & 0xF);

        writeSingleSubsetColorBlockW5(
          rl0, rh0, gl0, gh0, bl0, bh0,
          weights0, weights1, offset, stride
        );
      }
      break;
    default:
      writeErrorBlock(offset, stride);
      break;
  }
}

precomputeCommonData();

// @ts-ignore: decorator
@inline function writeSolidBlock64(color: u64, offset: i32, stride: i32): void {
  if (channels == 1) {
    ERROR('Single-channel targets cannot use this function.');
  }

  store<u64>(offset, color, 0);
  if (channels == 4) {
    store<u64>(offset, color, 8);
  }
  offset += stride;

  store<u64>(offset, color, 0);
  if (channels == 4) {
    store<u64>(offset, color, 8);
  }
  offset += stride;

  store<u64>(offset, color, 0);
  if (channels == 4) {
    store<u64>(offset, color, 8);
  }
  offset += stride;

  store<u64>(offset, color, 0);
  if (channels == 4) {
    store<u64>(offset, color, 8);
  }
}

// @ts-ignore: decorator
@inline function writeSolidBlock32(color: u32, offset: i32, stride: i32): void {
  if (channels != 1) {
    ERROR('Non single-channel targets cannot use this function.');
  }

  store<u32>(offset, color);
  offset += stride;

  store<u32>(offset, color);
  offset += stride;

  store<u32>(offset, color);
  offset += stride;

  store<u32>(offset, color);
}

function writeErrorBlock(offset: i32, stride: i32): void {
  if (channels == 4) {
    writeSolidBlock64(0xFFFF00FFFFFF00FF, offset, stride);
  } else if (channels == 2) {
    writeSolidBlock64(0x00FF00FF00FF00FF, offset, stride);
  } else if (channels == 1) {
    writeSolidBlock32(0xFFFFFFFF, offset, stride);
  }

}

// @ts-ignore: decorator
@inline function writeSingleSubsetColorAlphaBlock(
  rl0: i64, rh0: i64,
  gl0: i64, gh0: i64,
  bl0: i64, bh0: i64,
  al0: i64, ah0: i64,
  weights0: u64,
  wBits:  i32,
  offset: i32,
  stride: i32
): void {
  const rs = rl0 * 0x40004000400040;
  const gs = gl0 * 0x40004000400040;
  const bs = bl0 * 0x40004000400040;
  const as = al0 * 0x40004000400040;

  const rd = rh0 - rl0;
  const gd = gh0 - gl0;
  const bd = bh0 - bl0;
  const ad = ah0 - al0;

  let w0: u64 = 0;
  let w1: u64 = 0;
  let w2: u64 = 0;
  let w3: u64 = 0;
  switch (wBits) {
    case 2:
      w0 = unqWx4(2, (weights0 >>  0) & 0xFF);
      w1 = unqWx4(2, (weights0 >>  8) & 0xFF);
      w2 = unqWx4(2, (weights0 >> 16) & 0xFF);
      w3 = unqWx4(2, (weights0 >> 24) & 0xFF);
      break;
    case 3:
      w0 = unqWx4(3, (weights0 >>  0) & 0xFFF);
      w1 = unqWx4(3, (weights0 >> 12) & 0xFFF);
      w2 = unqWx4(3, (weights0 >> 24) & 0xFFF);
      w3 = unqWx4(3, (weights0 >> 36) & 0xFFF);
      break;
    case 4:
      w0 = unqWx4(4, (weights0 >>  0) & 0xFFFF);
      w1 = unqWx4(4, (weights0 >> 16) & 0xFFFF);
      w2 = unqWx4(4, (weights0 >> 32) & 0xFFFF);
      w3 = unqWx4(4, (weights0 >> 48) & 0xFFFF);
      break;
  }

  let r0 = rs + rd * w0;
  let r1 = rs + rd * w1;
  let r2 = rs + rd * w2;
  let r3 = rs + rd * w3;

  let g0 = gs + gd * w0;
  let g1 = gs + gd * w1;
  let g2 = gs + gd * w2;
  let g3 = gs + gd * w3;

  let b0 = bs + bd * w0;
  let b1 = bs + bd * w1;
  let b2 = bs + bd * w2;
  let b3 = bs + bd * w3;

  let a0 = as + ad * w0;
  let a1 = as + ad * w1;
  let a2 = as + ad * w2;
  let a3 = as + ad * w3;

  if (srgb) {
    r0 = lerpFinalSrgb(r0);
    r1 = lerpFinalSrgb(r1);
    r2 = lerpFinalSrgb(r2);
    r3 = lerpFinalSrgb(r3);

    g0 = lerpFinalSrgb(g0) << 8;
    g1 = lerpFinalSrgb(g1) << 8;
    g2 = lerpFinalSrgb(g2) << 8;
    g3 = lerpFinalSrgb(g3) << 8;

    b0 = lerpFinalSrgb(b0);
    b1 = lerpFinalSrgb(b1);
    b2 = lerpFinalSrgb(b2);
    b3 = lerpFinalSrgb(b3);
  } else {
    r0 = lerpFinal(r0);
    r1 = lerpFinal(r1);
    r2 = lerpFinal(r2);
    r3 = lerpFinal(r3);

    g0 = lerpFinal(g0) << 8;
    g1 = lerpFinal(g1) << 8;
    g2 = lerpFinal(g2) << 8;
    g3 = lerpFinal(g3) << 8;

    b0 = lerpFinal(b0);
    b1 = lerpFinal(b1);
    b2 = lerpFinal(b2);
    b3 = lerpFinal(b3);
  }
  a0 = lerpFinal(a0) << 8;
  a1 = lerpFinal(a1) << 8;
  a2 = lerpFinal(a2) << 8;
  a3 = lerpFinal(a3) << 8;

  writeLineRGBA(offset, r0, g0, b0, a0);
  offset += stride;

  writeLineRGBA(offset, r1, g1, b1, a1);
  offset += stride;

  writeLineRGBA(offset, r2, g2, b2, a2);
  offset += stride;

  writeLineRGBA(offset, r3, g3, b3, a3);
}

// @ts-ignore: decorator
@inline function writeSingleSubsetLumaAlphaBlock(
  ll0: u64, lh0: u64, al0: u64, ah0: u64,
  weights0: u64,
  offset: i32,
  stride: i32
): void {
  const w0 = unqWx4(4, (weights0 >>  0) & 0xFFFF);
  const w1 = unqWx4(4, (weights0 >> 16) & 0xFFFF);
  const w2 = unqWx4(4, (weights0 >> 32) & 0xFFFF);
  const w3 = unqWx4(4, (weights0 >> 48) & 0xFFFF);

  lh0 -= ll0;
  ah0 -= al0;

  ll0 *= 0x40004000400040;
  al0 *= 0x40004000400040;

  let l0 = ll0 + lh0 * w0;
  let l1 = ll0 + lh0 * w1;
  let l2 = ll0 + lh0 * w2;
  let l3 = ll0 + lh0 * w3;

  let a0 = al0 + ah0 * w0;
  let a1 = al0 + ah0 * w1;
  let a2 = al0 + ah0 * w2;
  let a3 = al0 + ah0 * w3;

  if (srgb) {
    l0 = lerpFinalSrgb(l0);
    l1 = lerpFinalSrgb(l1);
    l2 = lerpFinalSrgb(l2);
    l3 = lerpFinalSrgb(l3);
  } else {
    l0 = lerpFinal(l0);
    l1 = lerpFinal(l1);
    l2 = lerpFinal(l2);
    l3 = lerpFinal(l3);
  }
  a0 = lerpFinal(a0) << 8;
  a1 = lerpFinal(a1) << 8;
  a2 = lerpFinal(a2) << 8;
  a3 = lerpFinal(a3) << 8;

  writeLineLA(offset, l0, a0);
  offset += stride;

  writeLineLA(offset, l1, a1);
  offset += stride;

  writeLineLA(offset, l2, a2);
  offset += stride;

  writeLineLA(offset, l3, a3);
}

// @ts-ignore: decorator
@inline function writeLoopSingleSubsetColorAlphaBlock(
  rl0: i64, rh0: i64,
  gl0: i64, gh0: i64,
  bl0: i64, bh0: i64,
  al0: i64, ah0: i64,
  weights0: u64,
  wBits:  i32,
  offset: i32,
  stride: i32
): void {
  rh0 -= rl0;
  gh0 -= gl0;
  bh0 -= bl0;
  ah0 -= al0;

  rl0 *= 0x40004000400040;
  gl0 *= 0x40004000400040;
  bl0 *= 0x40004000400040;
  al0 *= 0x40004000400040;

  const lastOffset = offset + stride * 4;
  while (offset < lastOffset) {
    const w0: u64 = unqWx4(wBits, weights0 & ((1 << (wBits * 4)) - 1));

    let r = rl0 + rh0 * w0;
    let g = gl0 + gh0 * w0;
    let b = bl0 + bh0 * w0;
    let a = al0 + ah0 * w0;

    if (srgb) {
      r = lerpFinalSrgb(r);
      g = lerpFinalSrgb(g) << 8;
      b = lerpFinalSrgb(b);
      a = lerpFinalSrgb(a) << 8;
    } else {
      r = lerpFinal(r);
      g = lerpFinal(g) << 8;
      b = lerpFinal(b);
      a = lerpFinal(a) << 8;
    }

    writeLineRGBA(offset, r, g, b, a);

    offset += stride;
    weights0 >>= wBits * 4;
  }
}

// @ts-ignore: decorator
@inline function writeSingleSubsetColorBlockW5(
  rl0: i64, rh0: i64, gl0: i64, gh0: i64, bl0: i64, bh0: i64,
  weights0: u64,
  weights1: u64,
  offset:   i32,
  stride:   i32
): void {
  const rs = rl0 * 0x40004000400040;
  const gs = gl0 * 0x40004000400040;
  const bs = bl0 * 0x40004000400040;

  const rd = rh0 - rl0;
  const gd = gh0 - gl0;
  const bd = bh0 - bl0;

  const w0 = unqWx4(5, (weights0 >>  0) & 0xFFFFF);
  const w1 = unqWx4(5, (weights0 >> 20) & 0xFFFFF);
  const w2 = unqWx4(5, (weights1 >>  0) & 0xFFFFF);
  const w3 = unqWx4(5, (weights1 >> 20) & 0xFFFFF);

  let r0 = rs + rd * w0;
  let r1 = rs + rd * w1;
  let r2 = rs + rd * w2;
  let r3 = rs + rd * w3;

  let g0 = gs + gd * w0;
  let g1 = gs + gd * w1;
  let g2 = gs + gd * w2;
  let g3 = gs + gd * w3;

  let b0 = bs + bd * w0;
  let b1 = bs + bd * w1;
  let b2 = bs + bd * w2;
  let b3 = bs + bd * w3;

  if (srgb) {
    r0 = lerpFinalSrgb(r0);
    r1 = lerpFinalSrgb(r1);
    r2 = lerpFinalSrgb(r2);
    r3 = lerpFinalSrgb(r3);

    g0 = lerpFinalSrgb(g0) << 8;
    g1 = lerpFinalSrgb(g1) << 8;
    g2 = lerpFinalSrgb(g2) << 8;
    g3 = lerpFinalSrgb(g3) << 8;

    b0 = lerpFinalSrgb(b0);
    b1 = lerpFinalSrgb(b1);
    b2 = lerpFinalSrgb(b2);
    b3 = lerpFinalSrgb(b3);
  } else {
    r0 = lerpFinal(r0);
    r1 = lerpFinal(r1);
    r2 = lerpFinal(r2);
    r3 = lerpFinal(r3);

    g0 = lerpFinal(g0) << 8;
    g1 = lerpFinal(g1) << 8;
    g2 = lerpFinal(g2) << 8;
    g3 = lerpFinal(g3) << 8;

    b0 = lerpFinal(b0);
    b1 = lerpFinal(b1);
    b2 = lerpFinal(b2);
    b3 = lerpFinal(b3);
  }

  writeLineRGBA(offset, r0, g0, b0, 0xFF00FF00FF00FF00);
  offset += stride;

  writeLineRGBA(offset, r1, g1, b1, 0xFF00FF00FF00FF00);
  offset += stride;

  writeLineRGBA(offset, r2, g2, b2, 0xFF00FF00FF00FF00);
  offset += stride;

  writeLineRGBA(offset, r3, g3, b3, 0xFF00FF00FF00FF00);
}

// @ts-ignore: decorator
@inline function writeDualPlaneColorAlphaBlockW1(
  rl0: u64, rh0: u64,
  gl0: u64, gh0: u64,
  bl0: u64, bh0: u64,
  al0: u64, ah0: u64,
  weights: u64,
  compSel: i32,
  offset:  i32,
  stride:  i32
): void {
  const w00 = unqWx2x4(1, (weights >>  0) & 0x55);
  const w01 = unqWx2x4(1, (weights >>  1) & 0x55);
  const w10 = unqWx2x4(1, (weights >>  8) & 0x55);
  const w11 = unqWx2x4(1, (weights >>  9) & 0x55);
  const w20 = unqWx2x4(1, (weights >> 16) & 0x55);
  const w21 = unqWx2x4(1, (weights >> 17) & 0x55);
  const w30 = unqWx2x4(1, (weights >> 24) & 0x55);
  const w31 = unqWx2x4(1, (weights >> 25) & 0x55);

  rh0 ^= rl0;
  bh0 ^= bl0;
  gh0 ^= gl0;
  ah0 ^= al0;

  rl0 *= 0x0001000100010001;
  bl0 *= 0x0001000100010001;
  rh0 *= 0x0001000100010001;
  bh0 *= 0x0001000100010001;
  gl0 *= 0x0100010001000100;
  al0 *= 0x0100010001000100;
  gh0 *= 0x0100010001000100;
  ah0 *= 0x0100010001000100;

  const r0 = rl0 ^ (rh0 & ((compSel == 0) ? w01 : w00));
  const r1 = rl0 ^ (rh0 & ((compSel == 0) ? w11 : w10));
  const r2 = rl0 ^ (rh0 & ((compSel == 0) ? w21 : w20));
  const r3 = rl0 ^ (rh0 & ((compSel == 0) ? w31 : w30));

  const g0 = gl0 ^ (gh0 & ((compSel == 1) ? w01 : w00));
  const g1 = gl0 ^ (gh0 & ((compSel == 1) ? w11 : w10));
  const g2 = gl0 ^ (gh0 & ((compSel == 1) ? w21 : w20));
  const g3 = gl0 ^ (gh0 & ((compSel == 1) ? w31 : w30));

  const b0 = bl0 ^ (bh0 & ((compSel == 2) ? w01 : w00));
  const b1 = bl0 ^ (bh0 & ((compSel == 2) ? w11 : w10));
  const b2 = bl0 ^ (bh0 & ((compSel == 2) ? w21 : w20));
  const b3 = bl0 ^ (bh0 & ((compSel == 2) ? w31 : w30));

  const a0 = al0 ^ (ah0 & ((compSel == 3) ? w01 : w00));
  const a1 = al0 ^ (ah0 & ((compSel == 3) ? w11 : w10));
  const a2 = al0 ^ (ah0 & ((compSel == 3) ? w21 : w20));
  const a3 = al0 ^ (ah0 & ((compSel == 3) ? w31 : w30));

  writeLineRGBA(offset, r0, g0, b0, a0);
  offset += stride;

  writeLineRGBA(offset, r1, g1, b1, a1);
  offset += stride;

  writeLineRGBA(offset, r2, g2, b2, a2);
  offset += stride;

  writeLineRGBA(offset, r3, g3, b3, a3);
}

// @ts-ignore: decorator
@inline function writeDualPlaneColorAlphaBlockW2(
  rl0: i64, rh0: i64,
  gl0: i64, gh0: i64,
  bl0: i64, bh0: i64,
  al0: i64, ah0: i64,
  weights: u64,
  compSel: i32,
  offset:  i32,
  stride:  i32
): void {
  const w00 = unqWx2x4(2, (weights >>  0) & 0x3333);
  const w01 = unqWx2x4(2, (weights >>  2) & 0x3333);
  const w10 = unqWx2x4(2, (weights >> 16) & 0x3333);
  const w11 = unqWx2x4(2, (weights >> 18) & 0x3333);
  const w20 = unqWx2x4(2, (weights >> 32) & 0x3333);
  const w21 = unqWx2x4(2, (weights >> 34) & 0x3333);
  const w30 = unqWx2x4(2, (weights >> 48) & 0x3333);
  const w31 = unqWx2x4(2, (weights >> 50) & 0x3333);

  rh0 -= rl0;
  gh0 -= gl0;
  bh0 -= bl0;
  ah0 -= al0;

  rl0 *= 0x40004000400040;
  gl0 *= 0x40004000400040;
  bl0 *= 0x40004000400040;
  al0 *= 0x40004000400040;

  let r0 = rl0 + rh0 * ((compSel == 0) ? w01 : w00);
  let r1 = rl0 + rh0 * ((compSel == 0) ? w11 : w10);
  let r2 = rl0 + rh0 * ((compSel == 0) ? w21 : w20);
  let r3 = rl0 + rh0 * ((compSel == 0) ? w31 : w30);

  let g0 = gl0 + gh0 * ((compSel == 1) ? w01 : w00);
  let g1 = gl0 + gh0 * ((compSel == 1) ? w11 : w10);
  let g2 = gl0 + gh0 * ((compSel == 1) ? w21 : w20);
  let g3 = gl0 + gh0 * ((compSel == 1) ? w31 : w30);

  let b0 = bl0 + bh0 * ((compSel == 2) ? w01 : w00);
  let b1 = bl0 + bh0 * ((compSel == 2) ? w11 : w10);
  let b2 = bl0 + bh0 * ((compSel == 2) ? w21 : w20);
  let b3 = bl0 + bh0 * ((compSel == 2) ? w31 : w30);

  let a0 = al0 + ah0 * ((compSel == 3) ? w01 : w00);
  let a1 = al0 + ah0 * ((compSel == 3) ? w11 : w10);
  let a2 = al0 + ah0 * ((compSel == 3) ? w21 : w20);
  let a3 = al0 + ah0 * ((compSel == 3) ? w31 : w30);

  if (srgb) {
    r0 = lerpFinalSrgb(r0);
    r1 = lerpFinalSrgb(r1);
    r2 = lerpFinalSrgb(r2);
    r3 = lerpFinalSrgb(r3);

    g0 = lerpFinalSrgb(g0) << 8;
    g1 = lerpFinalSrgb(g1) << 8;
    g2 = lerpFinalSrgb(g2) << 8;
    g3 = lerpFinalSrgb(g3) << 8;

    b0 = lerpFinalSrgb(b0);
    b1 = lerpFinalSrgb(b1);
    b2 = lerpFinalSrgb(b2);
    b3 = lerpFinalSrgb(b3);
  } else {
    r0 = lerpFinal(r0);
    r1 = lerpFinal(r1);
    r2 = lerpFinal(r2);
    r3 = lerpFinal(r3);

    g0 = lerpFinal(g0) << 8;
    g1 = lerpFinal(g1) << 8;
    g2 = lerpFinal(g2) << 8;
    g3 = lerpFinal(g3) << 8;

    b0 = lerpFinal(b0);
    b1 = lerpFinal(b1);
    b2 = lerpFinal(b2);
    b3 = lerpFinal(b3);
  }
  a0 = lerpFinal(a0) << 8;
  a1 = lerpFinal(a1) << 8;
  a2 = lerpFinal(a2) << 8;
  a3 = lerpFinal(a3) << 8;

  writeLineRGBA(offset, r0, g0, b0, a0);
  offset += stride;

  writeLineRGBA(offset, r1, g1, b1, a1);
  offset += stride;

  writeLineRGBA(offset, r2, g2, b2, a2);
  offset += stride;

  writeLineRGBA(offset, r3, g3, b3, a3);
}

// @ts-ignore: decorator
@inline function writeDualPlaneLumaAlphaBlockW2(
  ll0: i64, lh0: i64,
  al0: i64, ah0: i64,
  weights: u64,
  offset:  i32,
  stride:  i32
): void {
  const w00 = unqWx2x4(2, (weights >>  0) & 0x3333);
  const w01 = unqWx2x4(2, (weights >>  2) & 0x3333);
  const w10 = unqWx2x4(2, (weights >> 16) & 0x3333);
  const w11 = unqWx2x4(2, (weights >> 18) & 0x3333);
  const w20 = unqWx2x4(2, (weights >> 32) & 0x3333);
  const w21 = unqWx2x4(2, (weights >> 34) & 0x3333);
  const w30 = unqWx2x4(2, (weights >> 48) & 0x3333);
  const w31 = unqWx2x4(2, (weights >> 50) & 0x3333);

  lh0 -= ll0;
  ah0 -= al0;

  ll0 *= 0x40004000400040;
  al0 *= 0x40004000400040;

  let l0 = ll0 + lh0 * w00;
  let l1 = ll0 + lh0 * w10;
  let l2 = ll0 + lh0 * w20;
  let l3 = ll0 + lh0 * w30;

  let a0 = al0 + ah0 * w01;
  let a1 = al0 + ah0 * w11;
  let a2 = al0 + ah0 * w21;
  let a3 = al0 + ah0 * w31;

  if (srgb) {
    l0 = lerpFinalSrgb(l0);
    l1 = lerpFinalSrgb(l1);
    l2 = lerpFinalSrgb(l2);
    l3 = lerpFinalSrgb(l3);
  } else {
    l0 = lerpFinal(l0);
    l1 = lerpFinal(l1);
    l2 = lerpFinal(l2);
    l3 = lerpFinal(l3);
  }
  a0 = lerpFinal(a0) << 8;
  a1 = lerpFinal(a1) << 8;
  a2 = lerpFinal(a2) << 8;
  a3 = lerpFinal(a3) << 8;

  writeLineLA(offset, l0, a0);
  offset += stride;

  writeLineLA(offset, l1, a1);
  offset += stride;

  writeLineLA(offset, l2, a2);
  offset += stride;

  writeLineLA(offset, l3, a3);
}

// @ts-ignore: decorator
@inline function writeDualSubsetColorBlock(
  rl0: i64, rh0: i64, gl0: i64, gh0: i64,
  bl0: i64, bh0: i64, rl1: i64, rh1: i64,
  gl1: i64, gh1: i64, bl1: i64, bh1: i64,
  weights: u64,
  wBits:   i32,
  pattern: u32,
  offset:  i32,
  stride:  i32
): void {
  rh0 -= rl0;
  rh1 -= rl1;
  gh0 -= gl0;
  gh1 -= gl1;
  bh0 -= bl0;
  bh1 -= bl1;

  rl0 *= 0x40004000400040;
  rl1 *= 0x40004000400040;
  gl0 *= 0x40004000400040;
  gl1 *= 0x40004000400040;
  bl0 *= 0x40004000400040;
  bl1 *= 0x40004000400040;

  for (let i = 0; i < 4; i++) {
    const w = unqWx4(wBits, weights & ((1 << (wBits * 4)) - 1));
    const p = replicate4to64(pattern);

    const r1 = rl1 + rh1 * w;
    const g1 = gl1 + gh1 * w;
    const b1 = bl1 + bh1 * w;

    let r0 = rl0 + rh0 * w;
    let g0 = gl0 + gh0 * w;
    let b0 = bl0 + bh0 * w;

    r0 ^= (r0 ^ r1) & p;
    g0 ^= (g0 ^ g1) & p;
    b0 ^= (b0 ^ b1) & p;

    if (srgb) {
      r0 = lerpFinalSrgb(r0);
      g0 = lerpFinalSrgb(g0) << 8;
      b0 = lerpFinalSrgb(b0);
    } else {
      r0 = lerpFinal(r0);
      g0 = lerpFinal(g0) << 8;
      b0 = lerpFinal(b0);
    }

    writeLineRGBA(offset, r0, g0, b0, 0xFF00FF00FF00FF00);

    offset += stride;
    weights >>= wBits * 4;
    pattern >>= 4;
  }
}

// @ts-ignore: decorator
@inline function writeDualSubsetColorAlphaBlockW2(
  rl0: i64, rh0: i64, gl0: i64, gh0: i64,
  bl0: i64, bh0: i64, al0: i64, ah0: i64,
  rl1: i64, rh1: i64, gl1: i64, gh1: i64,
  bl1: i64, bh1: i64, al1: i64, ah1: i64,
  weights: u64,
  wBits:   i32,
  pattern: u32,
  offset:  i32,
  stride:  i32
): void {
  rh0 -= rl0;
  rh1 -= rl1;
  gh0 -= gl0;
  gh1 -= gl1;
  bh0 -= bl0;
  bh1 -= bl1;
  ah0 -= al0;
  ah1 -= al1;

  rl0 *= 0x40004000400040;
  rl1 *= 0x40004000400040;
  gl0 *= 0x40004000400040;
  gl1 *= 0x40004000400040;
  bl0 *= 0x40004000400040;
  bl1 *= 0x40004000400040;
  al0 *= 0x40004000400040;
  al1 *= 0x40004000400040;

  for (let i = 0; i < 4; i++) {
    const w = unqWx4(wBits, weights & ((1 << (wBits * 4)) - 1));
    const p = replicate4to64(pattern);

    const r1 = rl1 + rh1 * w;
    const g1 = gl1 + gh1 * w;
    const b1 = bl1 + bh1 * w;
    const a1 = al1 + ah1 * w;

    let r0 = rl0 + rh0 * w;
    let g0 = gl0 + gh0 * w;
    let b0 = bl0 + bh0 * w;
    let a0 = al0 + ah0 * w;

    r0 ^= (r0 ^ r1) & p;
    g0 ^= (g0 ^ g1) & p;
    b0 ^= (b0 ^ b1) & p;
    a0 ^= (a0 ^ a1) & p;

    if (srgb) {
      r0 = lerpFinalSrgb(r0);
      g0 = lerpFinalSrgb(g0) << 8;
      b0 = lerpFinalSrgb(b0);
    } else {
      r0 = lerpFinal(r0);
      g0 = lerpFinal(g0) << 8;
      b0 = lerpFinal(b0);
    }
    a0 = lerpFinal(a0) << 8;

    writeLineRGBA(offset, r0, g0, b0, a0);

    offset += stride;
    weights >>= wBits * 4;
    pattern >>= 4;
  }
}

// @ts-ignore: decorator
@inline function writeDualSubsetLumaAlphaBlock(
  ll0: i64, lh0: i64, al0: i64, ah0: i64,
  ll1: i64, lh1: i64, al1: i64, ah1: i64,
  weights: u64,
  pattern: u32,
  offset: i32,
  stride: i32
): void {
  lh0 -= ll0;
  lh1 -= ll1;
  ah0 -= al0;
  ah1 -= al1;

  ll0 *= 0x40004000400040;
  ll1 *= 0x40004000400040;
  al0 *= 0x40004000400040;
  al1 *= 0x40004000400040;

  for (let i = 0; i < 4; i++) {
    const w = unqWx4(2, weights & 0xFF);
    const p = replicate4to64(pattern);

    const l1 = ll1 + lh1 * w;
    const a1 = al1 + ah1 * w;

    let l0 = ll0 + lh0 * w;
    let a0 = al0 + ah0 * w;

    l0 ^= (l0 ^ l1) & p;
    a0 ^= (a0 ^ a1) & p;

    if (srgb) {
      l0 = lerpFinalSrgb(l0);
    } else {
      l0 = lerpFinal(l0);
    }
    a0 = lerpFinal(a0) << 8;

    writeLineLA(offset, l0, a0);

    offset += stride;
    weights >>= 8;
    pattern >>= 4;
  }
}

// @ts-ignore: decorator
@inline function writeTripleSubsetColorBlock(
  rl0: i64, rh0: i64,
  gl0: i64, gh0: i64,
  bl0: i64, bh0: i64,
  rl1: i64, rh1: i64,
  gl1: i64, gh1: i64,
  bl1: i64, bh1: i64,
  rl2: i64, rh2: i64,
  gl2: i64, gh2: i64,
  bl2: i64, bh2: i64,
  weights: u64,
  pattern1: u32,
  pattern2: u32,
  offset: i32,
  stride: i32
): void {
  rh0 -= rl0;
  rh1 -= rl1;
  rh2 -= rl2;
  gh0 -= gl0;
  gh1 -= gl1;
  gh2 -= gl2;
  bh0 -= bl0;
  bh1 -= bl1;
  bh2 -= bl2;

  rl0 *= 0x40004000400040;
  rl1 *= 0x40004000400040;
  rl2 *= 0x40004000400040;
  gl0 *= 0x40004000400040;
  gl1 *= 0x40004000400040;
  gl2 *= 0x40004000400040;
  bl0 *= 0x40004000400040;
  bl1 *= 0x40004000400040;
  bl2 *= 0x40004000400040;

  for (let i = 0; i < 4; i++) {
    const w = unqWx4(2, weights & 0xFF);
    const p1 = replicate4to64(pattern1);
    const p2 = replicate4to64(pattern2);

    const r1 = rl1 + rh1 * w;
    const r2 = rl2 + rh2 * w;
    const g1 = gl1 + gh1 * w;
    const g2 = gl2 + gh2 * w;
    const b1 = bl1 + bh1 * w;
    const b2 = bl2 + bh2 * w;

    let r0 = rl0 + rh0 * w;
    let g0 = gl0 + gh0 * w;
    let b0 = bl0 + bh0 * w;

    r0 ^= (r0 ^ r1) & p1;
    r0 ^= (r0 ^ r2) & p2;
    g0 ^= (g0 ^ g1) & p1;
    g0 ^= (g0 ^ g2) & p2;
    b0 ^= (b0 ^ b1) & p1;
    b0 ^= (b0 ^ b2) & p2;

    if (srgb) {
      r0 = lerpFinalSrgb(r0);
      g0 = lerpFinalSrgb(g0) << 8;
      b0 = lerpFinalSrgb(b0);
    } else {
      r0 = lerpFinal(r0);
      g0 = lerpFinal(g0) << 8;
      b0 = lerpFinal(b0);
    }

    writeLineRGBA(offset, r0, g0, b0, 0xFF00FF00FF00FF00);

    offset += stride;
    weights >>= 8;
    pattern1 >>= 4;
    pattern2 >>= 4;
  }
}

// @ts-ignore: decorator
@inline function writeLineRGBA(offset: i32, r: u64, g: u64, b: u64, a: u64): void {
  if (channels == 4) {
    store<u64>(offset, packRGBA01(r | g, b | a), 0);
    store<u64>(offset, packRGBA23(r | g, b | a), 8);
  } else if (channels == 2) {
    store<u64>(offset, r | g);
  } else if (channels == 1) {
    store<u32>(offset, packR0123(r));
  }
}

// @ts-ignore: decorator
@inline function writeLineLA(offset: i32, l: u64, a: u64): void {
  if (channels == 4) {
    store<u64>(offset, packLA01(l, a), 0);
    store<u64>(offset, packLA23(l, a), 8);
  } else if (channels == 2) {
    store<u64>(offset, l | (l << 8));
  } else if (channels == 1) {
    store<u32>(offset, packR0123(l));
  }
}

// @ts-ignore: decorator
@inline function lerpFinal(c: u64): u64 {
  let x = 0x1000100010001;
  x += ((c >> 5) & 0x1FF01FF01FF01FF) + ((c << 3) & 0x1F801F801F801F8);
  x = (x >> 9) & 0x1000100010001;
  return ((c >> 6) + x) & 0xFF00FF00FF00FF;
}

// @ts-ignore: decorator
@inline function lerpFinalSrgb(c: u64): u64 {
  return ((c + 0x20002000200020) >> 6) & 0xFF00FF00FF00FF;
}

// @ts-ignore: decorator
@inline function packRGBA01(rg: u64, ba: u64): u64 {
  let c = (rg & 0xFFFF) | ((ba & 0xFFFF0000) << 32);
  c |= ((rg & 0xFFFF0000) | (ba & 0xFFFF)) << 16;
  return c;
}

// @ts-ignore: decorator
@inline function packR0123(r: u64): u32 {
  r = (r | (r >>  8)) & 0x0000FFFF0000FFFF;
  return <u32>(r | (r >> 16));
}

// @ts-ignore: decorator
@inline function packRGBA23(rg: u64, ba: u64): u64 {
  let c = ((rg >> 32) & 0xFFFF) | (ba & 0xFFFF000000000000);
  c |= ((rg & 0xFFFF000000000000) | (ba & 0xFFFF00000000)) >> 16;
  return c;
}

// @ts-ignore: decorator
@inline function packLA01(l: u64, a: u64): u64 {
  let c = ((l & 0xFF) | ((l & 0xFF0000) << 16)) * 0x010101;
  c |= ((a & 0xFF00) << 16) | ((a & 0xFF000000) << 32);
  return c;
}

// @ts-ignore: decorator
@inline function packLA23(l: u64, a: u64): u64 {
  let c = (((l & 0xFF00000000) >> 32) | ((l & 0xFF000000000000) >> 16)) * 0x010101;
  c |= ((a & 0xFF0000000000) >> 16) | (a & 0xFF00000000000000);
  return c;
}

// @ts-ignore: decorator
@inline function unqWx4(bits: i32, w: u64): u64 {
  switch (bits) {
    case 2:
      // ab * 4 -> 00000000000000ab * 4
      w = (w | (w << 28)) & 0x0000000F0000000F;
      w = (w | (w << 14)) & 0x0003000300030003;

      // unquantize 0..3 to 0..63
      w *= 21;
      break;
    case 3:
      // abc * 4 -> 0000000000000abc * 4
      w = (w | (w << 26)) & 0x0000003F0000003F;
      w = (w | (w << 13)) & 0x0007000700070007;

      // unquantize 0..7 to 0..63
      w |= w << 3;
      break;
    case 4:
      // abcd * 4 -> 000000000000abcd * 4
      w = (w | (w << 24)) & 0x000000FF000000FF;
      w = (w | (w << 12)) & 0x000F000F000F000F;

      // unquantize 0..15 to 0..63
      w = ((w << 2) | (w >> 2)) & 0x003F003F003F003F;
      break;
    case 5:
      // abcd * 5 -> 00000000000abcde * 4
      w = (w | (w << 22)) & 0x000003FF000003FF;
      w = (w | (w << 11)) & 0x001F001F001F001F;

      // unquantize 0..31 to 0..63
      w = ((w << 1) | (w >> 4)) & 0x003F003F003F003F;
      break;
  }
  // [if (w > 31) w++] * 4
  w += ((w >> 5) & 0x1000100010001);
  return w;
}

// @ts-ignore: decorator
@inline function unqWx2x4(bits: i32, w: u64): u64 {
  switch (bits) {
    case 1:
      // 0a * 4 -> 000000000000000a * 4
      w = (w | (w << 28)) & 0x0000000500000005;
      w = (w | (w << 14)) & 0x0001000100010001;

      // 000000000000000a * 4 -> aaaaaaaaaaaaaaaa * 4
      return w * 65535;
    case 2:
      // 00ab * 4 -> 00000000000000ab * 4
      w = (w | (w << 24)) & 0x0000003300000033;
      w = (w | (w << 12)) & 0x0003000300030003;

      // unquantize 0..3 to 0..63
      w *= 21;

      // [if (w > 31) w++] * 4
      w += ((w >> 5) & 0x1000100010001);
      return w;
  }
  return unreachable();
}

// @ts-ignore: decorator
@inline function replicate4to64(v: u64): u64 {
  v = (v | (v << 30)) & 0x0000000300000003;
  v = (v | (v << 15)) & 0x0001000100010001;
  return v * 65535;
}
