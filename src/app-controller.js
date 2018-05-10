import * as sagasAux from "./sagas-auxiliares";
import store from "./store";

export function* homeController() {
  yield put({ type: "HOME_ON" });
  yield put({ type: "SOBRE_OFF" });
}

export function* sobreController() {
  yield put({ type: "SOBRE_ON" });
  yield put({ type: "HOME_OFF" });
}
