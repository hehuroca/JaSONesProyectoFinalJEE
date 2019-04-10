<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@taglib prefix="tags" tagdir="/WEB-INF/tags" %> --%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- <%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> --%>
<%-- <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%> --%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<!-- Design Responsive -->
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Estilos propios y de bootstrap 4.x	 -->
	<link rel="stylesheet" href="<c:url value='/resources/project/css/index.css'/>" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<!-- Scripts propios y de Frameworks -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
	<script src="<c:url value='/resources/project/js/comunes.js' />"></script>
	<script src="<c:url value='/resources/project/js/index.js' />"></script>
	<title>JaSONes - Gestión de Usuarios</title>
</head>
<body>
	<div class="container">
		<form action="#" method="get" id="frmLogin">
			<div class="form-row">
				<div class="col-md-3 mb-3"></div>
				<div class="col-md-6 mb-3" id="datosLogin">
					<div class="form-group" id="usuario">
				    	<label id="lblinputUSR" for="inputUSR"> Usuario:</label>
				    	<input type="text" class="form-control" id="inputUSR"
				    	       placeholder="Teclee su Usuario" name="inputUSR" required>
				    </div>
				    <div  class="form-group" id="expregUSR">
				    	<span>El Usuario debe tener de 6 a 10 caracteres, letras minusculas y 1, 
				    	      número al menos. Ningún simbolo.</span>
				    </div>
				    <div  class="form-group" id="usrIncorrecto">
				    	<span>El usuario no es correcto</span>
				    </div>
					<div class="form-group" id="password">
				    	<label id="lblinputPWD" for="inputPWD">  Contraseña:</label>
				    	<input type="password" class="form-control" id="inputPWD" 
				    	       placeholder="Teclee su Contraseña" name="inputPWD" required>
				    </div>
				    <div  class="form-group" id="expregPWD">
				    	<span>La Contraseña debe tener entre 8 y 16 caracteres, 1 dígito, 1 minúscula y 
				    	      1 mayúscula al menos. Ningún simbolo.</span>
				    </div>
				    <div class="form-group" id="pwdIncorrecto">
				    	<span>La Contraseña no es correcta</span>
				    </div>
				    <div class="form-group" id="textosAuxiliares">
				    	<p class="wellcomeText">Si no dispone de un usuario no podrá acceder
						                        al contenido de la página web de Gestión de Peluquerías</p>
					    <p class="wellcomeText">Cree uno primero en tal caso.<p>
				    </div>
				    <div><input id="btnLogin" type="button" class="btn btn-primary" 
					   			value="Validar Usuario / Acceder"></div>
		          	<div><input id="btnNewUser" type="button" class="btn btn-secondary"  
		          				value="Crear Usuario"></div>
<!-- 				    <input  id="userValidation" class="btn btn-primary" type="button" value="Validar Usuario / Acceder"> -->
<!-- 					<input  id="userNewValidation" class="btn btn-secondary" type="button" value="Crear Usuario"> -->
				</div>
				<div class="col-md-3 mb-3"></div>
			</div>				    
<!-- 			<div class="form-row"></div> -->
		</form>
	</div>

	<script>
		// Manejadores de Evento para elementos de la página Web
		
		document.getElementById("inputUSR").addEventListener("blur", valPatronesInputElements);
		document.getElementById("inputPWD").addEventListener("blur", valPatronesInputElements);
		
// 		document.getElementById("userValidation").addEventListener("click", validateUser);
// 		document.getElementById("userNewValidation").addEventListener("click", validateUser);
		
		document.getElementById("btnNewUser").addEventListener("click", newUserButtonCLICKEvent);
		document.getElementById("btnLogin").addEventListener("click", loginButtonCLICKEvent);
		
	</script> 

</body>
</html>