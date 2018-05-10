const initialState = {
    home: true,
    sobre: false
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
      case "SOBRE_ON": {
        const newState = { ...state, sobre: true };
        return newState;
      }
      case "SOBRE_OFF": {
        const newState = { ...state, sobre: false };
        return newState;
      }
      default: {
        return state;
      }
    }
  }
  