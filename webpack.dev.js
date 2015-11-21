/*jshint node:true*/
var baseConfig = require('./webpack.config.js');
console.log("baseConfig:", baseConfig);
//指定publicPath
baseConfig.output.publicPath = 'http://localhost:4000/lib/';
//开发的时候访问4000端口，完全代理端口8081
baseConfig.devServer = {
    proxy: {
        "*": "http://localhost:8081"
    }
};
//添加jsloader
baseConfig.module.loaders.push({
    test: /\.cjsx/,
    exclude: /(node_modules|bower_components)/,
    loaders: ['react-hot', 'coffee', 'cjsx']
});
//添加plugin
var webpack = require("webpack");
baseConfig.plugins = baseConfig.plugins || [];
baseConfig.plugins.push(new webpack.NoErrorsPlugin());
module.exports = baseConfig;
