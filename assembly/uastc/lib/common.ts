// Copyright 2020 The Khronos Group Inc.
//
// SPDX-License-Identifier: Apache-2.0

/**
 * Offset to a memory location containing
 * UASTC Mode Index values for each possible 7-bit combination
 */
const modesOffset = memory.data<u64>([
  0x070C0F0B030A000B, 0x090C0E0B050A120B, 0x080C100B040A000B,
  0x0D0C020B060A120B, 0x070C110B030A000B, 0x090C0E0B050A120B,
  0x080C010B040A000B, 0x0D0C020B060A120B, 0x070C130B030A000B,
  0x090C0E0B050A120B, 0x080C100B040A000B, 0x0D0C020B060A120B,
  0x070C110B030A000B, 0x090C0E0B050A120B, 0x080C010B040A000B,
  0x0D0C020B060A120B
]);
if (modesOffset != 664) {
  ERROR('Invalid mode indices location.');
}

/**
 * Offset to a memory location containing
 * unquantized 8-bit values for [0..11] range
 */
const unq11Offset = memory.data<u32>([
  0xBA45FF00, 0xA35CE817, 0x8B74D12E
]);
if (unq11Offset != 792) {
  ERROR('Invalid unq11 location.');
}

/**
 * Offset to a memory location containing
 * unquantized 8-bit values for [0..39] range
 */
const unq39Offset = memory.data<u64>([
  0x9E61BE41DF20FF00, 0x9768B847D827F906, 0x916EB14ED22DF20D,
  0x8A75AB54CB34EC13, 0x847BA45BC53AE51A
]);
if (unq39Offset != 808) {
  ERROR('Invalid unq39 location.');
}

/**
 * Offset to a memory location containing
 * unquantized 8-bit values for [0..47] range
 */
const unq47Offset = memory.data<u64>([
  0xCF30DF20EF10FF00, 0x8E719E61AE51BE41, 0xC936D926EA15FA05,
  0x88779867A956B946, 0xC43BD42BE41BF40B, 0x837C936CA35CB34C
]);
if (unq47Offset != 848) {
  ERROR('Invalid unq47 location.');
}

/**
 * Offset to a memory location that will contain
 * unquantized 8-bit values for [0..159] range
 */
const unq159Offset = 896;

/**
 * Offset to a memory location that will contain
 * unquantized 8-bit values for [0..191] range
 */
const unq191Offset = 1056;

/**
 * Offset to a memory location that will contain
 * unpacked UASTC quint values
 */
const quintOffset = 1248;

/**
 * Offset to a memory location that will contain
 * unpacked UASTC trit values
 */
const tritOffset = 1504;

/**
 * Initialize remaining memory regions.
 * Each of the following precomputation functions
 * is smaller than the data it produces.
 */
// @ts-ignore: decorator
@inline export function precomputeCommonData(): void {
  // Precompute unquantized 0..159 range: 1 quint, 5 bits
  for (let bits: u32 = 0; bits < 32; bits++) {
    const a = (bits & 1) ? 0x1FF : 0;
    const b = ((bits & 0x1E) << 4) | (bits >> 4);
    for (let quint: u32 = 0; quint < 5; quint++) {
      const i = (quint << 5) | bits;
      const u = (a & 0x80) | (((quint * 6 + b) ^ a) >> 2);
      store<u8>(i, u, unq159Offset);
    }
  }

  // Precompute unquantized 0..191 range: 1 trit, 6 bits
  for (let bits: u32 = 0; bits < 64; bits++) {
    const a = (bits & 1) ? 0x1FF : 0;
    const b = ((bits & 0x3E) << 3) | (bits >> 5);
    for (let trit: u32 = 0; trit < 3; trit++) {
      const i = (trit << 6) | bits;
      const u = (a & 0x80) | (((trit * 5 + b) ^ a) >> 2);
      store<u8>(i, u, unq191Offset);
    }
  }

  // Precompute unpacked UASTC quint values
  for (let q: u32 = 0; q < 128; q++) {
    const q0 = q % 5;
    const q1 = (q % 25) / 5;
    const q2 = (q % 125) / 25;
    const packed = (q2 << 8) | (q1 << 4) | q0;
    store<u16>(q * 2, packed, quintOffset);
  }

  // Precompute unpacked UASTC trit values
  for (let t: u32 = 0; t < 256; t++) {
    const t0 = t % 3;
    const t1 = (t % 9) / 3;
    const t2 = (t % 27) / 9;
    const t3 = (t % 81) / 27;
    const t4 = (t % 243) / 81;
    const packed = (t4 << 8) | (t3 << 6) | (t2 << 4) | (t1 << 2) | t0;
    store<u16>(t * 2, packed, tritOffset);
  }
}

/**
 * Get UASTC Mode Index value from the lowest 7 bits
 */
// @ts-ignore: decorator
@inline export function getModeIndex(m: u32): u32 {
  return load<u8>(m, modesOffset);
}

/**
 * Load three precomputed UASTC quint values for a given packed quint value
 * @param q - 7-bit packed quint value
 * @returns Three quint values padded to 4 bits each and packed as 12 bits
 */
// @ts-ignore: decorator
@inline export function unpackQuints(q: u32): u32 {
  return load<u16>(q * 2, quintOffset);
}

/**
 * Load five precomputed UASTC trit values for a given packed trit value
 * @param t - 8-bit packed trit value
 * @returns Five trit values 2 bits each packed as 10 bits
 */
// @ts-ignore: decorator
@inline export function unpackTrits(t: u32): u32 {
  return load<u16>(t * 2, tritOffset);
}

/**
 * Load precomputed unquantized value for 0..11 range
 * @param bits - 2-bit value
 * @param quint - Trit value
 * @returns Unquantized 0..255 value
 */
// @ts-ignore: decorator
@inline export function unq11(bits: u32, trit: u32): u32 {
  const i = (trit << 2) | bits;
  return load<u8>(i, unq11Offset);
}

/**
 * Load precomputed unquantized value for 0..39 range
 * @param bits - 3-bit value
 * @param quint - Quint value
 * @returns Unquantized 0..255 value
 */
// @ts-ignore: decorator
@inline export function unq39(bits: u32, quint: u32): u32 {
  const i = (quint << 3) | bits;
  return load<u8>(i, unq39Offset);
}

/**
 * Unquantize 0..47 UASTC endpoint range
 * @param bits - 4-bit value
 * @param trit - Trit value
 * @returns Unquantized 0..255 value
 */
// @ts-ignore: decorator
@inline export function unq47(bits: u32, trit: u32): u32 {
  const i = (trit << 4) | bits;
  return load<u8>(i, unq47Offset);
}

/**
 * Unquantize 0..159 UASTC endpoint range
 * @param bits - 5-bit value
 * @param quint - Quint value
 * @returns Unquantized 0..255 value
 */
// @ts-ignore: decorator
@inline export function unq159(bits: u32, quint: u32): u32 {
  const i = (quint << 5) | bits;
  return load<u8>(i, unq159Offset);
}

/**
 * Unquantize 0..191 ASTC endpoint range
 * @param bits - 6-bit value
 * @param trit - Trit value
 * @returns Unquantized 0..255 value
 */
// @ts-ignore: decorator
@inline export function unq191(bits: u32, trit: u32): u32 {
  const i = (trit << 6) | bits;
  return load<u8>(i, unq191Offset);
}

// TODO: investigate whether reading these from memory makes any difference

/**
 * Get lower anchor value for a given UASTC pattern index (Mode Index 3)
 */
// @ts-ignore: decorator
@inline export function getThreeSubsetAnchorL(i: u32): u32 {
  /**
   * Values are [8, 8, 4, 4, 2, 1, 1, 1, 1, 4, 2]
   */
  return ((<u32>0x580016FF >> (i * 3)) & 7) + 1;
}

/**
 * Get higher anchor value for a given UASTC pattern index (Mode Index 3)
 */
// @ts-ignore: decorator
@inline export function getThreeSubsetAnchorH(i: u32): u32 {
  /**
   * Values are [10, 12, 12, 8, 3, 3, 2, 9, 2, 8, 6]
   */
  return <u32>(<u64>0x68292338CCA >> (i << 2)) & 0xF;
}

/**
 * Get non-zero anchor value for a given UASTC pattern index (Mode Index 7)
 */
// @ts-ignore: decorator
@inline export function getTwoSubsetAnchorForModeIndex7(i: u32): u32 {
  /**
   * Values are [4, 2, 2, 7, 8, 1, 3, 1, 2, 1, 8, 2, 1, 7, 12, 2, 9, 2, 4]
   */
  return <u32>(((i > 15) ? <u64>0x429 : <u64>0x2C71281213187224) >> ((i & 0xF) << 2)) & 0xF;
}

/**
 * Get non-zero anchor value for a given UASTC pattern index (Mode Indices 2, 4, 9, 16)
 */
// @ts-ignore: decorator
@inline export function getTwoSubsetAnchor(i: u32): u32 {
  return <u32>(((i > 15) ? <u64>0x0014141421842181 : <u64>0xC483B72B73273132) >> ((i & 0xF) << 2)) & 0xF;
}
