import store from "./store";

/* Esse arquivo irá conter as funções auxiliares que irão ser chamadas no app-controller a posteriori. */

export function* fetchAxios(url){
    const data = yield call(axios.get, url);
    console.log(data.data);
    return data.data;

}

export function* updatePessoa(action){
    yield put({type:"SPINNER_UPDATE_ON"})
    const url = `http://localhost:3000/persons/${action.payload._id}`;
    yield call(axios.put, url, action.payload);
    const data = yield call(fetchAxios, 'http://localhost:3000/persons/all');
    yield put({type: 'UPDATE_PESSOAS', payload: data});
    yield put({type:"SPINNER_UPDATE_OFF"});
}

export function* adicionarPessoa(action){
    yield put({type:"SPINNER_UPDATE_ON"})
    const url = `http://localhost:3000/persons/`;
    yield call(axios.post, url, action.payload);
    const data = yield call(fetchAxios, 'http://localhost:3000/persons/all');
    yield put({type: 'UPDATE_PESSOAS', payload: data});
    yield put({type:"SPINNER_UPDATE_OFF"});
}

export function* deletarPessoa(action){
    yield put({type:"SPINNER_UPDATE_ON"})
    const url = `http://localhost:3000/persons/${action.payload._id}`;
    yield call(axios.delete, url, action.payload);
    const data = yield call(fetchAxios, 'http://localhost:3000/persons/all');
    yield put({type: 'UPDATE_PESSOAS', payload: data});
    yield put({type:"SPINNER_UPDATE_OFF"});
}