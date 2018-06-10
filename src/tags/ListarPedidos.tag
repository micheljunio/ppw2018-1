<ListarPedidos>

  <style>
    #carde:hover {
      background: #E6E6E6;
      cursor: pointer;
    }


    .TextoLista{
      font-size: 17px;
      line-height: 30px;


    }

    ul{
      border-width:thin;
      border-style:solid;
      border-color: #BDBDBD;
      background-color: #D8D8D8;

    }
    span{
      margin: 3%;
      
    }

   
  </style>


  <body>
    <h1>Pedidos</h1>

    <div each="{city in cities}">

    <div id="accordion" >

      <div class="card" >
        <div class="card-header" id="carde">
          <div class="collapsed card-link" data-toggle="collapse" href= { "#" + city.id }>
            <div class="row">
              <div class="col-sm-3">
                <span>Pedido:
                  <strong>{city.pedido}</strong>
                </span>
              </div>
              <div class="col-sm-3">
                <span>Valor:
                  <strong>{city.valor}</strong>
                </span>
              </div>
            </div>
          </div>
        </div>
        <div id= {city.id} class="collapse" data-parent="#accordion">
          <div class="card-body">


            <div class="row -8" style="border: solid">
              <div class="col-8" style="border: solid">
                <figure>
                  <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0auk6ezfAeLFcBb5SLrjpuAs715_xY41yqJV0TMilznl1QwJBgA" alt = "Sem imagen">
                </figure>
              </div>
              <div class="col-8" style="border: solid">
                  <ul class="list-group" >
                      <li class="list-group"><span class = "TextoLista"> Vestido de Noiva</span></li>
                      <li class="list-group"><span class = "TextoLista"> M</span></li>
                      <li class="list-group"><span class = "TextoLista"> Unidades [1] </span></li>
                      <li class="list-group"><span class = "TextoLista"> Entregue</span></li>
              
                    </ul> 
              </div>

              <div class="col-8">
                  <ul class="list-group">
                      <li class="list-group" ><span class = "TextoLista">Caroline</span></li>
                      <li class="list-group"><span class = "TextoLista">Rua: 4 Bairro: Pousada 2 N: 325</span>
                      </li>
                      <li class="list-group"><span class = "TextoLista">Frete [20,00]</span></li>
                      <li class="list-group"><span class = "TextoLista">Boleto-Bancario</span></li>

                    </ul> 
              </div>

            </div>
          </div>

          </div>
        </div>
      </div>
      </div>

     
  <script> 
    this.cities = [
	  { pedido : "123214124" , valor:"34",id:"a" }
 ];
  
  </script>
            
   
  </body>

</ListarPedidos>