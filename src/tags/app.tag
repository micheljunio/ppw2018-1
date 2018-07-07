<app>
    <style>
    </style>
 
   
  <navbar></navbar>
    <home if='{state.exibicaoReducer.home}'></home>
   <cadastrousuario if='{state.exibicaoReducer.cadastrousuario}'></cadastrousuario>
    <pedidos if ='{state.exibicaoReducer.pedidos}'></pedidos>
    <ListarPedidos if ='{state.exibicaoReducer.ListarPedidos}'></ListarPedidos>
    <produtocategoria if ='{state.exibicaoReducer.produtocategoria}'></produtocategoria>
<<<<<<< HEAD
    <formularioCompra if ='{state.exibicaoReducer.formularioCompra}'></formularioCompra>
    <efetuarCompra if ='{state.exibicaoReducer.efetuarCompra}'></efetuarCompra>
    <navbar></navbar>
    <Tfooter></Tfooter>
=======
    <Tfooter> </Tfooter>
>>>>>>> 6d92404d4e171671fd41ef9a65b2fd19b1587843
    <script>
        this.mixin('state')
        this.mixin('reduxGlobal')
        this.mixin('subscribeStateTag')
        this.subscribeStateTag(this)
    </script>
</app>