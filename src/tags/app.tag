<app>
    <style>
    </style>
    
    <navbar></navbar>

    <!-- O state.exibicaoReducer.home é a variavel criada no initialState,
    Ao ser atualizada, a função subscribeStateTag(...) no script, é acionada atualizando o estado
    da aplicação. 
    Toda vez que o state é atualizado essa função é executada de forma automática, atualizando o DOM.-->

    <home if='{state.exibicaoReducer.home}' valor={'Sou a HOME'} ></home>

    <sobre if='{state.exibicaoReducer.sobre}' valor={'Sou o SOBRE'}></sobre>

    <script>
        this.mixin('state')
        this.mixin('reduxGlobal')
        this.mixin('subscribeStateTag')
        this.subscribeStateTag(this)
    </script>
</app>