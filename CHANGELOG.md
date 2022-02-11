# Changelog

## 0.2.0

- Added `uastc_r8_unorm` and `uastc_rg8_unorm` modules providing R8 and RG8 uncompressed decode targets.

- **Breaking change**: `uastc_rgba32_*` modules have been renamed to `uastc_rgba8_*`; their `decodeRGBA32` functions have been renamed to `decode`.

- **Breaking change**: The `nBlocks` parameter of the `transcode` functions is now checked for invalid values.

- **Breaking change**: The `width` and `height` parameters of the `decode` functions cannot be greater than `16384`.

- All static data initialization functions have been replaced with the embedded _active data segments_.

- All dynamic data initialization routines have been moved to the _start function_.

- The repository is now compliant with the REUSE Specification.

## 0.1.0

- Initial release
