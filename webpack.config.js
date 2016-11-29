const webpack = require('webpack');
const path = require('path');

const PATHS = {
  src: path.join(__dirname, './src/entry.js'),
  public: path.join(__dirname, 'public')
}

module.exports = {
  entry: './src/entry.js',
  output: {
    path: path.join(__dirname, 'public'),
    filename: 'bundle.js'
  },
  module: {
    preLoaders: [
      {
        test: /\.jsx$/,
        exclude: /node_modules/,
        loader: 'eslint-loader'
      }
    ],
    loaders: [
      {
        exclude: /node_modules/,
        loaders: ['babel-loader']
      }
    ]
  },
  resolve: {
    extensions: ['', '.js', '.jsx']
  },
  eslint: {
    configFile: './.eslintrc'
  },
};
