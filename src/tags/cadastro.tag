<cadastro>
    <style>
    

    </style>
    <br>
    <br>
    <br>
    <br>
    
    <div class="containe" >
        <div class="row ">
            
            
            <div class = "col-4">
            
            </div>
            <div class ="col-4" style="border-style: solid; border-width: 1px;border-color: #E6E6E6; margin-bottom: 50px">
                    <h2>Cadastro</h2>
            <div class="formcadastro">

                <form class="form-group">
                    <div>
                        <label for="FomrContleNome">Nome</label>
                        <input type="text" class="form-control" id="FomrContleNome" placeholder="Digite seu nome aqui">
                    </div>
                    <div>
                        <label for="FomrContleEmail">Email</label>
                        <input type="email" class="form-control" id="FomrContleEmail" placeholder="name@example.com">
                    </div>
                    <div>
                            <label for="pwd">Password:</label>
                            <input type="password" class="form-control" id="pwd">
                    </div>
                    
                    <div>
                        <label for="FomrContleCpf">Cpf</label>
                        <input type="text" class="form-control" id="FomrContleCpf" placeholder="digite seu cpf" maxlength="11">
                    </div>
                    <div>
                        <label for="FomrContleEndereco">Endereço</label>
                        <input type="text" class="form-control" id="FomrContleEndereco" placeholder="rua 6 conj h casa 10">
                    </div>

                    <div class="form-group">
                        <label for="exampleFormControlSelect1">sexo</label>
                        <input type="text" class="form-control" id="FomrContSexo" placeholder="feminino">
                    </div>
                    <button type="submit" class="bnt btn-primary" onclick={salvarModificacoes}>Salvar cadastro</button>
                    <button type="submit" class="bnt fechar">Fechar</button>
                </form>
            </div>
            </div>
            <div class="col-2">
            </div>
        </div>
    </div>
    <script>

     
       salvarModificacoes (e){
    var axios = require('axios');
       
       axios.post('https://lojaroupa.herokuapp.com/cadastro/registro',{
       "nome":document.getElementById('FomrContleNome').value,
      "email": document.getElementById('FomrContleEmail').value,
      "password":document.getElementById('pwd').value,
      "sexo": document.getElementById('FomrContSexo').value,
      "cpf":document.getElementById('FomrContleCpf').value,
      "endereco":document.getElementById('FomrContleEndereco').value
      
    })
         .then(function(retrsponse){
           alert("Cadastro efetuado");
       });
     
    }
  
    </script>

</cadastro>