
function dibujarTablero(numFilas, numColumnas){
    let tablero = document.querySelector("#tablero");
    for(let f=0; f<numFilas; f++){
        for(let c=0; c<numColumnas; c++){
        let newDiv = document.createElement("div");
        tablero.appendChild(newDiv);
        }
    }
}
    