// Copyright 2020 The Khronos Group Inc.
//
// SPDX-License-Identifier: Apache-2.0

// Partition patterns optimized for BC7 take a bit more space.
const isBC7 = ASC_MEMORY_BASE == 472;

/**
 * Offset to a memory location containing 11
 * 3-subset patterns for UASTC Mode Index 3.
 * These patterns are stored as 32-bit values.
 * Lower 16 bits denote subset 1, higher 16 bits denote subset 2.
 * For BC7, these patterns have been preprocessed to match remapped subsets.
 */
const modeIndex3PatternsOffset = isBC7
  ? memory.data<u64>([
      0xF0000F00CC003300, 0xFF0000F0F0000FF0, 0x8888666688884444,
      0xEE0000EECCCC2222, 0x0F0000F044442222, 0x00000000C00C0CC0
    ])
  : memory.data<u64>([
      0xF00000FFCC003300, 0x00F0000FF000000F, 0x8888666644443333,
      0x1111EE002222CCCC, 0x0F00F00F99994444, 0x00000000C00C0CC0
  ]);
if (modeIndex3PatternsOffset != (isBC7 ? 472 : 512)) {
  ERROR('Invalid Mode Index 3 patterns location.');
}

/**
 * Offset to a memory location containing 19
 * 2/3-subset patterns for UASTC Mode Index 7.
 * For ASTC and RGBA8, these patterns are stored as 16-bit values.
 * For BC7, these patterns have been preprocessed to match remapped subsets
 * and stored as 32-bit values. Lower 16 bits denote subset 1 and
 * higher 16 bits denote subset 2.
 */
const modeIndex7PatternsOffset = isBC7
  ? memory.data<u64>([
    0x88884444FF0000F0, 0x3310CC80F60008CC, 0xCCCC2222F0000F00,
    0x08CEC40073008CC8, 0xEE0000EE03C0C03C, 0xCCCC033077008888,
    0xEC80130000CEEC00, 0xEC80004C90006000, 0xEC80136CEE0000EE,
    0x0000000073108C00
  ])
  : memory.data<u64>([
    0xCC800133444400F0, 0xCCCEFFC82222F0FF, 0x3003770000EE3C03,
    0x13336FFFFF8000CE, 0x000000EF136C11FF,
  ]);
if (modeIndex7PatternsOffset != (isBC7 ? 520 : 560)) {
  ERROR('Invalid Mode Index 7 patterns location.');
}

/**
 * Offset to a memory location containing 30
 * 2-subset patterns for UASTC Mode Indices 2, 4, 9, 16
 * These patterns are stored as 16-bit values.
 * For BC7, these patterns have been preprocessed to match remapped subsets.
 */
const twoSubsetsPatternsOffset = isBC7
  ? memory.data<u64>([
    0xECC8EEEE8888CCCC, 0xEC80FEC8FEECC880, 0xE800FE80FFECC800,
    0xF000FFF0FF00FFE8, 0x008C08CE7100008E, 0x088C8CCE31007310,
    0xAAAA0FF066663110, 0x00000000C936F0F0
  ])
  : memory.data<u64>([
    0xECC811118888CCCC, 0x137F0137FEEC377F, 0x17FFFE800013C800,
    0x0FFFFFF000FF0017, 0x008C08CE8EFFFF71, 0x088C7331CEFF7310,
    0x5555F00F6666CEEF, 0x0000000036C90F0F
  ]);
if (twoSubsetsPatternsOffset != 600) {
  ERROR('Invalid Two subsets patterns location.');
}

/**
 * Get pattern value for a given UASTC pattern index (Mode Indices 2, 4, 9, 16)
 */
// @ts-ignore: decorator
@inline export function getTwoSubsetPattern(i: u32): u32 {
  return load<u16>(i << 1, twoSubsetsPatternsOffset);
}

/**
 * Get pattern value for a given UASTC pattern index (Mode Index 7)
 */
// @ts-ignore: decorator
@inline export function getTwoSubsetPatternForModeIndex7(i: u32): u32 {
  return load<u16>(i << 1, modeIndex7PatternsOffset);
}

/**
 * Get BC7 mode 2 pattern value for a given UASTC pattern index (Mode Index 7).
 */
// @ts-ignore: decorator
@inline export function getThreeSubsetPatternForModeIndex7(i: u32): u32 {
  return load<u32>(i << 2, modeIndex7PatternsOffset);
}

/**
 * Get pattern value for a given UASTC pattern index (Mode Index 3)
 */
// @ts-ignore: decorator
@inline export function getThreeSubsetPattern(i: u32): u32 {
  return load<u32>(i << 2, modeIndex3PatternsOffset);
}

/**
 * Triplicate 16 bits
 * @param v - Input 16 bits
 * @returns 48 bits
 */
// @ts-ignore: decorator
@inline export function triplicate16(v: u64): u64 {
  v = (v | (v << 16)) & 0x0000FF0000FF;
  v = (v | (v <<  8)) & 0x00F00F00F00F;
  v = (v | (v <<  4)) & 0x0C30C30C30C3;
  v = (v | (v <<  2)) & 0x249249249249;
  return v * 7;
}

/**
 * Duplicate 16 bits
 * @param v - Input 16 bits
 * @returns 32 bits
 */
// @ts-ignore: decorator
@inline export function duplicate16(v: u32): u32 {
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
// @ts-ignore: decorator
@inline export function duplicate32(v: u64): u64 {
  v = (v | (v << 16)) & 0x0000FFFF0000FFFF;
  v = (v | (v <<  8)) & 0x00FF00FF00FF00FF;
  v = (v | (v <<  4)) & 0x0F0F0F0F0F0F0F0F;
  v = (v | (v <<  2)) & 0x3333333333333333;
  v = (v | (v <<  1)) & 0x5555555555555555;
  return v * 3;
}
