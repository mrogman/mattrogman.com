//var fs = require('fs');
var React = require('react');
//var path = require('path');
var webpack = require('webpack');

//webpack.config.js
module.exports = {
  entry: './entry.js',
  output: {
    filename: './public/bundle.js'
  },
  devtool: 'source-map',
  module: {
    loaders: [
      { test: /\.coffee$/, loader: 'coffee-loader' },
      { test: /\.scss$/, loaders: ["style", "css", "sass"] },
      { test: /\.css$/, loader: "style-loader!css-loader" },
      { test: /\.jade$/, loader: 'jade' },
      { test: require.resolve("react"), loader: "expose?React" },
    ]
  }
  //devServer: {
    //proxy: {
      //'/some/path*': {
        //target: 'http://localhost:5000',
        //secure: false,
      //},
    //},
  //},
};
