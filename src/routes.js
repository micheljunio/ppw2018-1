import * as appControllers from "./app-controller";
import store from "./store";

const executarRoute = (...parametros) => {
  const query = route.query();

  //Se query for objeto vazio: retorna parametros original
  // Se tiver query: remove ultimo item do parametros (que eh a query)
  if (Object.keys(query).length !== 0) {
    // const ultimoItem = parametros.pop()
    parametros.pop();
  }

  store.dispatch({
    type: "ROUTE",
    payload: {
      parametros,
      query
    }
  });
};

route.base("#/");
route(executarRoute);
route.start(true);

export default function* handleRoute(action) {

  switch (action.payload.parametros[0]) {
    case "home": {
      yield call(appControllers.homeController);
      break;
    }
    case "sobre": {
      yield call(appControllers.sobreController, action.payload);
      break;
    }

    default: {
      throw 404;
    }
  }
}
