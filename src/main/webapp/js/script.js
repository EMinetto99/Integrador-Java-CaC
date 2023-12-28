// botones
const botonBorrar = document.getElementById("borrar");
const botonResumen = document.getElementById("resumen");

// campos
const campoNombre = document.getElementById("nombre");
const campoApellido = document.getElementById("apellido");
const campoCorreo = document.getElementById("correo");
const campoNumero = document.getElementById("numero");
const campoSeleccion = document.getElementById("seleccion");
// precio
const importePrecio = document.getElementById("precio");

// FUNCIÓN BOTÓN RESUMEN
function calcularResumen(e){
    // FUNCION PARA VALIDAR CADA CAMPO DEL FORMULARIO
    function validarCampos(campos){
        // Funciones que validan cada tipo de campo
        // VALIDACION CAMPO VACIO
        function textoVacio(text){
            let regexTextoVacio = /^(\s){1,}$/g;
    
            if ((regexTextoVacio.test(text)) || (text === ""))
                return true;
            else
                return false;
        }
        // VALIDACION CORREO
        function correoValido(correo){
            let regexCorreo = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
            if (regexCorreo.test(correo))
                return true;
            else
                return false;
        }
        // VALIDACION NUMERO
        function numeroValido(numero){
            let esEnteroPositivo = true;
            numero = parseFloat(numero);    // Se parsea el string en número en Punto flotante
            if ((!Number.isInteger(numero)) || (numero <= 0)) // Si el número es menor o igual a 0 o negativo
                esEnteroPositivo = false;
            return esEnteroPositivo;
        }

        let hayError = false;
        let leyenda = "";
        
        // Discriminacion por error
        if (textoVacio(campoNombre.value)){
            hayError = true;
            leyenda += "No se ha ingresado un nombre\n";
        }
        if (textoVacio(campoApellido.value)){
            hayError = true;
            leyenda += "No se ha ingresado un apellido\n";
        }
        if (!numeroValido(campoNumero.value)){
            hayError = true;
            leyenda += "Ingrese una cantidad mayor y distinta de 0\n";
        }
        if (!correoValido(campoCorreo.value)){
            hayError = true;
            leyenda += "Ingrese un correo electrónico válido\n";
        }
        if (campoSeleccion.value == "Elija una categoría"){
            hayError = true;
            leyenda += "Por favor, seleccione una categoría\n";
        }

        if (hayError){
            campos.esValido = false;
            campos.warnings = leyenda;
        }
        return campos;
    }

    // FUNCION CALCULAR TICKETS
    function calcularTicket(){
        const valorCampoNumero = campoNumero.value;
        const valorCampoSeleccion = campoSeleccion.value;
        const valorTicket = 200;    // Valor generar del ticket

        let precioTotal = valorTicket * valorCampoNumero;   // Precio total crudo sin descuento X cantidad de tickets
        switch (valorCampoSeleccion){                       // Se elige entre los distintos
            // Se le resta el descuento al precio total
            case "Estudiante": precioTotal -= (precioTotal * 0.8);
            break;
            case "Trainee": precioTotal -= (precioTotal * 0.5);
            break;
            case "Junior": precioTotal -= (precioTotal * 0.15);
            break;
        }
        importePrecio.innerHTML = precioTotal.toFixed(2);   // Se muestra el precio en el HTML
    }

    const campos = {    // Objeto para el mensaje en caso de errores y Boolean si hay error
        warnings: "",
        esValido: true,
    }
    e.preventDefault(); // Previene el evento de envio de formulario, entre otros...
    importePrecio.innerHTML = "0.00";   // Precio inicial en 0 en caso de que se modifique en el documento

    validarCampos(campos);
    if (campos.esValido)
        calcularTicket();
    else
        alert(campos.warnings);
}

// FUNCIÓN BOTÓN BORRAR
function funcionBorrar(e){
    e.preventDefault();
    importePrecio.innerHTML = "0.00";   // Precio inicial en 0 en caso de que se modifique en el documento
    campoNombre.value = "";
    campoApellido.value = "";
    campoCorreo.value = "";
    campoNumero.value = "";
    campoSeleccion.value = "";
}

botonResumen.onclick = calcularResumen;
botonBorrar.onclick = funcionBorrar;