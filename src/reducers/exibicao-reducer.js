/* Esse reducer controla a exibição das tags.
cada caso é acionado através de um put feito no app-controler com seu respectivo type.
Por exemplo, se chegar HOME_OFF, o case HOME_OFF é acionando, e um nova estado é criado, onde a variavel home irá 
receber false. 

O InitialState, é o estado inicial que o sistema começa, ou seja, nesse caso a home irá renderizar ao abrir o site e o sobre 
estará fora de contexto.*/

const initialState = {
    home: true,
    cadastrousuario: false,
    pedidos: false,
    ListarPedidos: false
  };
  
  export default function exibicaoReducer(state = initialState, action) {
    switch (action.type) {
      case "HOME_ON": {
        const newState = { ...state, home: true };
        return newState;
      }
      case "HOME_OFF": {
        const newState = { ...state, home: false };
        return newState;
      }
      case "CADASTROUSUARIO_ON": {
        const newState = { ...state,cadastrousuario: true };
        return newState;
      }
      case "CADASTROUSUARIO_OFF": {
        const newState = { ...state, cadastrousuario: false };
        return newState;
      }

      case "PEDIDOS_ON": {
        const newState = { ...state, pedidos: true};
        return newState; 
      }

      case "PEDIDOS_OFF": {
        const newState = {...state, pedidos: false};
        return newState;
      }

      case "LISTARPEDIDOS_ON": {
        const newState = { ...state, ListarPedidos: true};
        return newState; 
      }

      case "LISTARPEDIDOS_OFF": {
        const newState = {...state, ListarPedidos: false};
        return newState;
      }
      default: {
        return state;
      }
    }
  }
  