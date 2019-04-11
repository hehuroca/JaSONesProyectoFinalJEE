/**
 * Funcions comunes a toda la aplicación web
 */

var strWindowFeatures = "menubar=yes,location=yes,resizable=yes,scrollbars=yes,status=yes";

function infoNomPartStyleChange (EltId, txtStyle) {
    // Cambiamos el atributo style del elemento indicado en EltId
	document.getElementById(EltId).style=txtStyle;
};

function openRequestedWeb(webRequired, whereOpen) {
	var windowObjectReference = 
		window.open(webRequired, whereOpen, strWindowFeatures);
	return windowObjectReference;
};

function phonesValidation(patron, txt) {
	
	// Función para comprobar los teléfonos informados en formulario de reservas
	var patternValidationOK = false;
	var telefonosSTR = txt.split(", ");
	
	for (var i=0; i<telefonosSTR.length; i++) {
		if (patron.test(telefonosSTR[i])) {
			patternValidationOK = true;
	    }
		else{
			// Con uno solo que no sea correcto forzamos la salida
			i = telefonosSTR.length;
			patternValidationOK = false;
		}
	}
	return patternValidationOK;
};


function emailsValidation(patron, txt) {
	
	// Función para comprobar los teléfonos informados en formulario de reservas
	var patternValidationOK = false;
	var emailsSTR = txt.split(", ");
	
	for (var i=0; i<emailsSTR.length; i++) {
		if (patron.test(emailsSTR[i])) {
			patternValidationOK = true;
	    }
		else{
			// Con uno solo que no sea correcto forzamos la salida
			i = emailsSTR.length;
			patternValidationOK = false;
		}
	}
	return patternValidationOK;
};

function valPatronesInputElements(frmElement) {
	// Comprobar si el txto suministrado se corresponde con EXPRESIONES REGULARES,
	// que son PATRONES que debe seguir un campo
	
	/* Aprendamos las Expresiones Regulares en - https://www.w3schools.com/js/js_regexp.asp */
	//var patron = /w3schools/i;
    //var patron = /^w3schools$/i;  //^ y $ obligan a que la cadena sea exacta al patrón
	var patronDni = /^[0-9XYZ][0-9]{7}[TRWAGMYFPDXBNJZSQVHLCKE]$/;
	var patronNombres = /^([A-ZÁÉÍÓÚ]{1}[a-zñáéíóú]+[\s]?)+$/; // tomado de https://aprende-web.net/javascript/js13_3.php
	var patronUsuarios = /^(?=\w*\d)(?=\w*[a-z])\S{6,10}$/;
	//var patronEmail = /^[\w]+@{1}[\w]+\.+[a-z]{2,3}$/;
	//var patronEmail = /[A-Z0-9._%+-]+@[A-Z0-9-]+.+.[A-Z]{2,4}/igm;
	var patronEmail = /^[a-z]+@[a-z]+\.[a-z]{2,4}((,\s?){1}[a-z]+@[a-z]+\.[a-z]{2,4})*$/g;
	//var patronTel = /^[9|6]{1}([\d]{2}[-]*){3}[\d]{2}$/;
	var patronTel = /^[9|6|7]{1}[\d]{8}$/;
	var patronPagWeb = /^http[s]?:\/\/[\w]+([\.]+[\w]+)+$/;
	// La contraseña debe tener al entre 8 y 16 caracteres, al menos un dígito, al menos una minúscula 
	// al menos una mayúscula. NO puede tener otros símbolos.
	// var patronPwds = /^(?=.*[A-Z].*[A-Z])(?=.*[!@#$&*])(?=.*[0-9].*[0-9])(?=.*[a-z].*[a-z].*[a-z]).{8}$/;
	var patronPwds = /^(?=\w*\d)(?=\w*[A-Z])(?=\w*[a-z])\S{8,16}$/;
	// Preguntamos por atributo type del objeto frmElement:
	// "blur" en caso de venir de dicho evento o "text" en el caso de un input
	var patronTextoOK = true;
	if (frmElement.type === "blur" ) {
		var textoEscrito = frmElement.target.value;
		var frmElementId = frmElement.target.id;
	   } 
	else {
		var textoEscrito = frmElement.value;
		var frmElementId = frmElement.id;
	   }
		
	/* The test() method is a RegExp expression method. It searches a string for a pattern, 
	   and returns true or false, depending on the result. */
	switch (frmElementId)
	 {
	   	// Los dos siguientes CASES validan los input del Formulario Login
	 case "inputUSR":
		   if (!patronUsuarios.test(textoEscrito)){
		   	   document.getElementById("inputUSR").className = "form-control btn-warning"
		   	   infoNomPartStyleChange ("expregUSR" , "display: inline");
		   	   patronTextoOK = false;
		   }
		   else {
		   	   document.getElementById("inputUSR").className = "form-control btn-default"
		   	   infoNomPartStyleChange ("expregUSR" , "display: none");
		   }
		   break;
	   	case "inputPWD":
		   if (!patronPwds.test(textoEscrito)){
		   	   document.getElementById("inputPWD").className = "form-control btn-warning"
			   infoNomPartStyleChange ("expregPWD" , "display: inline");
			   patronTextoOK = false;
		   }
		   else {
		   	   document.getElementById("inputPWD").className = "form-control btn-default"
		   	   infoNomPartStyleChange ("expregPWD" , "display: none");   
		   }
		   break;
		// Los dos siguientes CASES validan los input de un formulario con datos
		// tipo DNI, nombre, primerApellido, etc
	   	case "inputDni":
			   if (!patronDni.test(textoEscrito)){
			   	   infoNomPartStyleChange("dniWrong", "display: inline");
			   	   patronTextoOK = false;
			   }
			   else {
				   infoNomPartStyleChange("dniWrong", "display: none");
			   }
			   break;		   
	   	case "inputName":
			   if (!patronNombres.test(textoEscrito)){
			   	   infoNomPartStyleChange("nameWrong", "display: inline");
			   	   patronTextoOK = false;
			   }
			   else {
				   infoNomPartStyleChange("nameWrong", "display: none");
			   }
			   break;
	   	case "inputFirstLastName":
			   if (!patronNombres.test(textoEscrito)){
			   	   infoNomPartStyleChange("firstLastNameWrong", "display: inline");
			   	   patronTextoOK = false;
			   }
			   else {
				   infoNomPartStyleChange("firstLastNameWrong", "display: none");
			   }
			   break;
	   	case "inputSecondLastName":
			   if (!patronNombres.test(textoEscrito)){
			   	   infoNomPartStyleChange("secondLastNameWrong", "display: inline");
			   	   patronTextoOK = false;
			   }
			   else {
				   infoNomPartStyleChange("secondLastNameWrong", "display: none");
			   }
			   break;
	   	case "inputEmail":
			   if (!emailsValidation(patronEmail, textoEscrito)){
			   	   infoNomPartStyleChange("emailWrong", "display: inline");
			   	   patronTextoOK = false;
			   }
			   else {
				   infoNomPartStyleChange("emailWrong", "display: none");
			   }
			   break;
	   	case "inputTelefonos":
	   		  if (!phonesValidation(patronTel, textoEscrito)){
			   	   infoNomPartStyleChange("telefonosWrong", "display: inline");
			   	   patronTextoOK = false;
			   }
			   else {
				   infoNomPartStyleChange("telefonosWrong", "display: none");
			   }
			   break;  
	 }
	return patronTextoOK;
};

function validateForm(frmName) {
	// Validamos datos del formulario de reserva
	var formularioOK = true;
	var frmElement = document.getElementById(frmName).elements;
    for(var i = 0; i < frmElement.length; i++)
    {
    	switch (frmElement[i].id)
    	 {
    	   	case "inputUSR":
    	   	case "inputPWD":
    	   	case "inputDni":
    	   	case "inputName":
    	   	case "inputFirstLastName":
    	   	case "inputSecondLastName":
    	   	case "inputEmail":
    	   	case "inputTelefonos":   
    	   		// Validar el texto escrito en inputs de algunos formularios
    	   		if (!valPatronesInputElements(frmElement[i])) {
    	   			formularioOK = false;
    	   			//return formularioOK;
    	   		}
    	   		break;
    	 } 	
    	// Devolvemos True o False al final de la función

    }
	return formularioOK;
};