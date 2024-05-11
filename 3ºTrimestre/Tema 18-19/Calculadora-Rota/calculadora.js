let resultado = document.getElementById("resultado");

function agregarNumero(num) {
  resultado.value += num;
}

function limpiar() {
    resultado.value = "";
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
    case "Bin":
      try {
        resultado.value = eval(resultado.value).toString(2);
      } catch (error) {
        resultado.value = "Error";
      }
      break;
      case "potencia": 
      try {
        resultado.value = Math.pow(eval(resultado.value), 2); 
      } catch (error) {
        resultado.value = "Error";
      }
      break;
      case "Hex": 
      try {
        resultado.value = eval(resultado.value).toString(16);
      } catch (error) {
        resultado.value = "Error";
      }
      break;
      case "1entreX":
      try {
        let num = parseFloat(resultado.value);
        if (num !== 0) {
          resultado.value = 1 / num;
        } else {
          resultado.value = "Error";
        }
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
