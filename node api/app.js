var express = require('express'),
	mongoose = require('mongoose'),
	bodyParser = require('body-parser'),
	app = express(),
	Cadastro = require('./models/Cadastro');

//Conexão com mongoDB
mongoose.connect('mongodb://localhost/api', function(err){
	if(err){
		console.log('Erro de conexão ao Banco');
	}
});
app.use(bodyParser());

var port =process.env.PORT || 3000;

//ROTAS

var router= express.Router();

router.get('/', function(req, res){
	res.json({message: 'API lookDaHora'});
});

router.route('./Cadastro')
	.get(function(req,res){
		cadastros.find(function(err, dados){
			if(err){
				res.send(err);
			}
			res.json(dados);
		})
	})
	.post(function(req, res){
		var cadastros = new cadastros();
		cadastros.nome= req.body.nome;
		cadastros.cpf= req.body.cpf;
		cadastros.rg= req.body.rg;
		cadastros.email= req.body.email;

		cadastros.save(function(err){
			if(err){
				res.send(err);
			}
			res.jason({message:"Usuário cadastrado com sucesso"});
		});
	});
	
router.route('/cadastros/:id')
	.get(function(req,res){
		cadastros.findById(req.params.id, function(err, dados){
			if(err){
				res.send(err);
			}
			res.json(dados);
		});
	})
	.put(function(req, res){
		cadastros.findById(req.params.id, function(err, dados){
			if(err){
				res.send(err);
			}
			dados.name=req.body.nome;
			dados.save(function(err){
				if (err) {
					res.send(err);
				}
				res.json({message:'Usuário atualizado com sucesso!'});
			});
		});
	})
app.use('/api', router);

app.listen(port, function(){
	console.log('Servidor rodando na porta:'+port);
});
