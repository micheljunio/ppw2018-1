<app>
    <style>
    </style>
    
    <navbar></navbar>
    <home if='{state.exibicaoReducer.home}' valor={'Sou a HOME'} ></home>
    <sobre if='{state.exibicaoReducer.sobre}' valor={'Sou o SOBRE'}></sobre>

    <script>
        this.mixin('state')
        this.mixin('reduxGlobal')
        this.mixin('subscribeStateTag')
        this.subscribeStateTag(this)
    </script>
</app>