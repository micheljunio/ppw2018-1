<app>
    <style>
    </style>
 
   
    <navbar></navbar>
    <home if='{state.exibicaoReducer.home}'></home>
    <login if='{state.exibicaoReducer.login}'></login>
   <cadastro if='{state.exibicaoReducer.cadastro}'></cadastro>
    <pedidos if ='{state.exibicaoReducer.pedidos}'></pedidos>
    <ListarPedidos if ='{state.exibicaoReducer.ListarPedidos}'></ListarPedidos>
    <produtocategoria if ='{state.exibicaoReducer.produtocategoria}'></produtocategoria>
    <formularioCompra if ='{state.exibicaoReducer.formularioCompra}'></formularioCompra>
    <efetuarCompra if ='{state.exibicaoReducer.efetuarCompra}'></efetuarCompra>
  
    <script>
        this.mixin('state')
        this.mixin('reduxGlobal')
        this.mixin('subscribeStateTag')
        this.subscribeStateTag(this)
    </script>
</app>