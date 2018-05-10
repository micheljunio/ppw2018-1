import rootReducer from "./reducers";
import rootSaga from "./sagas";

/* Esse arquivo define a store do projeto. Uma especie de loja,
que centraliza as informações das componentes.
*/

const sagaMiddleware = createSagaMiddleware();

const store = createStore(rootReducer, applyMiddleware(sagaMiddleware));

sagaMiddleware.run(rootSaga);

export default store;