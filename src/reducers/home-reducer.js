const initialState = {
    home: true,
    busca: true,
    listaSerie: false,
    dadosSerie: false
  };
  
  export default function exibicaoReducer(state = initialState, action) {
    switch (action.type) {
      case "VIEW_HOME": {
        const newState = { ...state, home: true };
        return newState;
      }
      case "HOME_OFF": {
        const newState = { ...state, home: false };
        return newState;
      }
      case "VIEW_BUSCA": {
        const newState = { ...state, busca: true };
        return newState;
      }
      case "BUSCA_OFF": {
        const newState = { ...state, busca: false };
        return newState;
      }
      case "VIEW_LISTA_SERIE": {
        const newState = { ...state, listaSerie: true };
        return newState;
      }
      case "LISTA_SERIE_OFF": {
        const newState = { ...state, listaSerie: false };
        return newState;
      }
      case "VIEW_SERIE_VALORES": {
        const newState = { ...state, dadosSerie: true };
        return newState;
      }
      case "SERIE_VALORES_OFF": {
        const newState = { ...state, dadosSerie: false };
        return newState;
      }
      default: {
        return state;
      }
    }
  }
  