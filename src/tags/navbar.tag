<navbar>
    <style>
    </style>

    <nav id="nav-bar" class="navbar navbar-expand-md navbar-light fixed-top">
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

          <div class="ml-auto">
            <ul class="navbar-nav">
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                 Feminina
                </a>
                <ul class="megamenu dropdown-menu">
                  <li>
                    <div class="row container-fluid">
                      <div class="col-md-6">
                        <h3>Feminina</h3>
                        <ul>                                    
                          <div>
                            <li><a href="#/produtocategoria"> Vestidos</a></li>
                            <li><a href="#/produtocategoria"> Saias</a></li>
                            <li><a href="#/produtocategoria">Calças</a></li>
                            <li><a href="#/produtocategoria">Blusas</a></li>
                            <li><a href="#/produtocategoria"> Acessórios</a></li>
                          </div>
                        </ul>
                      </div>
                      <div class="col-md-6">
                        <a href="#"> <img src="r.jpg" ></a>    
                      </div> 
                    </div>
                  </li>
                </ul>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  Masculina
                </a>
                <ul class="megamenu dropdown-menu">
                  <li>
                    <div class="row container-fluid">
                      <div  class="col-md-6">
                          <h3>Masculina</h3>
                        <ul>             
                          <div>
                            <li><a href="#/produtocategoria">Camisetas</a></li>
                            <li><a href="#/produtocategoria">Bermudas</a></li>
                            <li><a href="#/produtocategoria">Calças</a></li>
                            <li><a href="#/produtocategoria">Camisas</a></li>
                            <li><a href="#/produtocategoria"> Acessórios</a></li>
                          </div>
                        </ul>
                      </div>
                      <div class="col-md-6">
                        <a href="#"> <img src="m.jpeg" ></a>
                      </div>
                    </div>
                  </li>
                </ul>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  Infantil
                </a>
                <ul class="megamenu dropdown-menu">
                  <li>
                    <div class="row container-fluid">
                      <div  class="col-md-6">
                        <h3>Infantil</h3>
                        <ul>              
                          <div>
                            <li><a href="#/produtocategoria">Recém-nascido</a></li>
                            <li><a href="#/produtocategoria">Menina</a></li>
                            <li><a href="#/produtocategoria">Menino</a></li>
                            <li><a href="#/produtocategoria"> Acessórios</a></li>
                          </div>
                        </ul>
                      </div>
                      <div class="col-md-6">
                        <a href="#"> <img src="i.jpg" ></a>
                      </div>
                    </div>
                  </li>
                </ul>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
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
                              <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Senha">
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
                <a class="nav-link" href="#/ListarPedidos">Pedidos</a>
              </li>                                                             
            </ul>
          </div><!-- /ml-auto -->
      </div><!-- /collapse -->
    </div><!-- /container -->
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
                <input type="text" class="form-control" id="formGroupNome" placeholder="digite o primeiro nome">
            </div>

            <div class="form-group">
              <label for="formGroupSobreNome">Sobre Nome</label>
              <input type="text" class="form-control" id="formGroupSobreNome" placeholder="digite o Sobre Nome ">
            </div>

            <div class="form-group">
              <label for="formGroupEmail">E-mail</label>
              <input type="email" class="form-control" id="formGroupEmail" placeholder="digite o E-mail " aria-describedby="emailHelp">
              <small id="emailHelp" class="form-text text-muted" >Nós nunca vamos compartilhar seu e-mail com mais ninguém.</small>
            </div>

                                                                  
            <div class="form-group">
              <label for="formGroupSexo">Sexo</label>
              <select class="form-control " id="formGroupSexo">
                <option>Selecione</option>
                <option>Masculino</option>
                <option>Feminino</option>
                                                                      
              </select>
            </div>    

            <div class="form-group">
              <label for="formGroupCpf">CPF</label>
              <input type="text" class="form-control" id="formGroupCpf" placeholder="digite o Cpf " maxlength="11">
            </div>

            <div class="form-group">
              <label for="formGrouDataN">Nascimento</label>
              <input type="date" class="form-control" id="formGrouDataN" placeholder="Data de Nacimento " maxlength="11">
            </div>

            <div class="form-group">
              <label for="formGrouSenha">Senha</label>
              <input type="password" class="form-control" id="formGrouSenha" placeholder="Digite sua senha " maxlength="11">
            </div>

            <div class="form-group">
              <label for="formGrouRpSenha">Repetir Senha</label>
              <input type="password" class="form-control" id="formGrouRpSenha" placeholder="Digite sua senha novamente " maxlength="11">
            </div>

            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-dismiss="modal">fechar</button>
              <button type="submit" class="btn btn-primary">Cadastrar</button>
            </div>
          </div>
        </div>
      </div>
    </div>

    
  <script>
  </script>
</navbar>


                            