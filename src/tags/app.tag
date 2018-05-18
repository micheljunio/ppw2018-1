<app>
    <style>
    </style>
    <home if='{state.exibicaoReducer.home}' valor={'Sou a HOME'} ></home>
    <script>
        this.mixin('state')
        this.mixin('reduxGlobal')
        this.mixin('subscribeStateTag')
        this.subscribeStateTag(this)
    </script>
</app>