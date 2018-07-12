<navbar>
    <style>
    </style>
    <nav id="nav-bar" class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
      <div class="container">

        <a class="navbar-brand" href="index.html">
          <img class="logo" src="logo.png">
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                                                                      
          <form class="form-inline">
            <input class="form-control" type="text" placeholder="Buscar">
            <button class="btn  my-2 my-sm-0 " type="submit">Pesquisar</button>
          </form>
        </div>
        <div class="ml-auto ml-5">
          <ul class="navbar-nav">
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true"
                aria-expanded="false">
                Feminina
              </a>
              <ul class="megamenu dropdown-menu">
                <li>
                  <div class="row container-fluid">
                    <div class="col-md-6">
                      <h3>Feminina</h3>
                      <ul>
                        <div>
                          <li>
                            <a href="#/produtocategoria"> Vestidos</a>
                          </li>
                          <li>
                            <a href="#/produtocategoria"> Saias</a>
                          </li>
                          <li>
                            <a href="#/produtocategoria">Calças</a>
                          </li>
                          <li>
                            <a href="#/produtocategoria">Blusas</a>
                          </li>
                          <li>
                            <a href="#/produtocategoria"> Acessórios</a>
                          </li>
                        </div>
                      </ul>
                    </div>
                    <div class="col-md-6">
                      <a href="#">
                        <img src="">
                      </a>
                    </div>
                  </div>
                </li>
              </ul>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true"
                aria-expanded="false">
                Masculina
              </a>
              <ul class="megamenu dropdown-menu">
                <li>
                  <div class="row container-fluid">
                    <div class="col-md-6">
                      <h3>Masculina</h3>
                      <ul>
                        <div>
                          <li>
                            <a href="#/produtocategoria">Camisetas</a>
                          </li>
                          <li>
                            <a href="#/produtocategoria">Bermudas</a>
                          </li>
                          <li>
                            <a href="#/produtocategoria">Calças</a>
                          </li>
                          <li>
                            <a href="#/produtocategoria">Camisas</a>
                          </li>
                          <li>
                            <a href="#/produtocategoria"> Acessórios</a>
                          </li>
                        </div>
                      </ul>
                    </div>
                    <div class="col-md-6">
                      <a href="#">
                        <img src="">
                      </a>
                    </div>
                  </div>
                </li>
              </ul>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true"
                aria-expanded="false">
                Infantil
              </a>
              <ul class="megamenu dropdown-menu">
                <li>
                  <div class="row container-fluid">
                    <div class="col-md-6">
                      <h3>Infantil</h3>
                      <ul>
                        <div>
                          <li>
                            <a href="#/produtocategoria">Recém-nascido</a>
                          </li>
                          <li>
                            <a href="#/produtocategoria">Menina</a>
                          </li>
                          <li>
                            <a href="#/produtocategoria">Menino</a>
                          </li>
                          <li>
                            <a href="#/produtocategoria"> Acessórios</a>
                          </li>
                        </div>
                      </ul>
                    </div>
                    <div class="col-md-6">
                      <a href="#">
                        <img src="">
                      </a>
                    </div>
                  </div>
                </li>
              </ul>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true"
                aria-expanded="false">
                Login
              </a>
              <ul class="megamenu dropdown-menu">
                <li>
                  <div class="row container-fluid">
                    <div>
                      <ul>
                        <div>
                          <form class="form-inline">
                            <input class="form-control" type="Email" placeholder="Email">
                            <input class="form-control" type="password" placeholder="Senha">
                            <button class="btn  my-2 my-sm-0 " type="submit">Entrar</button>
                          </form>
                          <a data-toggle="modal" data-target="#exampleModal">Cadastrar-se</a>
                        </div>
                      </ul>
                    </div>
                  </div>
                </li>
              </ul>
            </li>

            <li class="nav-item">
              <a class="nav-link">Atendimento</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#/pedidos">Pedidos</a>
            </li>
          </ul>
        </div>
        <!-- /ml-auto -->
      </div>
      <!-- /collapse -->
    </div>
    <!-- /container -->
  </nav>

  <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Quero Me Cadastrar</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>

        <div class="modal-body">
          <div class="form-group">
            <label for="formGroupNome">Nome</label>
            <input type="text" value={this.dadosModal.nome} class="form-control" placeholder="digite seu nome ">
          </div>
          <div class="form-group">
            <label for="formGroupNome">E-mail</label>
            <input type="text" value={this.dadosModal.email} class="form-control"  placeholder="digite seu nome ">
          </div>
          <div class="form-group">
            <label for="formGroupSexo">Sexo</label>
            <select class="form-control " value={this.dadosModal.sexo} id="FormSexo">
              <option>Selecione</option>
              <option>Masculino</option>
              <option>Feminino</option>

            </select>
          </div>

          <div class="form-group">
            <label for="formGroupNome">CPF</label>
            <input type="text" value={this.dadosModal.cpf} class="form-control" placeholder="digite seu CPF" maxlength="11">
          </div>

          <div class="form-group">
            <label for="formGroupNome">Data de nascimento </label>
            <input type="date" value={this.dadosModal.dtn} class="form-control">
          </div>

          <div class="form-group">
              <label for="formGroupNome">Senha </label>
              <input type="text" value={this.dadosModal.senha} class="form-control" placeholder="digite sua Senha">
            </div>

        </div>
      </div>
    </div>


    <script>
   this.mixin('state')
   this.mixin('reduxGlobal')
   this.mixin('subscribeStateTag')
   this.subscribeStateTag(this);
 
   this.dadosModal = {};
 
   atualizarRow (e) {
     console.log(e.item);
     this.dadosModal = e.item.item;
     $('#GSCCModal').modal('show');
 
   }
 
   adicionarPessoa () {
     $('#GSCCModal #nome').val(''),
     $('#GSCCModal #sobrenome').val(''),
     $('#GSCCModal #email').val('')
     $("#deletarPessoa").hide();
     $('#GSCCModal').modal('show');
   }
 
   
 
     if(dados.nome == '' || dados.sobrenome == '' || dados.email == ''){
       console.log("aqui");
       $('#valida').text("Nenhum campo pode estar vazio");
     }
     else{
       $('#valida').text("");
       if(this.dadosModal._id != undefined){
         this.dispatch(
           {type:'UPDATE_PESSOA', payload: dados}
         );
       }
       else{
         this.dispatch(
           {type:'ADICIONAR_PESSOA', payload: dados}
         );
       }
     }
   }
    </script>



</navbar>