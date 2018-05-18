<app>
    <style>
    </style>
    <home if='{state.exibicaoReducer.home}' valor={'Sou a HOME'} ></home>
   <cadastrousuario if='{state.exibicaoReducer.cadastrousuario}'></cadastrousuario>
    <pedidos if ='{state.exibicaoReducer.pedidos}'></pedidos>
    <navbar></navbar>
    <script>
        this.mixin('state')
        this.mixin('reduxGlobal')
        this.mixin('subscribeStateTag')
        this.subscribeStateTag(this)
    </script>
</app>