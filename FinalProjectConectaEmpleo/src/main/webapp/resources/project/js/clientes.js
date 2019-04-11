/**
 * Aquí van las funciones de JavaScript para controlar
 * el comportamiento de la vista clientes.jsp
 */

function onclickNewVisit(id) {
	// Mostramos la ventana del formulario de Visitas
	
	// Enviaremos los datos por AJAX y escribiremos un registro nuevo
	// de visita para el cliente

	console.log("Programando Visita para el Cliente con DNI: " + id);
	
	//pintarTablaReservas (userBooks);

};

function onclickEditCustomer(id, nombre) {
	// Mostramos la ventana del formulario del cliente
	
	// Pedimos datos del cliente por medio de AJAX
	var dni = id;
	document.getElementById("inputDni").value = dni;
	var formTitle = "Editando datos de " + nombre;
	//openRequestedWeb("clientes/?dni="+id, "_self")
	var xhttp = new XMLHttpRequest();	
	document.getElementById("frmCaption").innerHTML = formTitle;
	infoNomPartStyleChange ("grpListadoClientes", "display: none");
	infoNomPartStyleChange ("grpAddCustomer", "display: flex");
	
	document.getElementById("inputDni").disabled = true;
	
	xhttp.onreadystatechange = function() {
		if (this.readyState === 4 && this.status === 200) {
			var respuestaRecibida = this.responseText;
			var datosCliente = JSON.parse(respuestaRecibida);
			// Con los datos recibidos del cliente rellenamos los controles
			RellenarDatosCliente(datosCliente);
		}
	};
	xhttp.open("POST", "editandoCliente", true);
	xhttp.setRequestHeader("Content-type",
					   "application/x-www-form-urlencoded");
	xhttp.send("dni="+dni);	
	//pintarTablaReservas (userBooks);
	
};

function RellenarDatosCliente(datosCliente) {
	document.getElementById("inputName").value = datosCliente.nombre;
	document.getElementById("inputFirstLastName").value = datosCliente.primerApellido;
	document.getElementById("inputSecondLastName").value = datosCliente.segundoApellido;
	document.getElementById("inputBirthDay").value = datosCliente.fechaNacimiento;
	document.getElementById("inputTelefonos").value = datosCliente.telefono;
	document.getElementById("inputEmail").value = datosCliente.mail;
	if (datosCliente.sexo === "HOMBRE") {
		document.getElementById("inputSex1").checked = false;
		document.getElementById("inputSex2").checked = true;
	} else if (datosCliente.sexo === "MUJER") {
		document.getElementById("inputSex1").checked = true;
		document.getElementById("inputSex2").checked = false;
	} else {
		document.getElementById("inputSex1").checked = false;
		document.getElementById("inputSex2").checked = false;
	}
}


function formDatosClienteSUBMITEvent () {
	event.preventDefault();
	event.stopPropagation();
	
	if (validateForm("formDatosCliente")){	
		var dni = document.getElementById("dni").value;
	
		var xhttp = new XMLHttpRequest();
		xhttp.onreadystatechange = function() {
			if (this.readyState === 4 && this.status === 200) {
				var respuestaRecibida = this.responseText;
				//var objRespuestaRecibida = JSON.parse(respuestaRecibida);
//				// Datos del vuelo
//				document.getElementById("txtjs").innerHTML = datosVueloTexto();
//				infoNomPartStyleChange ("tituloDatosVuelo" , "display: flex");
//				// Lista de pasajeros del vuelo
//				document.getElementById("listaPasajeros").innerHTML = 
//					listaPasajerosVuelo(objRespuestaRecibida);
			}
		};
	xhttp.open("POST", "editandoCliente", true);
	xhttp.setRequestHeader("Content-type",
					   "application/x-www-form-urlencoded");
	xhttp.send("dni="+dni);

	}	
		
};

function btnNewCustomerCLICKEvent () {
	
	
};

function btnCancelValidationCLICKEvent () {
	var x = document.getElementsByTagName("input");
    for ( var counter = 0; counter < x.length; counter++)
    {
       if (x[counter].type !== "button" && x[counter].type !== "submit") {
    	   x[counter].value = ""
       };
    }
    document.getElementById("inputDni").disabled = false;
    infoNomPartStyleChange ("grpListadoClientes", "display: flex");
	infoNomPartStyleChange ("grpAddCustomer", "display: none");
	
}
