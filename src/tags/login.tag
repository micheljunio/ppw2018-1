<login>




  <style>
    form {
      margin-top: 40%;

    }

    .formlogin {
      width: 70%;

    }

    .row {
      width: 60%;
      margin-top: 5%;
      margin-left: 20%;

    }

    .Login {
      padding-bottom: 30%;
    }
  </style>
  <div class="containe">
    <div class="row justify-content-center">
      <div class="formlogin">
        <form>
          <div class="Login">
            <div>
              <label for="FomrContleLoginEmail">email</label>
              <input type="text" class="form-control" id="FomrContleCpf" placeholder="digite seu cpf" maxlength="11">
            </div>
            <div>
              <label for="FomrContleLoginSenha">Senha</label>
              <input type="email" class="form-control" id="FomrContleEndereco" placeholder="rua 6 conj h casa 10">
            </div>
          </div>
        </form>

      </div>
    </div>
  </div>

  <script>
    this.mixin('state')
    this.mixin('reduxGlobal')
    this.mixin('subscribeStateTag')
    this.subscribeStateTag(this);




  </script>
</login>