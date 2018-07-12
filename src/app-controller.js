import * as sagasAux from "./sagas-auxiliares";
import store from "./store";

/* As funções abaixo são definidas para controlar as componentes.
São nessas funções onde as regras de negocio devem ser chamadas para renderização 
da componente.
O yield é como se fosse um dispatch, quando executado um type é enviado e observado em algum reducer,
nesse caso no exibicao-reducer. Isso fará que algum case seja executado, atualizando o state e consequentemente
a componente.*/

export function* homeController() {
  yield put({ type: "CADASTROUSUARIO_OFF" });
  yield put({type: "LISTARPEDIDOS_OFF" });
  yield put({type: "HOME_ON"});
  yield put({type: "PEDIDOS_OFF" });
  yield put({type: "FORMULARIOCOMPRA_OFF" });
  yield put({type: "EFETUARCOMPRA_OFF" });
  yield put({type: "PRODUTOCATEGORIA_OFF" });

}

export function* cadastraUsuarioController() {
  yield put({ type: "CADASTROUSUARIO_ON" });
  yield put({type: "LISTARPEDIDOS_OFF" });
  yield put({type: "HOME_OFF"});
  yield put({type: "PEDIDOS_OFF" });
  yield put({type: "FORMULARIOCOMPRA_OFF" });
  yield put({type: "EFETUARCOMPRA_OFF" });
  yield put({type: "PRODUTOCATEGORIA_OFF" });

}

export function* pedidosController(){
  yield put({ type: "CADASTROUSUARIO_OFF" });
  yield put({type: "LISTARPEDIDOS_OFF" });
  yield put({type: "HOME_OFF"});
  yield put({type: "PEDIDOS_ON" });
  yield put({type: "FORMULARIOCOMPRA_OFF" });
  yield put({type: "EFETUARCOMPRA_OFF" });
  yield put({type: "PRODUTOCATEGORIA_OFF" });
 

}

export function* listarPedidosController(){
  yield put({ type: "CADASTROUSUARIO_OFF" });
  yield put({type: "LISTARPEDIDOS_ON" });
  yield put({type: "HOME_OFF"});
  yield put({type: "PEDIDOS_OFF" });
  yield put({type: "FORMULARIOCOMPRA_OFF" });
  yield put({type: "EFETUARCOMPRA_OFF" });
  yield put({type: "PRODUTOCATEGORIA_OFF" });


}
export function* produtocategoriaController(){
  yield put({type: "FORMULARIOCOMPRA_OFF" });
  yield put({type: "PRODUTOCATEGORIA_ON" });
  yield put({type: "HOME_OFF"});
  yield put({type: "PEDIDOS_OFF" });
  yield put({ type: "CADASTROUSUARIO_OFF" });
  yield put({type: "LISTARPEDIDOS_OFF" });
  yield put({type: "EFETUARCOMPRA_OFF" });


}
export function* formularioCompraController(){
  yield put({type: "FORMULARIOCOMPRA_ON" });
  yield put({type: "PRODUTOCATEGORIA_OFF" });
  yield put({type: "HOME_OFF"});
  yield put({type: "PEDIDOS_OFF" });
  yield put({ type: "CADASTROUSUARIO_OFF" });
  yield put({type: "LISTARPEDIDOS_OFF" });
  yield put({type: "EFETUARCOMPRA_OFF" });

}
export function* efetuarCompraController(){
  yield put({type: "EFETUARCOMPRA_ON" });
  yield put({type: "FORMULARIOCOMPRA_OFF" });
  yield put({type: "PRODUTOCATEGORIA_OFF" });
  yield put({type: "HOME_OFF"});
  yield put({type: "PEDIDOS_OFF" });
  yield put({ type: "CADASTROUSUARIO_OFF" });
  yield put({type: "LISTARPEDIDOS_OFF" });

}