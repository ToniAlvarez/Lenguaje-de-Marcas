let resultado = document.getElementById("resultado");

function agregarNumero(num) {
  resultado.value += num;
}

function limpiar() {
  // por hacer
}

function borrar() {
  resultado.value = resultado.value.slice(0, -1);
}

function operar(op) {
  switch (op) {
    case "raiz":
      try {
        resultado.value = Math.sqrt(eval(resultado.value));
      } catch (error) {
        resultado.value = "Error";
      }
      break;
    case "bin":
      try {
        resultado.value = eval(resultado.value).toString(2);
      } catch (error) {
        resultado.value = "Error";
      }
      break;
    default:
      resultado.value += op;
      break;
  }
}

function calcular() {
  try {
    resultado.value = eval(resultado.value);
  } catch (error) {
    resultado.value = "Error";
  }
}
