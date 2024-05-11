let jugador = 1;
  let casillas = document.querySelectorAll(".casilla");
  let tablero = [0, 0, 0, 0, 0, 0, 0, 0, 0];
  let ganador = false;
  let combinaciones = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8],
    [0, 4, 8],
    [2, 4, 6],
  ];
  
  let victoriasJugador1 = 0;
  let victoriasJugador2 = 0;
  
function jugada(num) {
if (!ganador && tablero[num - 1] === 0) {
    tablero[num - 1] = jugador;
    casillas[num - 1].classList.add("jugador" + jugador);
    if (comprobarGanador()) {
      let combinacionGanadora = obtenerCombinacionGanadora();
      resaltarCasillasGanadoras(combinacionGanadora);
      if (jugador === 1) {
        victoriasJugador1++;
      } else {
        victoriasJugador2++;
      }
      actualizarContadores();
      ganador = true;
      alert("Jugador " + jugador + " ha ganado");
    } else if (comprobarEmpate()) {
      alert("Empate");
      ganador = true;
    } else {
      cambiarJugador();
      actualizarTurno();
    }
  }
}

function obtenerCombinacionGanadora() {
  for (let i = 0; i < combinaciones.length; i++) {
    const combinacion = combinaciones[i];
    let casillaGanadora = true;
    for (let j = 0; j < combinacion.length; j++) {
      const casilla = combinacion[j];
      if (tablero[casilla] !== jugador) {
        casillaGanadora = false;
        break;
      }
    }
    if (casillaGanadora) {
      return combinacion;
    }
  }
  return null;
}

function resaltarCasillasGanadoras(combinacionGanadora) {
  combinacionGanadora.forEach(function(casillaIndex) {
    casillas[casillaIndex].classList.add("casilla-ganadora");
  });
}
  
function reset(){
    casillas.forEach(function(casilla) {
        casilla.classList.remove('jugador1', 'jugador2','casilla-ganadora');
    });
    tablero = [0, 0, 0, 0, 0, 0, 0, 0, 0]; 
    ganador = false; 
    victoriasJugador1 = 0;
    victoriasJugador2 = 0;
    actualizarContadores();
}

function otra() {
    casillas.forEach(function(casilla) {
        casilla.classList.remove('jugador1', 'jugador2','casilla-ganadora');
    });
    tablero = [0, 0, 0, 0, 0, 0, 0, 0, 0]; 
    ganador = false; 
    actualizarTurno();
}

function actualizarContadores() {
    document.getElementById('contadorJugador1').innerText = "J1: "+victoriasJugador1;
    document.getElementById('contadorJugador2').innerText = "J2: "+victoriasJugador2;
}

function cambiarJugador() {
    jugador = jugador === 1 ? 2 : 1;
}
function actualizarTurno(){
    let turno = jugador === 1 ? "Turno del jugador 2" : "Turno del jugador 1";
    document.getElementById('turnoJugador').innerText = turno;
}


function comprobarGanador() {
    for (let i = 0; i < combinaciones.length; i++) {
        const combinacion = combinaciones[i];
        let ganador = true;
        for (let j = 0; j < combinacion.length; j++) {
            const casilla = combinacion[j];
            if (tablero[casilla] !== jugador) {
                ganador = false;
                break;
            }
        }
        if (ganador) {
        return true;
        }
    }
    return false;
}

function comprobarEmpate() {
    return !tablero.includes(0);
}