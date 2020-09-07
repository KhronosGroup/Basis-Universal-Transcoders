import * as fs from 'fs';
import * as test from 'tape';
import { ReferenceTranscoder } from './reference';

const nModes = 19;
const size: number = Number(process.env.GEN_SIZE) || 256;
const nBlocks = 8 * size * size;
const memory = new WebAssembly.Memory({ initial: ((nBlocks * 16 + 65535) >> 16) + 1 });
const view = new Uint8Array(memory.buffer, 65536, nBlocks * 16);

const generatorModule = new WebAssembly.Module(fs.readFileSync('build/uastc_generator.wasm'));
const generator = new WebAssembly.Instance(generatorModule, { env: { memory: memory } }).exports as unknown as IGenerator;

let reference: ReferenceTranscoder;

async function setup () {
  if (reference) return;
  reference = new ReferenceTranscoder(nBlocks);
  await reference.init();
}

test('ASTC4x4', async (t) => {
  await setup();
  const transcoderModule = new WebAssembly.Module(fs.readFileSync('build/uastc_astc.wasm'));
  const transcoder = new WebAssembly.Instance(transcoderModule, {env: { memory: memory }}).exports as unknown as ITranscoder;

  for (let m = 0; m < nModes; m++) {
    generator.generate(m, nBlocks);

    const expected = reference.transcode(view.slice(), reference.TranscodeTarget.ASTC_4x4_RGBA);

    if (transcoder.transcode(nBlocks)) {
      t.fail(`error transcoding mode ${m}.`);
    }

    t.ok(arrayEquals(view, expected), `mode ${m}`);
  }

  t.end();
});


test('BC7', async (t) => {
  await setup();
  const transcoderModule = new WebAssembly.Module(fs.readFileSync('build/uastc_bc7.wasm'));
  const transcoder = new WebAssembly.Instance(transcoderModule, {env: { memory: memory }}).exports as unknown as ITranscoder;

  for (let m = 0; m < nModes; m++) {
    generator.generate(m, nBlocks);

    const expected = reference.transcode(view.slice(), reference.TranscodeTarget.BC7_RGBA);

    if (transcoder.transcode(nBlocks) !== 0) {
      t.fail(`Error transcoding mode ${m}.`);
    }

    t.ok(arrayEquals(view, expected), `mode ${m}`);
  }

  t.end();
});

interface ITranscoder {
  transcode(nBlocks: number): number;
}

interface IGenerator {
  generate(mode: number, nBlocks: number): number;
}

/** Fast array comparison; t.deepEquals is too slow for large arrays. */
function arrayEquals(a: Uint8Array, b: Uint8Array) {
  if (a.length !== b.length) return false;
  for (let i = 0; i < a.length; i++) {
    if (a[i] !== b[i]) return false;
  }
  return true;
}