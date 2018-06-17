/* Esse reducer controla a exibição das tags.
cada caso é acionado através de um put feito no app-controler com seu respectivo type.
Por exemplo, se chegar HOME_OFF, o case HOME_OFF é acionando, e um nova estado é criado, onde a variavel home irá 
receber false. 

O InitialState, é o estado inicial que o sistema começa, ou seja, nesse caso a home irá renderizar ao abrir o site e o sobre 
estará fora de contexto.*/

const initialState = {
  updateSpinner: false,
  dados: [{
    _id: '-',
    nome: '-',
    sobrenome: '-',
    email: '-'
  }]
};
  
  export default function homeReducer(state = initialState, action) {
    switch (action.type) {
      case "UPDATE_PESSOAS": {
        const newState = {...state, dados: action.payload};
        return newState;
      }
      case "SPINNER_UPDATE_ON": {
        const newState = {...state, updateSpinner:true};
        return newState;
      }
      case "SPINNER_UPDATE_OFF": {
        const newState = {...state, updateSpinner:false};
        return newState;
      }
      default: {
        return state;
      }
    }
  }
  