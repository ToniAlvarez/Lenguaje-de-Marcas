let botonAdd=document.getElementById("botonAdd");
botonAdd.addEventListener("click",addItem);


function  addItem(){
    console.log("Function AddItem");
    let producto = document.getElementById("producto").value;
    let cantidad = parseInt(document.getElementById("cantidad").value);
    let precio = parseFloat(document.getElementById("precio").value);
    if(producto && !isNaN(precio)){
        console.log(producto,cantidad,precio)
        let total = precio*cantidad;
        console.log(total)
        let total2= precio*cantidad;
        console.log(total2);
        let listaDiv = document.getElementById("lista");
        let nuevoItem= document.createElement("div");
        let spanProducto = document.createElement("span");
        spanProducto.textContent="Producto: "+producto+" Cantidad: "+cantidad+" Subtotal: ";
        let spanSubtotal = document.createElement("span");
        spanSubtotal.textContent=total.toFixed(2);
        nuevoItem.appendChild(spanProducto);
        nuevoItem.appendChild(spanSubtotal);
        listaDiv.appendChild(nuevoItem); 
        actualizarTotal(total);
    } else {
        alert("Datos Malos");
    }
}

function actualizarTotal(nuevoTotal){
    console.log(nuevoTotal);
    let sumaTotal = document.getElementById("sumaTotal");
    let totalAnterior = parseFloat(sumaTotal.textContent);
    sumaTotal.textContent = (totalAnterior+nuevoTotal).toFixed(2);
}