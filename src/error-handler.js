import store from "./store";
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
