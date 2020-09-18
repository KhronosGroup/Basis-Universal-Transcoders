import * as fs from 'fs';
import * as test from 'tape';
import { ReferenceTranscoder } from './reference';

const NUM_MODES = 19;
const SIZE: number = process.env.CI ? 512 : 256;

const nBlocks = 8 * SIZE * SIZE;
const compressedByteLength = nBlocks * 16;
const uncompressedByteLength = SIZE * ((SIZE + 3) >> 2) * 4 * 4;
const totalByteLength = compressedByteLength + uncompressedByteLength;
const memory = new WebAssembly.Memory({ initial: ((totalByteLength + 65535) >> 16) + 1 });
const compressedView = new Uint8Array(memory.buffer, 65536, compressedByteLength);
const uncompressedView = new Uint8Array(memory.buffer, 65536 + compressedByteLength, uncompressedByteLength);

const generatorModule = new WebAssembly.Module(fs.readFileSync('build/uastc_generator.wasm'));
const generator = new WebAssembly.Instance(generatorModule, { env: { memory: memory } }).exports as unknown as IGenerator;

let reference: ReferenceTranscoder;

async function setup<T>(wasmPath: string): Promise<T> {
  if (!reference) {
    reference = new ReferenceTranscoder(nBlocks);
    await reference.init();
  }
  const module = new WebAssembly.Module(fs.readFileSync(wasmPath));
  return new WebAssembly.Instance(module, {env: { memory: memory }}).exports as unknown as T;
}

test('ASTC4x4', async (t) => {
  const transcoder = await setup<ITranscoder>('build/uastc_astc.wasm');

  for (let m = 0; m < NUM_MODES; m++) {
    generator.generate(m, nBlocks);
    const expected = reference.transcode(compressedView.slice(), reference.TranscodeTarget.ASTC_4x4_RGBA);
    t.equals(transcoder.transcode(nBlocks), 0, `mode ${m}: ok`);
    t.ok(arrayEquals(compressedView, expected), `mode ${m}: data`);
  }

  t.end();
});

test('BC7', async (t) => {
  const transcoder = await setup<ITranscoder>('build/uastc_bc7.wasm');

  for (let m = 0; m < NUM_MODES; m++) {
    generator.generate(m, nBlocks);
    const expected = reference.transcode(compressedView.slice(), reference.TranscodeTarget.BC7_RGBA);
    t.equals(transcoder.transcode(nBlocks), 0, `mode ${m}: ok`);
    t.ok(arrayEquals(compressedView, expected), `mode ${m}: data`);
  }

  t.end();
});

test('RGBA32', async (t) => {
  const decoder = await setup<IDecoder>('build/uastc_rgba32_unorm.wasm');

  for (let m = 0; m < NUM_MODES; m++) {
    generator.generate(m, nBlocks);
    const expected = reference.transcode(compressedView.slice(), reference.TranscodeTarget.RGBA32);
    t.equals(decoder.decodeRGBA32(SIZE, SIZE), 0, `mode ${m}: ok`);
    t.ok(arrayEquals(uncompressedView, expected), `mode ${m}: data`);
  }

  t.end();
});

/** Fast array comparison; t.deepEquals is too slow for large arrays. */
function arrayEquals(actual: Uint8Array, expected: Uint8Array) {
  if (actual.length !== expected.length) {
    console.error(`Incorrect array length. Expected ${expected.length} but got ${actual.length}.`);
    return false;
  }

  for (let i = 0; i < actual.length; i++) {
    if (actual[i] !== expected[i]) {
      console.error(`Incorrect array value. Expected ${expected[i]} but found ${actual[i]} at index ${i}.`);
      return false;
    }
  }

  return true;
}

interface ITranscoder {
  transcode(nBlocks: number): number;
}

interface IDecoder {
  decodeRGBA32(width: number, height: number): number;
}

interface IGenerator {
  generate(mode: number, nBlocks: number): number;
}