// import terser from '@rollup/plugin-terser';
import html from '@rollup/plugin-html';
export default {
    input: './index.js',
    output: [
        { dir : './dist/rollup'
        }
    ],
    plugins: [html()]
  };