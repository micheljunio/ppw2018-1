import exibicaoReducer from "./reducers/exibicao-reducer";
import homeReducer from "./reducers/cadastro-reducer";
  

/* Os reducers definem os dados de cada componente e também dados auxiliares, como é o caso do
exibicao-reducer. Esse reducer é o responsável por controlar quem deve estar visíviel ou não.
A função combineReducers abaixo é adicionada para combinar mais de um reducer em uma única variável
(rootReducer), assim é possível centralizar os dados na store.*/

const rootReducer = combineReducers({  
  exibicaoReducer,
  cadastroReducer
});

export default rootReducer;