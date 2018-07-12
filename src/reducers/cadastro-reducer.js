const initialState = {
      updateSpinner: false,
      dados: [{
        _id: '-',
        nome: '-',
        email: '-',
        sexo: '-',
        cpf:'-',
        dtn:'-',
        senha:'-'
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