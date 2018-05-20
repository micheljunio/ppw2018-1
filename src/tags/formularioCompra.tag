<formularioCompra>

	<style>
		.container{ 
			display: flex;
			flex-direction: row;
			justify-content: center;
			align-items: center
		}

		.conteudo1 {
			width: 38%;
			text-align: center;
			padding: 5vw 5vw 5vw 10vw;
			min-width: 40vw;
			float: left;
		}

		.conteudo2 {
			width: 38%;	
			padding: 5vw 5vw 5vw 10vw;
			min-width: 40vw;
			float: right;
		}

		#a {
			width: 38%;
		}

		#b {
			width: 10%;
		}
		
	</style>


	<div class="jumbotron">

		<div class="container">
			<div>
				<h1>Ótima escolha!</h1>
				<p>Obrigado por comprar no Look DaHora.</p>
			</div>
		</div>

	</div>

	<div class="container">

		<div class="panel panel-default">

			<div class="conteudo1">

				<div class="panel-heading">
					<h2 class="panel-title">Sua compra</h2>
				</div>
				

				<div class="panel-body">

					<img src="img/f5.jpg" class="img-thumbnail img-responsive" width="300px" height="230px">

					<dl>
						<dt>Produto</dt>
						<dd>Vestido</dd>

						<dt>Cor</dt>
						<dd>vermelho</dd>

						<dt>Tamanho</dt>
						<dd>40</dd>

						<dt>Preço</dt>
						<dd>$ 60,00</dd>
					</dl>

				</div>
				
			</div>

			<div class="conteudo2">
				<form>

					<fieldset>
						<legend>Dados Pessoais</legend>

					</fieldset>

					<div class="form-group" id="a">
						<label for="cpf">CPF</label>
						<input type="text" class="form-control" id="cpf" name="cpf">
					</div>

					<div class="form-group" id="a">
						<label for="cpf">CEP</label>
						<input type="text" class="form-control" id="cep" name="cep">
					</div>

					<fieldset>
						<legend>Formas de Pagamento</legend>

					</fieldset>

					<div class="radio">
						<label>
							<input type="radio" name="optradio">Boleto</label>
					</div>

					<div class="radio">
						<label>
							<input type="radio" name="optradio">Cartão de Crédito</label>
					</div>

					<fieldset>
						<legend>Calcular Frete</legend>
					</fieldset>

					<div class="form-group">
						<label for="sel1">Quantidade:</label>
						<select class="form-control" id="b">
							<option id="x">1</option>
							<option id="x">2</option>
							<option id="x">3</option>
							<option id="x">4</option>
							<option id="x">5</option>
						</select>


						<script>
							calcular(){
								var valor1 = parseInt(document.getElementById('x').value, 5);
								var valor2 = 10;
								document.getElementById('result').value = valor1 + valor2;
						}
						</script> 
						<input type="text" class="form-control" id="a" name="result">

					</div>

					<div>
						<button type="submit" class="btn btn-default">Calcular</button>	
					</div>

					<div class="checkbox">

						<label>
							<input type="checkbox"> Concordar com os termos de uso.
						</label>
					</div>

					<div>
						<button type="submit" class="btn btn-primary">
							Confirmar Pedido
						</button>

						<button type="submit" class="btn btn-primary">
							Adicione ao Carrinho
						</button>
					</div>

				</form>
			</div>

	</div>
</formularioCompra>
