'use strict'
   
const mongoose = require('mongoose'); 
const Product = mongoose.model('Product');
const ValidationContract = require ('../validators/fluent-validator');

exports.get= (req, res, next) => {
    Product
        .find({
            active:true 
        }, 'title price slug')
        .then(data =>{
            res.status(200).send(data);

        }).catch(e =>{

        res.status(400).send(e);

         });

}

//trazendo os produtos pelo slung 
exports.getBySlug= (req, res, next) => {
    Product
        .findOne({
            slug: req.params.slug,
            active:true 
        }, 'title description price slug tags')
        .then(data =>{
            res.status(200).send(data);

        }).catch(e =>{

        res.status(400).send(e);

         });

}

//trazendo os produtos pelo id 
exports.getById= (req, res, next) => {
    Product
        .findById(req.params.id)
        .then(data =>{
            res.status(200).send(data);

        }).catch(e =>{

        res.status(400).send(e);

         });

}

    //trazendo todos os produtos cuja a tag seja o nome que esta passando no paramentros 
exports.getByTag= (req, res, next) => {
    Product
        .find({
            
            tags: req.params.tag,
            active:true
        }, 'titel description price slug tag')
        .then(data =>{
            res.status(200).send(data);

        }).catch(e =>{

        res.status(400).send(e);

         });

}


exports.post =('/', (req, res, next) => {
    let contract = new ValidationContract();
    contract.hasMinLen(req.body.title, 3, 'o titulo deve conter pelomenos 3 caracteres');
    contract.hasMinLen(req.body.slug, 3, 'o titulo deve conter pelomenos 3 caracteres');
    contract.hasMinLen(req.body.description, 3, 'o titulo deve conter pelomenos 3 caracteres');

    /**
     * se os dados forem invalidos
     *
     */
    if(!contract.isValid()){
        res.status(400).send(contract.errors()).end();
        return;
    }

    var product = new Product(req.body);
    product
        .save()
        .then(x=>{
            res.status(201).send({message:'Produto Cadastrado com sucesso'});

        }).catch(e =>{

            res.status(400).send({message:'Falha ao cadastrar o produto', data: e });

        });
       
});

/**
 * modelo para fazer alteração no banco 
 */

exports.put = ('/:id', (req, res, next) => {
    Product
        .findByIdAndUpdate(req.params.id,{
            $set:{
                title: req.body.title,
                description:req.body.description,
                price: req.body.price
            }
        })
        .then(data =>{
            res.status(200).send({message:'Produto atualizado com sucesso!'});

        }).catch(e =>{

        res.status(400).send({ message:'Falha ao atualizar produto', data:e});

         });
});

/**
 * exemplo para excluir do banco
 */
exports.delete = ('/', (req, res, next) => {
    Product
    .findByIdAndRemove(req.body.id)
    .then(data =>{
        res.status(200).send({message:'Produto removido com sucesso!'});

    }).catch(e =>{

    res.status(400).send({ message:'Falha ao remover produto', data:e});

     });
});