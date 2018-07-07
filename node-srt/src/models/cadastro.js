'use strict'


const mongoose = require('mongoose');
const Schema = mongoose.Schema;

const schema = new Schema({

    nome: {
        type: String,
        required: true
    },

    sobrenome:{
        type: String,
        required: true,

    },

    sexo:{
        type: String,
        required: true

    },

    datanacimento:{
        type: Date,
        require:true
    },

    email:{
        type: String,
        required:true,

    },

   cpf: {
       type: String,
       required:true,
       unique: true
   }, 

   email:{ 
        type: String,
        required: true,
        unique: true
   },


   password:{
        type: String,
        required: true
    },

    roles: [{
        type: String,
        required: true,
        enum: ['user', 'admin'],
        default: 'user'
    }]

})

module.exports = mongoose.model('CadastroU', schema);