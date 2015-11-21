/*jshint node:true*/
var baseConfig = require('./webpack.config.js');
//指定publicPath
baseConfig.output.publicPath = "/lib/";
//添加jsloader
baseConfig.module.loaders.push({
    test: /\.cjsx/,
    exclude: /(node_modules|bower_components)/,
    loaders: ['coffee', 'cjsx']
});
module.exports = baseConfig;
