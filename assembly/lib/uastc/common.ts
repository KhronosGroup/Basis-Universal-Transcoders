// Copyright 2020 The Khronos Group Inc.
//
// SPDX-License-Identifier: Apache-2.0

const modesOffset = 0;

const quintOffset = 256;
const tritOffset = 512;

const unq11Offset = 1024;
const unq39Offset = unq11Offset + 12;
const unq47Offset = unq39Offset + 40;
const unq159Offset = unq47Offset + 48;
const unq191Offset = unq159Offset + 160;

/**
 * Memory page 0 common layout:
 *    0...127: Mode Indices
 *  256...511: UASTC quints
 *  512..1023: UASTC trits
 * 1024..1475: BISE unquantization data
 */
export function storeCommonData(): void {
  /**
   * After https://github.com/AssemblyScript/assemblyscript/pull/1370 is resolved,
   * consider supplying this data via WebAssembly `data` section.
   */
  storeModes();
  storeQuints();
  storeTrits();
  storeUnq11();
  storeUnq39();
  storeUnq47();
  storeUnq159();
  storeUnq191();
}

/**
 * Get UASTC Mode index value from the lowest 7 bits
 */
// @ts-ignore: 1206
@inline
export function getModeIndex(m: i32): u32 {
  return load<u8>(m, modesOffset);
}

function storeModes(): void {
  store<u64>(modesOffset, 0x70C0F0B030A000B, 0);
  store<u64>(modesOffset, 0x90C0E0B050A120B, 8);
  store<u64>(modesOffset, 0x80C100B040A000B, 16);
  store<u64>(modesOffset, 0xD0C020B060A120B, 24);
  store<u64>(modesOffset, 0x70C110B030A000B, 32);
  store<u64>(modesOffset, 0x90C0E0B050A120B, 40);
  store<u64>(modesOffset, 0x80C010B040A000B, 48);
  store<u64>(modesOffset, 0xD0C020B060A120B, 56);
  store<u64>(modesOffset, 0x70C130B030A000B, 64);
  store<u64>(modesOffset, 0x90C0E0B050A120B, 72);
  store<u64>(modesOffset, 0x80C100B040A000B, 80);
  store<u64>(modesOffset, 0xD0C020B060A120B, 88);
  store<u64>(modesOffset, 0x70C110B030A000B, 96);
  store<u64>(modesOffset, 0x90C0E0B050A120B, 104);
  store<u64>(modesOffset, 0x80C010B040A000B, 112);
  store<u64>(modesOffset, 0xD0C020B060A120B, 120);
}

/**
 * Precompute unpacked UASTC quint values
 */
function storeQuints(): void {
  for (let q: u32 = 0; q < 128; q++) {
    const q0 = q % 5;
    const q1 = (q % 25) / 5;
    const q2 = (q % 125) / 25;
    const packed = (q2 << 8) | (q1 << 4) | q0;
    store<u16>(q * 2, packed, quintOffset);
  }
}

/**
 * Load three precomputed UASTC quint values for a given packed quint value
 * @param q - 7-bit packed quint value
 * @returns Three quint values padded to 4 bits each and packed as 12 bits
 */
// @ts-ignore: 1206
@inline
export function unpackQuints(q: i32): u32 {
  return load<u16>(q * 2, quintOffset);
}

/**
 * Precompute unpacked UASTC trit values
 */
function storeTrits(): void {
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
 * Load five precomputed UASTC trit values for a given packed trit value
 * @param t - 8-bit packed trit value
 * @returns Five trit values 2 bits each packed as 10 bits
 */
export function unpackTrits(t: i32): u32 {
  return load<u16>(t * 2, tritOffset);
}

/**
 * Precompute unquantized 0..11 range: 1 trit, 2 bits
 */
function storeUnq11(): void {
  for (let bits = 0; bits < 4; bits++) {
    const a = bits & 1 ? 0x1FF : 0;
    const b = bits & 2 ? 0x116 : 0;
    for (let trit = 0; trit < 3; trit++) {
      const i = (trit << 2) | bits;
      const u = (a & 0x80) | (((trit * 93 + b) ^ a) >>> 2);
      store<u8>(i, u, unq11Offset);
    }
  }
}

/**
 * Load precomputed unquantized value for 0..11 range
 * @param bits - 2-bit value
 * @param quint - Trit value
 * @returns Unquantized 0..255 value
 */
// @ts-ignore
@inline
export function unq11(bits: i32, trit: i32): u32 {
  const i = (trit << 2) | bits;
  return load<u8>(i, unq11Offset);
}

/**
 * Precompute unquantized 0..39 range: 1 quint, 3 bits
 */
function storeUnq39(): void {
  for (let bits = 0; bits < 8; bits++) {
    const a = (bits & 1) ? 0x1FF : 0;
    const b = ((bits & 0x6) * 65) | (bits >>> 2);
    for (let quint = 0; quint < 5; quint++) {
      const i = (quint << 3) | bits;
      const u = (a & 0x80) | (((quint * 26 + b) ^ a) >>> 2);
      store<u8>(i, u, unq39Offset);
    }
  }
}

/**
 * Load precomputed unquantized value for 0..39 range
 * @param bits - 3-bit value
 * @param quint - Quint value
 * @returns Unquantized 0..255 value
 */
// @ts-ignore: 1206
@inline
export function unq39(bits: i32, quint: i32): i32 {
  const i = (quint << 3) | bits;
  return load<u8>(i, unq39Offset);
}

/**
 * Precompute unquantized 0..47 range: 1 trit, 4 bits
 */
function storeUnq47(): void {
  for (let bits = 0; bits < 16; bits++) {
    const a = (bits & 1) ? 0x1FF : 0;
    const b = (bits >> 1) * 65;
    for (let trit = 0; trit < 3; trit++) {
      const i = (trit << 4) | bits;
      const u = (a & 0x80) | (((trit * 22 + b) ^ a) >>> 2);
      store<u8>(i, u, unq47Offset);
    }
  }
}

/**
 * Unquantize 0..47 UASTC endpoint range
 * @param bits - 4-bit value
 * @param trit - Trit value
 * @returns Unquantized 0..255 value
 */
// @ts-ignore
@inline
export function unq47(bits: i32, trit: i32): u32 {
  const i = (trit << 4) | bits;
  return load<u8>(i, unq47Offset);
}

/**
 * Precompute unquantized 0..159 range: 1 quint, 5 bits
 */
function storeUnq159(): void {
  for (let bits = 0; bits < 32; bits++) {
    const a = (bits & 1) ? 0x1FF : 0;
    const b = ((bits & 0x1E) << 4) | (bits >>> 4);
    for (let quint = 0; quint < 5; quint++) {
      const i = (quint << 5) | bits;
      const u = (a & 0x80) | (((quint * 6 + b) ^ a) >>> 2);
      store<u8>(i, u, unq159Offset);
    }
  }
}

/**
 * Unquantize 0..159 UASTC endpoint range
 * @param bits - 5-bit value
 * @param quint - Quint value
 * @returns Unquantized 0..255 value
 */
// @ts-ignore: 1206
@inline
export function unq159(bits: i32, quint: i32): u32 {
  const i = (quint << 5) | bits;
  return load<u8>(i, unq159Offset);
}

/**
 * Precompute unquantized 0..191 range: 1 trit, 6 bits
 */
function storeUnq191(): void {
  for (let bits = 0; bits < 64; bits++) {
    const a = (bits & 1) ? 0x1FF : 0;
    const b = ((bits & 0x3E) << 3) | (bits >>> 5);
    for (let trit = 0; trit < 3; trit++) {
      const i = (trit << 6) | bits;
      const u = (a & 0x80) | (((trit * 5 + b) ^ a) >>> 2);
      store<u8>(i, u, unq191Offset);
    }
  }
}

/**
 * Unquantize 0..191 ASTC endpoint range
 * @param bits - 6-bit value
 * @param trit - Trit value
 * @returns Unquantized 0..255 value
 */
// @ts-ignore: 1206
@inline
export function unq191(bits: i32, trit: i32): u32 {
  const i = (trit << 6) | bits;
  return load<u8>(i, unq191Offset);
}

// TODO: investigate whether reading these from memory makes any difference

/**
 * Get lower anchor value for a given UASTC pattern index (Mode Index 3)
 */
// @ts-ignore: 1206
@inline
export function getThreeSubsetAnchorL(i: u32): u32 {
  /**
   * Values are [8, 8, 4, 4, 2, 1, 1, 1, 1, 4, 2]
   */
  return ((0x580016FF >>> (i * 3)) & 7) + 1;
}

/**
 * Get higher anchor value for a given UASTC pattern index (Mode Index 3)
 */
// @ts-ignore: 1206
@inline
export function getThreeSubsetAnchorH(i: u32): u32 {
  /**
   * Values are [10, 12, 12, 8, 3, 3, 2, 9, 2, 8, 6]
   */
  return <u32>(0x68292338CCA >>> (i << 2)) & 0xF;
}

/**
 * Get non-zero anchor value for a given UASTC pattern index (Mode Index 7)
 */
// @ts-ignore: 1206
@inline
export function getTwoSubsetAnchorForModeIndex7(i: u32): u32 {
  /**
   * Values are [4, 2, 2, 7, 8, 1, 3, 1, 2, 1, 8, 2, 1, 7, 12, 2, 9, 2, 4]
   */
  return <u32>(((i > 15) ? 0x429 : 0x2C71281213187224) >>> ((i & 0xF) << 2)) & 0xF;
}

/**
 * Get non-zero anchor value for a given UASTC pattern index (Mode Indices 2, 4, 9, 16)
 */
// @ts-ignore: 1206
@inline
export function getTwoSubsetAnchor(i: u32): u32 {
  return <u32>(((i > 15) ? 0x0014141421842181 : 0xC483B72B73273132) >>> ((i & 0xF) << 2)) & 0xF;
}
