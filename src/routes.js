import * as appControllers from "./app-controller";
import store from "./store";

/* 
Essa arrow function coleta o primeiro parâmetro contido na url após o padrão "#/". Ela é chamada todas as vezes que
a url é alterada.
 */
const executarRoute = (...parametros) => {
  const query = route.query();
  if (Object.keys(query).length !== 0) {
    parametros.pop();
  }

  /*   
  Este dispatch faz com que a função rootSaga no arquivo saga.js seja executada com o parâmetro coletado.  
  Dispatch disparam eventos que são executados pelo type, o type demonstra qual match será feito, tanto em um rootsaga
  quanto em um reducer.  
  */
  store.dispatch({
    type: "ROUTE",
    payload: {
      parametros,
      query
    }
  });
};

/* route.base define o padrão de observação da url. Nesse caso "#/" define que toda alteração da url, acontecerá logo após o padrão. */
route.base("#/");

/* Chama a função executeRoute acima, para coletar o parametro que será renderizado. */
route(executarRoute);

/* Inicializa o monitoramento da URL. */
route.start(true);

/* Define o que será renderizado, o switch serve para selecionar a tag que será renderizada.
O valor do case é o valor capturado na função executarRoute, que atráves do dispatch, vai no observador
rootsaga no arquivo sagas.js e o mesmo quando acionado pelo type ROUTE, direciona para a função handleRoute.
Os cases direcionam para a respectiva função no arquivo app-controller para renderização.*/
export default function* handleRoute(action) {
  console.log(action)

  switch (action.payload.parametros[0]) {
    case "home": {
      yield call(appControllers.homeController);
      break;
    }
    case "cadastroUsuario": {
      yield call(appControllers.cadastraUsuarioController, action.payload);
      break;
    }
    case "pedidos": {
      yield call(appControllers.pedidosController, action.payload);
      break;
    }
    case "ListarPedidos": {
      yield call(appControllers.listarPedidosController, action.payload);
      break;
    }

    default: {
      throw 404;
    }
  }
}
