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
      $: "jquery",
      jQuery: "jquery"
    }),
    new CopyWebpackPlugin([{ from: "src/imgs", to: "imgs" }]),
    new CopyWebpackPlugin([{ from: "src/fonts", to: "fonts" }]),
    new ExtractTextPlugin({
      filename: "css/[name].css",
      disable: false,
      allChunks: true
    }),
    new CleanWebpackPlugin(["dist"])
  ]
};
