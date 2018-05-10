import handleRoute from "./routes";
import catchErrors from "./error-handler";
import * as sagasAux from "./sagas-auxiliares";

export default function* rootSaga() {
    yield takeEvery("ROUTE", catchErrors, handleRoute);
}