const { merge } = require('webpack-merge');
const path = require('path');
const common = require('./webpack.common.js');

module.exports = merge(common(), {
    mode: 'development',
    devtool: 'source-map',
    devServer: {
        static: {
            directory: path.resolve(__dirname, 'dist'),
        },
        open: {
            target: 'ait-map.html'
        },
        liveReload: true,
        watchFiles: ['src/**.html', 'src/css/**.css'],
    },
});
