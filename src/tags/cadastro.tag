<cadastro>
    <style>
        form {
            margin-top: 30%;
        }



        .formcadastro {
            width: 50%;
        }

        .fechar {
            margin-left: 66%;


        }
    </style>
    <div class="containe">
        <div class="row justify-content-center">

            <h2>Login</h2>
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
                        <label for="FomrContleDtn">Data de nascimento</label>
                        <input type="date" class="form-control" id="FomrContleDtn" placeholder="00/00/0000">
                    </div>
                    <div>
                        <label for="FomrContleCpf">Cpf</label>
                        <input type="text" class="form-control" id="FomrContleCpf" placeholder="digite seu cpf" maxlength="11">
                    </div>
                    <div>
                        <label for="FomrContleEndereco">Endereço</label>
                        <input type="email" class="form-control" id="FomrContleEndereco" placeholder="rua 6 conj h casa 10">
                    </div>

                    <div class="form-group">
                        <label for="exampleFormControlSelect1">sexo</label>
                        <select class="form-control" id="exampleFormControlSelect1">
                            <option>selecione</option>
                            <option>Masculino</option>
                            <option>Feminino</option>
                        </select>
                    </div>
                    <button type="submit" class="bnt btn-primary">Salvar cadastro</button>
                    <button type="submit" class="bnt fechar">Fechar</button>
                </form>
            </div>
        </div>
    </div>
    <script>
    </script>

</cadastro>