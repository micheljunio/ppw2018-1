import store from "./store";

/* Esse arquivo irá conter as funções auxiliares que irão ser chamadas no app-controller a posteriori. */

export function* fetchAxios(url){
    const data = yield call(axios.get, 'http://localhost:3000/');
    console.log(data.data);

}