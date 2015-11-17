/*jshint node:true*/
var baseConfig = require('./webpack.config.js');
//指定publicPath
baseConfig.output.publicPath = "/lib/";
//添加jsloader
baseConfig.module.loaders.push({
    test: /\.coffee?$/,
    exclude: /(node_modules|bower_components|lib)/,
    loaders: ['babel', 'coffee']
});
module.exports = baseConfig;
