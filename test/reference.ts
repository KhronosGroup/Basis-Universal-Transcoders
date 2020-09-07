import * as msc from './msc_basis_transcoder/msc_basis_transcoder';

/** Wrapper for MSC reference transcoder. */
export class ReferenceTranscoder {
  /**
   * Matching transcode targets:
   * - BC7_RGBA:       uastc_bc7.wasm
   * - ASTC_4x4_RGBA:  uastc_astc.wasm
   * - RGBA32:         uastc_rgba32_unorm.wasm
   */
  public TranscodeTarget: {[key: string]: unknown};

  private basisModule;
  private transcoder;
  private imageInfo;

  constructor (private readonly nBlocks: number = 8 * 1024 * 1024) {}

  async init (): Promise<void> {
    this.basisModule = await msc();
    this.basisModule.initTranscoders();
    this.TranscodeTarget = this.basisModule.TranscodeTarget;

    this.transcoder = new this.basisModule.UastcImageTranscoder();

    this.imageInfo = new this.basisModule.ImageInfo(
      this.basisModule.TextureFormat.UASTC4x4,
      4,
      4 * this.nBlocks,
      0
    );
    this.imageInfo.flags = 0;
    this.imageInfo.rgbByteOffset = 0;
    this.imageInfo.rgbByteLength = this.nBlocks * 16;
    this.imageInfo.alphaByteOffset = 0;
    this.imageInfo.alphaByteLength = 0;
  }

  transcode (compressed: Uint8Array, target: unknown): Uint8Array {
    const result = this.transcoder.transcodeImage(target, compressed, this.imageInfo, 0, true, false);
    const decoded = result.transcodedImage.get_typed_memory_view().slice();
    result.transcodedImage.delete();
    return decoded;
  }
}
