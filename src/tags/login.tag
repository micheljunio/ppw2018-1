<login>
<br>
<br>
<br>
<br>
<br>

<div class="row">
  <div class="col-4">
  </div>
  <div class="col-4" style="border-style: solid; border-width: 1px;border-color: #E6E6E6; margin-bottom: 50px">
      <br>
      <h3>Logar</h3>
      <br>
<form >
  <div class="form-group">
    <label for="email">Email address:</label>
    <input type="email" class="form-control" id="email">
  </div>
  <div class="form-group">
    <label for="pwd">Password:</label>
    <input type="password" class="form-control" id="pwd">
  </div>
  <div class="form-group form-check">
    <label class="form-check-label">
      <input class="form-check-input" type="checkbox"> Remember me
    </label>
  </div>
  <br>
  <button type="submit" onclick={validarLogin} class="btn btn-primary">Login</button>

  </div>
  <div class="col-4">
  
  </div>
</div>


 
</form>
  <script>
    this.mixin('state')
    this.mixin('reduxGlobal')
    this.mixin('subscribeStateTag')
    this.subscribeStateTag(this);

validarLogin(e){
        var email =  document.getElementById('email').value;
        var senha =  document.getElementById('pwd').value;
  

        for(var i in this.state.loginReducer.dados){
          if( this.state.loginReducer.dados[i]['email']==email){
            
          if(this.state.loginReducer.dados[i]['password']==senha){
           
              localStorage.setItem('email',this.state.loginReducer.dados[i]['email']);
              alert("Cadastro Realizado");
              window.location.href = "#/home";   
          
      
          }
 
       }
        }

}


  </script>
</login>