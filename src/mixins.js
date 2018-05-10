import store from "./store";
import * as funcoesAuxiliares from "./funcoes-auxiliares";

/* Os mixins fornecem uma maneira fácil de compartilhar a funcionalidade nas tags. 
Quando uma tag é compilada pelo riot, quaisquer mixins definidos são adicionados e disponibilizados para uso na tag. */

/* O state nada mais é que as informações dos reducers. */
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