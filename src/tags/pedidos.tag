<pedidos>
 

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



    <h1> pedidos</h1>


    <div id="accordion" >

            <div class="card"each="{ped in pedidos}" >
              <div class="card-header" id="carde" data-toggle="collapse" data-target= {ped.id} aria-expanded="true">
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
              <div id= {ped.pedido} class="collapse" data-parent="#accordion">
                <div class="card-body">
      
      
                  <div class="row" style="border-style: solid; border-width: 4px;border-color: #E6E6E6;">
                    <div class="col-2">
                      <figure >
                        <img style="border-style: solid; border-width: 4px;border-color: #E6E6E6; margin-top: 10px" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0auk6ezfAeLFcBb5SLrjpuAs715_xY41yqJV0TMilznl1QwJBgA" alt = "Sem imagen">
                      </figure>
                    </div>
                    <div class="col-4">
                        <ul class="list-group" style="border-style: solid; border-width: 4px;border-color: #E6E6E6;margin-top: 10px" >
                            <li class="list-group"><span class = "TextoLista">{ped.nomeRoupa}</span></li>
                            <li class="list-group"><span class = "TextoLista">{ped.tamanhodaRoupa}</span></li>
                            <li class="list-group"><span class = "TextoLista">[{ped.quantidade}] </span></li>
                            <li class="list-group"><span class = "TextoLista">{ped.situacao}</span></li>
                            <li class="list-group" ><span class = "TextoLista">{ped.nomeCliente}</span></li>
                            <li class="list-group"><span class = "TextoLista">{ped.endereco}</span></li>
                          </ul> 
                    </div>
      
                   
      
                  </div>
                </div>
      
                </div>
              </div>
            </div>
            
    <script> 
            this.pedidos = [
            { pedido : "123214124" , valor:"34",id:"#123214124",nomeRoupa:"vestido",tamanhodaRoupa:"M",quantidade:"12",
            situacao :"ola",nomeCliente:"marisleide",endereco:"rua do nuna numero nao sei ava" },{ pedido : "1232141245" , valor:"34",id:"#1232141245",nomeRoupa:"vestido",tamanhodaRoupa:"M",quantidade:"12",
            situacao :"horrivel",nomeCliente:"marisleide",endereco:"rua do nuna numero nao sei ava" }
         ];
          
          </script>
                    
    

</pedidos>