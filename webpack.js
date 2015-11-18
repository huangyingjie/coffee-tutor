/*jshint node:true*/
var entry = {};
var path = require('path');
var srcDir = './app/';
require('glob').sync(srcDir + 'src/**/index.coffee').forEach(function (f) {
    var chunkName = path.relative(srcDir, f);
    entry[chunkName.slice(0, chunkName.indexOf(".coffee"))] = [ f ];
});
module.exports = {
    entry: entry,
    devtool: "#inline-source-map",
    resolve: {
        alias: {
            jquery: "jquery/dist/jquery"
        }
    },
    output: {
        path: path.join(__dirname, "./lib/"),
        filename: "[name].bundle.js",
    },
    module: {
        loaders: [
            {
                test: /\.css$/,
                loader: 'style!css'
            }, {
                test: /\.(jpe?g|png|gif|svg)$/i,
                loaders: [
                    'file?hash=sha512&digest=hex&name=[name]-[hash:7].[ext]'
                ]
            }
        ]
    }
};
