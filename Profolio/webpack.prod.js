// import modules and plugins
const path = require('path');
const webpack = require('webpack');
const htmlWebpackPlugin = require('html-webpack-plugin');

// 
module.exports = {
  entry: "./src/index.js",
  mode: "production",
  module: {
    rules: [
      {
        test: '/\.js$/',
        exclude: /node_module/,
        loader: "babel-loader"
      }
    ]
  },
  plugins: [
    new htmlWebpackPlugin({
      template: "./src/views/index.html",
      filename: "./index.html",
    }),
  ]
}