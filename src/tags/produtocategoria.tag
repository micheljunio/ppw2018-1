<produtocategoria>
    <style>

		.card-footer {
			display: flex;
			justify-content: center;
			align-items: center;
		}


		.card-img{

			 height: 300px;
 			 width:300px;
		}
	
		.teste{

			height: 500px;
 			width:500px;
		 	float:left;
		
		}

		.card-text {
			display: flex;
			justify-content: center;
			align-items: center;
		}

		.card-title {
			display: flex;
			justify-content: center;
			align-items: center;
		}

		.col-lg-8 {
			display: block;
			margin-left: auto;
			margin-right: auto;

		}

		#x {
			width: 300px;
			height: 230px;
		}

		#y {
			width: 300px;
			height: 230px;
		}

		#z {
			width: 300px;
			height: 230px;
		}


    </style>
     <div class="container produtos">
    	<div class="card text-white bg-secondary my-4 text-center">
        	<div class="card-body">
          		<p class="text-white m-0">BLUSAS</p>
        	</div>
      	</div>
    	<div class="row">
		<ul>
			<li each={ items } class={ completed: done }>
				<div class="row my-4">
          <div class="col-lg-8">
            <img class="img-fluid rounded" src="imgs/b1.jpg" id="oferta">
          </div>
        
          <div class="col-lg-4">
            <h1>OFERTA EXCLUSIVA !!</h1>
            <p>Na compra de 2 produtos da linha Blusas Feminas, Leve um terceiro produto de graça. Aproveite a promoção Pague 2 e leve 3 agora mesmo e garanta a sua !</p>
            <a class="btn btn-primary btn-lg" href="#">COMPRAR</a>
          </div>
          
        </div>
		
        <div class="card text-white bg-secondary my-4 text-center">
          <div class="card-body">
              <h3 class="text-white m-0">MODA</h3>
          </div>
        </div>

       <div class="row">
			<div class="col-md-4 mb-4">
				<div class="card h-100">
					<div class="card-body">
						<h2 class="card-title">Camisa Masculina</h2>
						<div class="col-lg-8">
							<img class="img-fluid rounded" src="imgs/m1.jpg" id="z">
						</div>
						<p class="card-text">$30 ou 3x no Cartão de $12,99</p>
					</div>
					<div class="card-footer">
						<a href="#/formularioCompra" class="btn btn-primary">VER MAIS</a>
					</div>
				</div>
			</div>

			<div class="col-md-4 mb-4">
				<div class="card h-100">
					<div class="card-body">
						<h2 class="card-title">Vestido</h2>
						<div class="col-lg-8">
							<img class="img-fluid rounded" src="imgs/f5.jpg" id="y">
						</div>
						<p class="card-text">$60 ou 4x no Cartão de $17,99</p>
					</div>
					<div class="card-footer">
						<a href="#/formularioCompra" class="btn btn-primary">VER MAIS</a>
					</div>
				</div>
			</div>

			<div class="col-md-4 mb-4">
				<div class="card h-100">
					<div class="card-body">
						<h2 class="card-title">Casaco Masculino</h2>
						<div class="col-lg-8">
							<img class="img-fluid rounded" src="imgs/m4.jpg" id="x">
						</div>
						<p class="card-text">$50 ou 4x no Cartão de $14,99</p>
					</div>
					<div class="card-footer">
						<a href="#/formularioCompra" class="btn btn-primary">VER MAIS</a>
					</div>
				</div>
			</div>

			<div class="row">
			<div class="col-md-4 mb-4">
				<div class="card h-100">
					<div class="card-body">
						<h2 class="card-title">Camisa Masculina</h2>
						<div class="col-lg-8">
							<img class="img-fluid rounded" src="imgs/m1.jpg" id="z">
						</div>
						<p class="card-text">$30 ou 3x no Cartão de $12,99</p>
					</div>
					<div class="card-footer">
						<a href="#/formularioCompra" class="btn btn-primary">VER MAIS</a>
					</div>
				</div>
			</div>

			<div class="col-md-4 mb-4">
				<div class="card h-100">
					<div class="card-body">
						<h2 class="card-title">Vestido</h2>
						<div class="col-lg-8">
							<img class="img-fluid rounded" src="imgs/f5.jpg" id="y">
						</div>
						<p class="card-text">$60 ou 4x no Cartão de $17,99</p>
					</div>
					<div class="card-footer">
						<a href="#/formularioCompra" class="btn btn-primary">VER MAIS</a>
					</div>
				</div>
			</div>

			<div class="col-md-4 mb-4">
				<div class="card h-100">
					<div class="card-body">
						<h2 class="card-title">Casaco Masculino</h2>
						<div class="col-lg-8">
							<img class="img-fluid rounded" src="imgs/m4.jpg" id="x">
						</div>
						<p class="card-text">$50 ou 4x no Cartão de $14,99</p>
					</div>
					<div class="card-footer">
						<a href="#/formularioCompra" class="btn btn-primary">VER MAIS</a>
					</div>
				</div>
			</div>

			<div class="row">
			<div class="col-md-4 mb-4">
				<div class="card h-100">
					<div class="card-body">
						<h2 class="card-title">Camisa Masculina</h2>
						<div class="col-lg-8">
							<img class="img-fluid rounded" src="imgs/m1.jpg" id="z">
						</div>
						<p class="card-text">$30 ou 3x no Cartão de $12,99</p>
					</div>
					<div class="card-footer">
						<a href="#/formularioCompra" class="btn btn-primary">VER MAIS</a>
					</div>
				</div>
			</div>

			<div class="col-md-4 mb-4">
				<div class="card h-100">
					<div class="card-body">
						<h2 class="card-title">Vestido</h2>
						<div class="col-lg-8">
							<img class="img-fluid rounded" src="imgs/f5.jpg" id="y">
						</div>
						<p class="card-text">$60 ou 4x no Cartão de $17,99</p>
					</div>
					<div class="card-footer">
						<a href="#/formularioCompra" class="btn btn-primary">VER MAIS</a>
					</div>
				</div>
			</div>

			<div class="col-md-4 mb-4">
				<div class="card h-100">
					<div class="card-body">
						<h2 class="card-title">Casaco Masculino</h2>
						<div class="col-lg-8">
							<img class="img-fluid rounded" src="imgs/m4.jpg" id="x">
						</div>
						<p class="card-text">$50 ou 4x no Cartão de $14,99</p>
					</div>
					<div class="card-footer">
						<a href="#/formularioCompra" class="btn btn-primary">VER MAIS</a>
					</div>
				</div>
			</div>
			
			</li>
		</ul>
        	
        
        

      	</div>
    </div>
<Tfooter></Tfooter>
    <script>
		this.items = [
			{ title: 'Regata',done:true},
			{ title: 'Cigana' },
			{ title: 'normal' }
		]
    </script>
</produtocategoria>
