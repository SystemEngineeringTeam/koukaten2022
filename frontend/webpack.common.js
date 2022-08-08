const path = require('path');
const { CleanWebpackPlugin } = require('clean-webpack-plugin');
const WebpackWatchedGlobEntries = require('webpack-watched-glob-entries-plugin');
const HtmlWebpackPlugin = require('html-webpack-plugin');

const entries = WebpackWatchedGlobEntries.getEntries([path.resolve(__dirname, './src/js/**/*.js')], {
    ignore: path.resolve(__dirname, './src/js/**/_*.js'),
})();

const htmlGlobPlugins = (entries, srcPath) => (
    Object.keys(entries).map((key) => new HtmlWebpackPlugin({
        inject: 'body',
        filename: `${key}.html`,
        template: `${srcPath}/${key}.html`,
        chunks: [key],
    }))
);

module.exports = () => ({
    entry: entries,
    output: {
        path: path.resolve(__dirname, './dist/'),
        filename: `./js/[name].js`
    },
    module: {
        rules: [
            {
                test: /\.(png|jpe?g|gif|svg)$/i,
                generator: {
                    filename: `./image/[name].[ext]`,
                },
                type: 'asset/resource',
            },
            {
                test: /\.html$/i,
                loader: 'html-loader',
            },
        ]
    },
    plugins: [
        new WebpackWatchedGlobEntries(),
        new CleanWebpackPlugin(),
        ...htmlGlobPlugins(entries, './src')
    ]
});
