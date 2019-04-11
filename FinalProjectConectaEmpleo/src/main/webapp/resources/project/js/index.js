/**
 *  AQUI VA EL CODIGO JAVA SCRIPT DEL FORMULARIO index.jsp
 */

// Usuarios de la web
// Controlamos los eventos click de los botones para validar un usuario
//

function savingInputUser(userLogin, pwdLogin) {
	
	// Operamos sobre los botones de la barra de menú
	infoNomPartStyleChange ("expregUSR" , "display: none");
	infoNomPartStyleChange ("expregPWD" , "display: none");
	infoNomPartStyleChange ("inputUSR" , "display: none");
	infoNomPartStyleChange ("inputPWD" , "display: none");
	document.getElementById("currentUserName").disabled = false;
	document.getElementById("currentUserName").value = userLogin;
	infoNomPartStyleChange ("currentUserName" , "display: inline");
	document.getElementById("currentUserName").disabled = true;
	document.getElementById("datosReservas").value = "Ver Reservas";
	document.getElementById("datosReservas").className = "btn btn-success";

	// Asignamos el usuario validado como usuario actual de la web
	setAppCurrentUser(userLogin);
	
	// Mostramos el formulario de Reservas
	infoNomPartStyleChange ("titulo2" , "display: flex");
	infoNomPartStyleChange ("mainContainer" , "display: inline-grid");
	location.hash = "#datosReservas";

};


function validateUserPatterns() {
	// Función que da paso al usuario para visualizar la página principal
	// obj es el objeto que recibimos desde el evento click de los botones
	// VALIDAR USUARIO o CREAR USUARIO
	var userVerify = true;
	var userCreate = false;
	var userLogin = document.getElementById("inputUSR").value;
	var pwdLogin = document.getElementById("inputPWD").value;
	
	//  Se ha hecho clic en el botón Login/Entrar o Crear

	/*	Si el usuario y contraseña introducidos siguen los patrones serán correctos.
		Procederemos entonces a verificar si dichos datos se corresponden con los
		datos de algún usuario de la web y que están guardados en nuestra
		variable llamada appUsers */
		
	if (userLogin ==="" || pwdLogin ==="") {
		DatosPatronesOK = false;	
	}
	else {
		var userPatternOK = valPatronesInputElements(userLogin);
		var userPwdPatternOK = valPatronesInputElements(pwdLogin);
		
		var DatosPatronesOK = userPatternOK && userPwdPatternOK;
	}
	
	return DatosPatronesOK;
	
}

function cancelButtonCLICKEvent() {
	document.getElementById("inputUSR").value = "";
	document.getElementById("inputPWD").value = "";
	infoNomPartStyleChange ("usrIncorrecto" , "display: none");
};

function loginButtonCLICKEvent() {

	event.preventDefault();
	event.stopPropagation();
	
	var DatosPatronesOK = validateUserPatterns();
	
	if (DatosPatronesOK) {
	
		var objUser = new Object();
		objUser.login = document.getElementById("inputUSR").value;
		objUser.passkey = document.getElementById("inputPWD").value;
		
		var stringJSONUser = JSON.stringify(objUser);
		var xhttp = new XMLHttpRequest();
		
		xhttp.onreadystatechange = function() {
			if (this.readyState === 4 && this.status === 200) {
				var respuestaRecibida = this.responseText;			
				// chequeamos si usuario es correcto
				if(respuestaRecibida === "userLogginERR"){
			  		infoNomPartStyleChange ("usrIncorrecto" , "display: inline");		    
				}
				else {
					openRequestedWeb("gestion", "_self");
				}
			}
		};
		
		xhttp.open("POST", "loginControl", true);
		xhttp.setRequestHeader("Content-type",
							   "application/x-www-form-urlencoded");
		xhttp.send("userJSON="+stringJSONUser);

	}
	
};

function newUserButtonCLICKEvent () {
	
	event.preventDefault();
	event.stopPropagation();
	
	var objUser = new Object();
	objUser.login = document.getElementById("inputUSR").value;
	objUser.passkey = document.getElementById("inputPWD").value;
	
	var stringJSONUser = JSON.stringify(objUser);
	
	var xhttp = new XMLHttpRequest();
	
	xhttp.onreadystatechange = function() {
		if (this.readyState === 4 && this.status === 200) {
			var respuestaRecibida = this.responseText;			
			// chequeamos si usuario es correcto
			if(respuestaRecibida === "userAltaERR"){
		  		infoNomPartStyleChange ("usrIncorrecto" , "display: inline");		    
			}
			else {
				openRequestedWeb("gestion", "_self");
			}
		}
	};
	
	xhttp.open("POST", "loginNewUser", true);
	xhttp.setRequestHeader("Content-type",
						   "application/x-www-form-urlencoded");
	xhttp.send("userJSON="+stringJSONUser);
	
};