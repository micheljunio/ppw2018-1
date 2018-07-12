import handleRoute from "./routes";
import catchErrors from "./error-handler";
import * as sagasAux from "./sagas-auxiliares";

/* Essa função é um observador, quando é feito um dispatch, o mesmo aciona o rootsaga e verifica qual yield 
será executado através da comparação do type enviado com o primeiro parâmetro do yield. */

export default function* rootSaga() {
    yield takeEvery("ROUTE", catchErrors, handleRoute);
    yield takeEvery("UPDATE_PESSOA", sagasAux.updatePessoa);
    yield takeEvery("ADICIONAR_PESSOA", sagasAux.adicionarPessoa);
    yield takeEvery("DELETAR_PESSOA", sagasAux.deletarPessoa);
}