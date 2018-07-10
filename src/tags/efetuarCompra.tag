
<efetuarCompra>

	<style>
		.container {
			display: flex;
			flex-direction: row;
			justify-content: center;
			align-items: center;
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

		.descricao {
			width: 100%;
			padding: 5vw 5vw 5vw 10vw;
			min-width: 40vw;
			text-align: center;
			float: left;
		}

		.col-lg-6 {
			width: 25%;
			float: left;

		}

		#a {
			width: 38%;
		}

		#b {
			width: 20%;
		}

		#x {
			width: 50vw;
			height: 30vw;
		}
	</style>

	<div class="container">

		<div class="panel panel-default">

			<div class="conteudo1">

				<div class="card">
					<div class="card-header">
						<h3>Seu Pedido</h3>
					</div>

					<div class="card-body">
						<img class="img-fluid rounded" src="imgs/f5.jpg" id="x">
					</div>
				</div>
			</div>

			<div class="conteudo2">
				<form>

					<fieldset>
						<h3>Formas de Pagamento</h3>
					</fieldset>

					<div class="radio">
						<label>
							<input type="radio" name="optradio">Boleto</label>
					</div>

					<div class="radio">
						<label>
							<input type="radio" name="optradio">Cartão de Crédito</label>
					</div>
					<dl>
						<dt>Calcular Frete</dt>
					</dl>

					<div class="form-group" id="a">
						<label for="cpf">CEP</label>
						<input type="text" class="form-control" id="cep" name="cep" placeholder="Digite seu CEP">
					</div>

					<div class="col-lg-6">
						<button type="submit" class="btn btn-default">Calcular</button>
					</div>

					<div class="col-lg-6">
						<input type="text" class="form-control" name="result" placeholder="$$$">
					</div>

					<div class="checkbox">

						<label>
							<input type="checkbox"> Concordar com os termos de uso.
						</label>
					</div>

					<div class="form-check">
						<label class="form-check-label">
							<input type="radio" class="form-check-input" name="optradio">Opção de envio Padrão
						</label>
					</div>

					<div class="form-check">
						<label class="form-check-label">
							<input type="radio" class="form-check-input" name="optradio">Opção de envio Express
						</label>
					</div>

					<div>
						<button type="submit" class="btn btn-primary" id="box">
							Confirmar Compra
						</button>
					</div>

				</form>
			</div>

			<div class="descricao">
				<div class="card">
					<div class="card-header">
						<h3>Descrição</h3>
					</div>

					<div class="card-body">
						<p>Vestido vermelho elegante, com babados graciosos na barra que envolvem as pernas levemente, formando uma linda silhueta.
							Com mangas, o vestido tem detalhes floridos na frente.</p>
					</div>
				</div>
			</div>

</efetuarCompra>