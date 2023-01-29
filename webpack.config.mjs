// Generated using webpack-cli https://github.com/webpack/webpack-cli

import path from 'path';
import * as webpack from 'webpack';
import HtmlWebpackPlugin from 'html-webpack-plugin';
import { fileURLToPath } from 'url';
const __filename = fileURLToPath(import.meta.url);

const __dirname = path.dirname(__filename);
const isProduction = process.env.NODE_ENV == 'production';
let plugin = [new HtmlWebpackPlugin({
    template: 'index.html',
})];

const config = {
    entry: ['./index.js'],
    output: {
        path: path.resolve(__dirname, 'dist/webpack'),
        filename: '[name].js'
    },
    optimization: { },
    devServer: {
        open: true,
        host: 'localhost',
    },
    plugins: plugin
};

export default () => {
    if (isProduction) {
        config.mode = 'production';
        
        
    } else {
        config.mode = 'development';
    }
    return config;
};
