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


    <div id="accordion" each="{ped in pedidos}">

      <div class="card" >
        <div class="card-header" id="carde">
          <div class="collapsed card-link" data-toggle="collapse">
            <div class="row">
              <div class="col-sm-3">
                <span>Pedido:
                  <strong>{ped.pedido}</strong>
                </span>
              </div>
              <div class="col-sm-3">
                <span>Valor:
                  <strong>{ped.valor}</strong>
                </span>
              </div>
            </div>
          </div>
        </div>
        <div id= {city.id} class="collapse" data-parent="#accordion">
          <div class="card-body">


            <div class="row" style="border: solid">
              <div class="col-8" style="border: solid">
                <figure>
                  <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0auk6ezfAeLFcBb5SLrjpuAs715_xY41yqJV0TMilznl1QwJBgA" alt = "Sem imagen">
                </figure>
              </div>
              <div class="col-8" style="border: solid">
                  <ul class="list-group" >
                      <li class="list-group"><span class = "TextoLista">   {ped.nomeRoupa}</span></li>
                      <li class="list-group"><span class = "TextoLista">   {ped.tamanhodaRoupa}</span></li>
                      <li class="list-group"><span class = "TextoLista">  [{ped.quantidade}] </span></li>
                      <li class="list-group"><span class = "TextoLista">   {ped.situacao}</span></li>
              
                    </ul> 
              </div>

              <div class="col-8">
                  <ul class="list-group">
                      <li class="list-group" ><span class = "TextoLista">{ped.nomeCliente}</span></li>
                      <li class="list-group"><span class = "TextoLista">{ped.Endereço}</span>
                      </li>
                      <li class="list-group"><span class = "TextoLista">{ped.freteValor}</span></li>
                      <li class="list-group"><span class = "TextoLista">{ped.formaPagamento}</span></li>

                    </ul> 
              </div>

            </div>
          </div>

          </div>
        </div>
      </div>
      

     
  <script> 
    this.cities = [
    { pedido : "123214124" , valor:"34",id:"a",nomeRoupa:"vestido",tamanhodaRoupa:"M",quantidade:"12",
    situacao :"ola",nomeCliente:"marisleide",Endereço:"rua do nuna numero nao sei ava" }
 ];
  
  
  </script>
            
   
  </body>

</ListarPedidos>