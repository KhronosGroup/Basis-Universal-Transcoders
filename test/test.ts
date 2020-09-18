import * as fs from 'fs';
import * as test from 'tape';
import { ReferenceTranscoder } from './reference';

const WIDTH = process.env.CI ? 4096 : 1024;
const HEIGHT = process.env.CI ? 4096 : 1024;
const NUM_MODES = 19;

let numBlocks: number;
let compressedView: Uint8Array;
let uncompressedView: Uint8Array;

let generator: IGenerator;
let reference: ReferenceTranscoder;

async function setup<T>(wasmPath: string, width = WIDTH, height = HEIGHT): Promise<T> {
  numBlocks = ((width + 3) >> 2) * ((height + 3) >> 2);

  const compressedByteLength = numBlocks * 16;
  const uncompressedByteLength = width * ((height + 3) >> 2) * 4 * 4;
  const totalByteLength = compressedByteLength + uncompressedByteLength;
  const memory = new WebAssembly.Memory({ initial: ((totalByteLength + 65535) >> 16) + 1 });

  compressedView = new Uint8Array(memory.buffer, 65536, compressedByteLength);
  uncompressedView = new Uint8Array(memory.buffer, 65536 + compressedByteLength, uncompressedByteLength);

  // Generator.
  const generatorModule = new WebAssembly.Module(fs.readFileSync('build/uastc_generator.wasm'));
  generator = new WebAssembly.Instance(generatorModule, { env: { memory: memory } }).exports as unknown as IGenerator;

  // Reference transcoder.
  reference = new ReferenceTranscoder(width, height);
  await reference.init();

  // Source transcoder.
  const module = new WebAssembly.Module(fs.readFileSync(wasmPath));
  return new WebAssembly.Instance(module, {env: { memory: memory }}).exports as unknown as T;
}

test('ASTC4x4', async (t) => {
  const transcoder = await setup<ITranscoder>('build/uastc_astc.wasm');

  for (let m = 0; m < NUM_MODES; m++) {
    generator.generate(m, numBlocks);
    const expected = reference.transcode(compressedView.slice(), reference.TranscodeTarget.ASTC_4x4_RGBA);
    t.equals(transcoder.transcode(numBlocks), 0, `mode ${m}: ok`);
    t.ok(arrayEquals(compressedView, expected), `mode ${m}: data`);
  }

  t.end();
});

test('BC7', async (t) => {
  const transcoder = await setup<ITranscoder>('build/uastc_bc7.wasm');

  for (let m = 0; m < NUM_MODES; m++) {
    generator.generate(m, numBlocks);
    const expected = reference.transcode(compressedView.slice(), reference.TranscodeTarget.BC7_RGBA);
    t.equals(transcoder.transcode(numBlocks), 0, `mode ${m}: ok`);
    t.ok(arrayEquals(compressedView, expected), `mode ${m}: data`);
  }

  t.end();
});

test('RGBA32', async (t) => {
  const decoder = await setup<IDecoder>('build/uastc_rgba32_unorm.wasm');

  for (let m = 0; m < NUM_MODES; m++) {
    generator.generate(m, numBlocks);
    const expected = reference.transcode(compressedView.slice(), reference.TranscodeTarget.RGBA32);
    t.equals(decoder.decodeRGBA32(WIDTH, HEIGHT), 0, `mode ${m}: ok`);
    t.ok(arrayEquals(uncompressedView, expected), `mode ${m}: data`);
  }

  t.end();
});

test('RGBA32 - not a multiple of 4', async (t) => {
  const width = WIDTH - 1;
  const height = HEIGHT - 1;

  const decoder = await setup<IDecoder>('build/uastc_rgba32_unorm.wasm', width, height);

  for (let m = 0; m < NUM_MODES; m++) {
    generator.generate(m, numBlocks);
    const expected = reference.transcode(compressedView.slice(), reference.TranscodeTarget.RGBA32);
    t.equals(decoder.decodeRGBA32(width, height), 0, `mode ${m}: ok`);
    t.ok(arrayEquals(uncompressedView.slice(0, width * height * 4), expected), `mode ${m}: data`);
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