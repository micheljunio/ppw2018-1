import store from "./store";
import * as funcoesAuxiliares from "./funcoes-auxiliares";

const state = { state: store.getState() };
riot.mixin("state", state);

const subs = self => {
    store.subscribe(() => {
        self.update({
            state: store.getState()
        });
    });
};
const subscribeStateTag = { subscribeStateTag: subs };
riot.mixin("subscribeStateTag", subscribeStateTag);

const reduxGlobal = {...store, ...funcoesAuxiliares };
riot.mixin("reduxGlobal", reduxGlobal);