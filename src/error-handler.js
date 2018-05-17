import store from "./store";

/* A catch errors irá centralizar qualquer erro de estado que vier a acontecer durante a roteirização. */ 
export default function* catchErrors(fn, ...args) {
  try {
    yield* fn(...args);
  } catch (err) {
    let numbError = parseInt(
      err
        .toString()
        .match(/\d/g)
        .join("")
    );
    
    console.log("Erro do handler: ", err.toString());
    //yield* handleError(err, fn, ...args)
  }
}
