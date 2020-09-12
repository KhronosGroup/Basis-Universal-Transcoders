# Basis Universal Reference Transcoder

This folder contains a custom build of the reference low-level Basis Universal transcoder from the [KTX-Software](https://github.com/KhronosGroup/KTX-Software) repo.

The reference transcoder has been modified so that its UASTC to BC7 solid blocks transcoding matches the `uastc_bc7.wasm` transcoder from this repo.

## Usage Example

```js
const msc = require("msc_basis_transcoder.js");

const nBlocks = 8 * 1024 * 1024; // to match UASTC generator example

(async function () {
    const basisModule = await msc();
    basisModule.initTranscoders();

    const transcoder = new basisModule.UastcImageTranscoder();

    const imageInfo = new basisModule.ImageInfo(
        basisModule.TextureFormat.UASTC4x4,
        4,
        4 * nBlocks,
        0
    );
    imageInfo.flags = 0;
    imageInfo.rgbByteOffset = 0;
    imageInfo.rgbByteLength = nBlocks * 16;
    imageInfo.alphaByteOffset = 0;
    imageInfo.alphaByteLength = 0;

    /*
    Matching transcode targets:
        BC7_RGBA:       uastc_bc7.wasm
        ASTC_4x4_RGBA:  uastc_astc.wasm
        RGBA32:         uastc_rgba32_unorm.wasm
    */
    const result = transcoder.transcodeImage(
        basisModule.TranscodeTarget.BC7_RGBA,
        compressed /* Uint8Array */,
        imageInfo,
        0,
        true,
        false
    );
    const decoded = result.transcodedImage.get_typed_memory_view().slice();
    result.transcodedImage.delete();

    // Compare decoded results
    // ...
})();
```
