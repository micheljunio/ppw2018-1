const path = require("path");
const HtmlWebpackPlugin = require("html-webpack-plugin");
const webpack = require("webpack");
const CopyWebpackPlugin = require("copy-webpack-plugin");
const ExtractTextPlugin = require("extract-text-webpack-plugin");
const CleanWebpackPlugin = require("clean-webpack-plugin");
const precss = require("precss");
const autoprefixer = require("autoprefixer");

module.exports = {
  entry: [
    "babel-polyfill",
    "font-awesome/scss/font-awesome.scss",
    "bootstrap",
    "./src/index.js"
  ],
  output: {
    path: path.resolve(__dirname, "dist"),
    filename: "bundle.js"
  },
  module: {
    rules: [
      {
        test: /\.js$/,
        use: "babel-loader"
      },
      {
        test: /\.css$/,
        use: ["style-loader", "css-loader", "postcss-loader"]
      },
      {
        test: /\.(eot|otf|ttf)$/,
        loader: "file-loader"
      },
      {
        test: /\.(woff2?|svg)$/,
        loader: "url-loader"
      },
      // font-awesome
      {
        test: /font-awesome\.config\.js/,
        use: [{ loader: "style-loader" }, { loader: "font-awesome-loader" }]
      },
      {
        test: /\.(scss)$/,
        use: ExtractTextPlugin.extract({
          fallback: "style-loader",
          use: [
            {
              loader: "css-loader" // translates CSS into CommonJS modules
            },
            {
              loader: "postcss-loader", // Run post css actions
              options: {
                plugins() {
                  // post css plugins, can be exported to postcss.config.js
                  return [precss, autoprefixer];
                }
              }
            },
            {
              loader: "sass-loader" // compiles SASS to CSS
            }
          ]
        })
      }
    ]
  },
  plugins: [
    new HtmlWebpackPlugin({
      template: "src/index.html",
      hash: true
    }),
    new webpack.ProvidePlugin({
      riot: "riot",
      route: ["riot-route", "default"],
      createStore: ["redux", "createStore"],
      applyMiddleware: ["redux", "applyMiddleware"],
      combineReducers: ["redux", "combineReducers"],
      createSagaMiddleware: ["redux-saga", "default"],
      delay: ["redux-saga", "delay"],
      put: ["redux-saga/effects", "put"],
      takeEvery: ["redux-saga/effects", "takeEvery"],
      takeLatest: ["redux-saga/effects", "takeLatest"],
      take: ["redux-saga/effects", "take"],
      fork: ["redux-saga/effects", "fork"],
      all: ["redux-saga/effects", "all"],
      call: ["redux-saga/effects", "call"],
      $: "jquery",
      axios: "axios",
      jQuery: "jquery"
    }),
    new CopyWebpackPlugin([{ from: "src/imgs", to: "imgs" }]),
    //new CopyWebpackPlugin([{ from: "src/fonts", to: "fonts" }]),
    new ExtractTextPlugin({
      filename: "css/[name].css",
      disable: false,
      allChunks: true
    }),
    new CleanWebpackPlugin(["dist"])
  ]
};
