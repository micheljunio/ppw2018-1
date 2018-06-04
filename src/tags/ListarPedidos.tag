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


    <div id="accordion">

      <div class="card">
        <div class="card-header" id="carde">
          <div class="collapsed card-link" data-toggle="collapse" href="#collapseOne">
            <div class="row">
              <div class="col-sm-2">
                <span>Pedido:
                  <strong>03-496686829</strong>
                </span>
              </div>
              <div class="col-sm-2">
                <span>Valor:
                  <strong>4,50$</strong>
                </span>
              </div>
            </div>
          </div>
        </div>
        <div id="collapseOne" class="collapse" data-parent="#accordion">
          <div class="card-body">


            <div class="row content">
              <div class="col-sm-2 sidenav hidden-xs">
                <figure>
                  <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0auk6ezfAeLFcBb5SLrjpuAs715_xY41yqJV0TMilznl1QwJBgA" alt = "Sem imagen">
                </figure>
              </div>
              <div class="row"></div>
              <div class="col-sm-4">
                  <ul class="list-group" >
                      <li class="list-group"><span class = "TextoLista"> Vestido de Noiva</span></li>
                      <li class="list-group"><span class = "TextoLista"> M</span></li>
                      <li class="list-group"><span class = "TextoLista"> Unidades [1] </span></li>
                      <li class="list-group"><span class = "TextoLista"> Entregue</span></li>
              
                    </ul> 
              </div>

              <div class="col-sm-4">
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


      <div class="card">
          <div class="card-header" id="carde">
            <div class="collapsed card-link" data-toggle="collapse" href="#collapsetwo">
              <div class="row">
                <div class="col-sm-2">
                  <span>Pedido:
                    <strong>03-999999999</strong>
                  </span>
                </div>
                <div class="col-sm-2">
                  <span>Valor:
                    <strong>9,50$</strong>
                  </span>
                </div>
              </div>
            </div>
          </div>
          <div id="collapsetwo" class="collapse" data-parent="#accordion">
            <div class="card-body">
  
  
              <div class="row content">
                <div class="col-sm-2 sidenav hidden-xs">
                  <figure>
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0auk6ezfAeLFcBb5SLrjpuAs715_xY41yqJV0TMilznl1QwJBgA" alt = "Sem imagen">
                  </figure>
                </div>
                <div class="row"></div>
                <div class="col-sm-4">
                    <ul class="list-group" >
                        <li class="list-group"><span class = "TextoLista"> Vestido de Noiva2</span></li>
                        <li class="list-group"><span class = "TextoLista"> M</span></li>
                        <li class="list-group"><span class = "TextoLista"> Unidades [1] </span></li>
                        <li class="list-group"><span class = "TextoLista"> Entregue</span></li>
                
                      </ul> 
                </div>
  
                <div class="col-sm-4">
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
   
  </body>

</ListarPedidos>