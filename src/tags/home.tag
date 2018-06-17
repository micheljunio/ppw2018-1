<home>
    <style>
        marquee {
            color: red;
            font-size: 50px;
        }
    </style>

    <H1>{opts.valor}</H1>

    <marquee>{opts.valor}</marquee>
  <button type="button" onclick={adicionarPessoa} class="btn btn-default" data-dismiss="modal">Adicionar Nova Pessoa</button>
  <br/>
  <br/>
  <table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">id_node</th>
      <th scope="col"> Nome</th>
      <th scope="col">Sobrenome</th>
      <th scope="col">Email</th>
    </tr>
  </thead>
  <tbody>
    <tr each='{item in this.state.homeReducer.dados}' onclick={atualizarRow} data-href='{item._id}'>
      <th>{item._id}</th>
      <td>{item.nome}</td>
      <td>{item.sobrenome}</td>
      <td>{item.email}</td>
    </tr>
  </tbody>
</table>

<div id="GSCCModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
 <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title" id="myModalLabel">Atualização de Dados</h4>
      </div>
      <div class="modal-body">
          <p>Nome:</p> 
          <input type="text" value={this.dadosModal.nome} name="nome" id="nome" size="35">
          </br></br>
          <p>Sobrenome:</p>
          <input type="text" value={this.dadosModal.sobrenome} name="sobrenome" id="sobrenome" size="35">
          </br></br>
          <p>Email:</p>
          <input type="email" value={this.dadosModal.email} name="email" id="email" size="35">
      </div>
      <div class="modal-footer">
        <p id='valida'> </p>
        <p if='{this.state.homeReducer.updateSpinner}'> Atualizando dados... </p>
        <button id='deletarPessoa' type="button" class="btn btn-danger" onclick={deletarPessoa}>Deletar</button>
        <button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>
        <button type="button" onclick={salvarModificacoes} class="btn btn-primary">Salvar</button>
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
    $("#deletarPessoa").show();
    $('#GSCCModal').modal('show');
  }

  adicionarPessoa () {
    $('#GSCCModal #nome').val(''),
    $('#GSCCModal #sobrenome').val(''),
    $('#GSCCModal #email').val('')
    $("#deletarPessoa").hide();
    $('#GSCCModal').modal('show');
  }

  deletarPessoa () {
    this.dispatch(
          {type:'DELETAR_PESSOA', payload: {_id: this.dadosModal._id}}
    );
    $('#GSCCModal').modal('hide');
  }

  salvarModificacoes (e){
    let dados = {
      _id: this.dadosModal._id,
      nome: $('#GSCCModal #nome').val().trim(),
      sobrenome: $('#GSCCModal #sobrenome').val().trim(),
      email: $('#GSCCModal #email').val().trim()
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

</home>