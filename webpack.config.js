const path = require('path');
const HtmlWebpackPlugin = require("html-webpack-plugin")
const webpack = require('webpack')

module.exports = {
    mode: 'development',
    entry: './src/index.js',
    output: {
        path: path.resolve(__dirname, 'dist'),
        filename: 'bundle.js'
    },
    module: {
        rules: [
            {
                test: /\.js$/,
                use: "babel-loader"
            }
        ]
    },
    plugins: [
        new HtmlWebpackPlugin({
            template: './src/index.html'
        }),
        new webpack.ProvidePlugin({
            riot: 'riot',
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
            call: ["redux-saga/effects", "call"]
        }),
    ]

};