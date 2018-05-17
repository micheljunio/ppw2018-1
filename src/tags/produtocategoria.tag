<produtocategoria>
    <style>
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
				<div class="col-md-4 mb-4">
					<div class="card h-100">
						<div class="card-body">
							<h2 class="card-title">Blusa Cigana</h2>
							<div class="col-lg-8">
								<img class="img-fluid rounded z" src="c.jpg" >
							</div>
							<p class="card-text">Elastano, diversas cores e tamanhos</p>
							<p class="card-text">$30 ou 3x no Cartão de $12,99</p>
						</div>
						<div class="card-footer">
							<a href="#" class="btn btn-sucess">COMPRAR</a>
						</div>
					</div>
				</div>
			</li>
		</ul>
        	
        
        

      	</div>
    </div>

    <script>
		this.items = [
			{ title: 'Regata',done:true},
			{ title: 'Cigana' },
			{ title: 'normal' }
		]
    </script>
</produtocategoria>
