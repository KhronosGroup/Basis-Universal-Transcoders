// Copyright 2020 The Khronos Group Inc.
//
// SPDX-License-Identifier: Apache-2.0

const modeIndex3PatternsOffset = 2048;
const modeIndex7PatternsOffset = 2096;
const twoSubsetsPatternsOffset = 2176;

export function storePatterns(): void {
  // 11 3-subset patterns for UASTC Mode Index 3.
  // Each pattern is stored as a 32-bit value.
  // Lower 16 bits denote subset 1, higher 16 bits denote subset 2.
  store<u64>(modeIndex3PatternsOffset, 0xF00000FFCC003300, 0);
  store<u64>(modeIndex3PatternsOffset, 0x00F0000FF000000F, 8);
  store<u64>(modeIndex3PatternsOffset, 0x8888666644443333, 16);
  store<u64>(modeIndex3PatternsOffset, 0x1111EE002222CCCC, 24);
  store<u64>(modeIndex3PatternsOffset, 0x0F00F00F99994444, 32);
  store<u64>(modeIndex3PatternsOffset, 0x00000000C00C0CC0, 40);

  // 19 3-subset patterns for UASTC Mode Index 7.
  // Each pattern is stored as a 16-bit value.
  store<u64>(modeIndex7PatternsOffset, 0xCC800133444400F0, 0);
  store<u64>(modeIndex7PatternsOffset, 0xCCCEFFC82222F0FF, 8);
  store<u64>(modeIndex7PatternsOffset, 0x3003770000EE3C03, 16);
  store<u64>(modeIndex7PatternsOffset, 0x13336FFFFF8000CE, 24);
  store<u64>(modeIndex7PatternsOffset, 0x000000EF136C11FF, 32);

  // 30 2-subset patterns for UASTC Mode Indices 2, 4, 9, 16.
  // Each pattern is stored as a 16-bit value.
  store<u64>(twoSubsetsPatternsOffset, 0xECC811118888CCCC, 0);
  store<u64>(twoSubsetsPatternsOffset, 0x137F0137FEEC377F, 8);
  store<u64>(twoSubsetsPatternsOffset, 0x17FFFE800013C800, 16);
  store<u64>(twoSubsetsPatternsOffset, 0x0FFFFFF000FF0017, 24);
  store<u64>(twoSubsetsPatternsOffset, 0x008C08CE8EFFFF71, 32);
  store<u64>(twoSubsetsPatternsOffset, 0x088C7331CEFF7310, 40);
  store<u64>(twoSubsetsPatternsOffset, 0x5555F00F6666CEEF, 48);
  store<u64>(twoSubsetsPatternsOffset, 0x0000000036C90F0F, 56);
}

/**
 * Get pattern value for a given UASTC pattern index (Mode Indices 2, 4, 9, 16)
 */
// @ts-ignore: 1206
@inline
export function getTwoSubsetPattern(i: u32): u32 {
  return load<u16>(i << 1, twoSubsetsPatternsOffset);
}

/**
 * Get pattern value for a given UASTC pattern index (Mode Index 7)
 */
// @ts-ignore: 1206
@inline
export function getTwoSubsetPatternForModeIndex7(i: u32): u32 {
  return load<u16>(i << 1, modeIndex7PatternsOffset);
}

/**
 * Get pattern value for a given UASTC pattern index (Mode Index 3)
 */
// @ts-ignore: 1206
@inline
export function getThreeSubsetPattern(i: u32): u32 {
  return load<u32>(i << 2, modeIndex3PatternsOffset);
}

/**
 * Triplicate 16 bits
 * @param v - Input 16 bits
 * @returns 48 bits
 */
// @ts-ignore: 1206
@inline
export function triplicate16(v: u64): u64 {
  v = (v | (v << 16)) & 0x0000FF0000FF;
  v = (v | (v << 8)) & 0x00F00F00F00F;
  v = (v | (v << 4)) & 0x0C30C30C30C3;
  v = (v | (v << 2)) & 0x249249249249;
  return v * 7;
}

/**
 * Duplicate 16 bits
 * @param v - Input 16 bits
 * @returns 32 bits
 */
// @ts-ignore: 1206
@inline
export function duplicate16(v: u32): u32 {
  v = (v | (v << 8)) & 0x00FF00FF;
  v = (v | (v << 4)) & 0x0F0F0F0F;
  v = (v | (v << 2)) & 0x33333333;
  v = (v | (v << 1)) & 0x55555555;
  return v * 3;
}

/**
 * Duplicate 32 bits
 * @param v - Input 32 bits
 * @returns 64 bits
 */
// @ts-ignore: 1206
@inline
export function duplicate32(v: u64): u64 {
  v = (v | (v << 16)) & 0x0000FFFF0000FFFF;
  v = (v | (v << 8)) & 0x00FF00FF00FF00FF;
  v = (v | (v << 4)) & 0x0F0F0F0F0F0F0F0F;
  v = (v | (v << 2)) & 0x3333333333333333;
  v = (v | (v << 1)) & 0x5555555555555555;
  return v * 3;
}
