# Universal Texture Transcoders

A collection of optimized WebAssembly transcoders for [Basis Universal](https://github.com/BinomialLLC/basis_universal/) compressed GPU texture formats.

These transcoders accept only low-level compressed payloads. Containers such as `.basis` or `.ktx2` ([KTX](https://github.khronos.org/KTX-Specification/)) should first be parsed by other means, then transcoded to the target format with this library.

## Implementation Status

| Target Format | BasisLZ / ETC1S |  UASTC  |
|:-------------:|:---------------:|:-------:|
|     RGBA32    |     planned     | ⏳ |
|    ASTC 4x4   |     planned     | ✔️ |
|      BC7      |     planned     | ✔️ |
|      ETC      |     planned     | planned |
|   BC1 / BC3   |     planned     | planned |
|     PVRTC     |     planned     | planned |

## Build

1. Ensure that [Node.js](https://nodejs.org/) runtime is installed.

2. After cloning this repository, run
   ```
   $ npm install
   ```

3. After all the dependencies are fetched, run
   ```
   $ npm run asbuild
   ```

4. Built transcoders will be available in the `build/` directory.

## Use

### UASTC Transcoders

All UASTC transcoders accept only raw UASTC blocks. Zstandard or zlib/deflate compression (if present) must be decoded in advance.

#### ASTC 4x4 and BC7

Like UASTC, both these GPU formats use 16 bytes per 4x4 block. The transcoders to ASTC and BC7 share the same API and overwrite UASTC data with ASTC or BC7 in place.

1. The transcoders operate on 4x4 blocks rather than on individual pixels so applications are free to schedule workloads as needed. For example, several small textures could be concatenated and transcoded at once or a large texture could be split into chunks. For a single texture, the number of blocks should be calculated as:
    ```js
    const nBlocks = ((width + 3) >> 2) * ((height + 3) >> 2);
    ```

2. Create a [`WebAssembly.Memory`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/WebAssembly/Memory) object large enough to contain the proper amount of texture blocks. Its size is given in pages, each page is 65536 bytes. The zeroth page is reserved for the transcoder's internal use, so the total amount of pages should be computed as:
    ```js
    const texMemoryPages = (nBlocks * 16 + 65535) >> 16;
    const memory = new WebAssembly.Memory({ initial: texMemoryPages + 1 });
    ```

3. Create a view into the memory region that will be used for transferring texture data. This step must be repeated after calling [`memory.grow`](
https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/WebAssembly/Memory/grow), such as when allocating space for another, larger, texture.
    ```js
    let textureView = new Uint8Array(memory.buffer, 65536, nBlocks * 16);
    ```

4. The memory could be populated with the UASTC data even before the transcoder is ready.
    ```js
    textureView.set(compressedData /* Uint8Array */);
    ```

5. Fetch and instantiate the transcoder with the created memory. Note, that the example code uses [Fetch](https://fetch.spec.whatwg.org/) and [WebAssembly Web](https://webassembly.github.io/spec/web-api/index.html) APIs. Other JavaScript environments (such as Node.js) would need slightly different steps.
    ```js
    const transcoder = (
        await WebAssembly.instantiateStreaming(
            fetch('uastc_{bc7,astc}.wasm'),
            { env: { memory } }
        )
    ).instance.exports;
    ```

6. For each new texture, call the exported `transcode` function with the number of compressed blocks to transcode. If the number of blocks is negative or exceeds the available memory, the function returns `1`. Otherwise, it performs the transcoding and returns `0`. The transcoded texture data will be available through the same memory view.
    ```js
    textureView.set(compressedData);
    if (transcoder.transcode(nBlocks) === 0) {
        // Upload textureView data to the GPU
    } else {
        // Wrong nBlocks value
    }
    ```

7. In a case when a new texture does not fit into the existing memory, the latter could be expanded by calling [`memory.grow`](
https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/WebAssembly/Memory/grow). Note that the memory view would need to be recreated afterwards, by repeating step (3).
