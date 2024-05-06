function dibujarTablero(numFilas, numColumnas){
    let tablero = document.querySelector("#tablero");
    document.querySelector("html").style.setProperty("--num-filas",numFilas);
    document.querySelector("html").style.setProperty("--num-columnas",numColumnas);
    for(let f=0; f<numFilas; f++){
    for(let c=0; c<numColumnas; c++){
    let newDiv = document.createElement("div");
    tablero.appendChild(newDiv);
    }
    }
    for(let f=0; f<numFilas; f++){
    for(let c=0; c<numColumnas; c++){
    let newDiv = document.createElement("div");
    newDiv.setAttribute("id","f" + f + "_c" + c );
    newDiv.dataset.fila = f;
    newDiv.dataset.columna = c;
    newDiv.addEventListener("contextmenu",marcar); //evento con el botón derecho del raton
    newDiv.addEventListener("click",descubrir); //evento con el botón izquierdo del raton
    tablero.appendChild(newDiv);
    }
    }
    }


        function marcar(evento){
        }
        function descubrir(evento){
}        