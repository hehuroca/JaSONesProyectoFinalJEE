/**
 * Aquí van las funciones de JavaScript para controlar
 * el comportamiento de la vista clientes.jsp
 */
function pintarTablaClientes(clientes) {
	clientes.sort(function (a, b) {
		  var aInt = parseInt(a.numRegistrarCliente);
		  var bInt = parseInt(b.numRegistrarCliente);
		  return aInt - bInt
		});
	
	
	var tablaClientes = document.getElementById("tblClientes")
	
	if (tablaClientes !== null) {
		tablaClientes.remove();
	}
	
	  var body = document.getElementById("reservasTbl");
		
	  // Crea un elemento <table> y un elemento <tbody>
	  var tabla   = document.createElement("table");
	  var tblBody = document.createElement("tbody");
	  var tblHead = document.createElement("thead");
	  var tblheadRow = document.createElement("tr");
	  tabla.className = "table table-sm table-bordered table-hover";
	  tabla.setAttribute("id", "tblClientes");
	  tblheadRow.style = "text-align: center";
	  
	  // Creamos las cabeceras
	  for (var i = 0; i<=7; i++) {
		  var tblth = document.createElement("th");
		  tblth.setAttribute("scope", "col");

		  if (i===0) {
			  var thText = document.createTextNode("#");
		  }
		  if (i===1) {
			  var thText = document.createTextNode("DNI");
		  }
		  if (i===2) {
			  var thText = document.createTextNode("Nombre");
		  }
		  if (i===3) {
			  var thText = document.createTextNode("Primer Apellido");
		  }
		  if (i===4) {
			  var thText = document.createTextNode("Segundo Apellido");
		  }
		  if (i===5) {
			  var thText = document.createTextNode("Sexo");
		  }
		  if (i===6) {
			  var thText = document.createTextNode("Fecha de Nacimiento");
		  }
		  if (i===7) {
			  var thText = document.createTextNode("Modificar");
		  }
		  if (i===8) {
			  var thText = document.createTextNode("Nueva Visita");
		  }
		  tblth.appendChild(thText);		  
		  tblheadRow.appendChild(tblth);
	  }
	  tblheadRow.setAttribute("scope", "row");
	  tblheadRow.style.background = "rgb(255,125,100)";
	  // agrega las cabeceras a la fila de cabeceras
	  tblHead.appendChild(tblheadRow);
	  // posiciona el <thead> debajo del elemento <table>
	  tabla.appendChild(tblHead);
		    
	  // Crea las celdas
	  for (var i = 0; i < clientes.length; i++) {
		    // Crea las hileras de la tabla
		
		  var dataToTable = [];
		  dataToTable.push(clientes[i].numRegistrarCliente);
		  dataToTable.push(clientes[i].dni);
		  dataToTable.push(clientes[i].nombre);
		  dataToTable.push(clientes[i].primerApellido);
		  dataToTable.push(clientes[i].segundoApellido);
		  dataToTable.push(clientes[i].Sexo);
		  dataToTable.push(clientes[i].FechaDeNacimiento);
		  dataToTable.push(clientes[i].Modificar);
		  dataToTable.push(clientes[i].NuevaVisita);
		
		  var tblRow = document.createElement("tr");
		  tblRow.setAttribute("scope", "row");
		  tblRow.setAttribute("id", i);
		  tblRow.setAttribute("onClick", "onclickBookTable('" + i + "')")
		  tblRow.style = "text-align: center";
		  
		  for (var j = 0; j<=5; j++) {
			  // Crea un elemento <td> y un nodo de texto, haz que el nodo de
			  // texto sea el contenido de <td>, ubica el elemento <td> al final
			  // de la hilera de la tabla
			  var buttonValue = dataToTable[j];
			  var celda = document.createElement("td");
			  if (j <= 4) {
				  if (j===0) {
					  celda.setAttribute("id", "numReg" + i);
				  }
				  if (j===1) {
					  celda.setAttribute("id", "usr" + i);
				  }
			      var textoCelda = document.createTextNode(dataToTable[j]);
			  	  celda.appendChild(textoCelda);
			  }
			  else
			  {
				  var inputCtrl = document.createElement("INPUT");
				  var inputType = document.createAttribute("type");
				  var inputId = document.createAttribute("id");
				  var inputClass = document.createAttribute("class");
				  // Atributos
				  inputCtrl.setAttribute("class", "form-control btn btn-warning");
				  inputCtrl.setAttribute("type", "button");
				  //if (j === 5) {inputCtrl.setAttribute("name", "ver");}
				  //if (j === 6) {inputCtrl.setAttribute("id", "e"+ i);}
				  inputCtrl.setAttribute("id", "e"+ i);
				  inputCtrl.setAttribute("value", "Borrar");
				  inputCtrl.setAttribute("onClick", "onclickDelBookRow('" + i + "')")
				  celda.appendChild(inputCtrl);
			  }    
			  	
		      tblRow.appendChild(celda);
		  }
		   // agrega la hilera al final de la tabla (al final del elemento tblBody)
		  tblBody.appendChild(tblRow);
	 }
	 // posiciona el <tbody> debajo del elemento <table>
	  tabla.appendChild(tblBody);
	  // appends <table> into <body>
	  body.appendChild(tabla);
	  // modifica el atributo "border" de la tabla y lo fija a "2";
	  //tabla.setAttribute("border", "2");
	
};



function newBookData() {
	// Si se pulsa el botón Nueva haremos lo siguiente:
	// 1. Se mantienen los datos del cliente si es de tipo user
	// 2. Solo se vacían las fechas y el destino
	// 3. Se pasa el enfoque a la fecha de entrada
	// 4. A la hora de validar se mira en la base de datos de Reservas
	//    si el usuario ya tiene reservas. Si las tuviera
	//             numRegistrarCliente = appUsersReservas.length + 1
	//    si no tuviera entonces numRegistrarCliente = 1	
	if (document.getElementById("NewBookingButton").value === "Nueva Reserva") {
		// asignamos al número de reserva un valor vacío
		document.getElementById("dropdownMenuButton").value = "";
		document.getElementById("inputIniDate").value = "";
		document.getElementById("inputFinDate").value = "";
		document.getElementById("NewBookingButton").value = "Cancelar Nueva";
		document.getElementById("NewBookingButton").className = "btn btn-danger";
		var userBookData = appUsersReservas.filter(function(elt, i, array) {
			return (elt.usuario === appCurrentUser[0].usuario);
		});
		var numReservaAux = userBookData.length + 1;
		var numReserva = String(numReservaAux);
		document.getElementById("bookingId").value = numReserva;
	}
	else {
		// Si se cancela la nueva entonces recuperamos la primera reserva del usuario
		onclickBookTable(0);
		document.getElementById("NewBookingButton").value = "Nueva Reserva";
		document.getElementById("NewBookingButton").className = "btn btn-primary";
	}
}