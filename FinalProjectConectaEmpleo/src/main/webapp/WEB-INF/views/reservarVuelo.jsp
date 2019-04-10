<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@taglib prefix="tags" tagdir="/WEB-INF/tags" %> --%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
<!-- Design Responsive -->
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Estilos propios y de bootstrap 4.x	 -->
	<link rel="stylesheet" href="<c:url value='/resources/project/css/reservarVuelo.css'/>" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<!-- Scripts propios y de Frameworks -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
	<script src="<c:url value='/resources/project/js/comunes.js' />"></script>
	<script src="<c:url value='/resources/project/js/reservarVuelo.js' />"></script>
	<title>Aeropuerto La Corredoria</title>
</head>
<body>
	<div class="container-fluid">
		<div class="col-md-12 fixed-top" id="tituloPrincipal">
			<h1>Gestión de Reservas</h1>
		</div>
		<div class="col-md-12" id="vuelosProgramados">
			<div>
				<label id="lblListaVuelos" for="vuelos">Vuelos Programados:</label>
			</div>
			<div id="listaVuelos">
				<select id="vuelos">
					<option></option>
					<c:forEach items="${vuelos}" var="v">
						<option value='<c:out value="${v.id}"></c:out>'>
							<c:out value="Destino: ${v.destino} Hora Salida: ${v.fechaHoraSalida}"></c:out>
						</option>
					</c:forEach>			
				</select>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12" id="tituloFrmReservas">
				<h4>Formulario de Reservas</h4>
			</div>
		</div>
		<div class="col-md-12" id="mainContainer">
			<form:form id="frmReservarVuelo" action="altaPasajero" method="post" modelAttribute="altaPasajero">
				<div class="row">
					<div id="grpdatosIdentidad0">
						<div class="col-md-4" id="grpName">
							<div class="form-group" id="name">
						    	<form:label id="lblInputName" for="inputName" path="nombre">Nombre:</form:label>
						    	<form:input type="text" cssClass="form-control" id="inputName"
						    	       placeholder="su Nombre" path="nombre"></form:input>
						    </div>
						    <div  class="form-group" id="expregName">
						    	<span>La Primera letra ha ser Mayúscula</span>
						    </div>
						    <div  class="form-group" id="nameWrong">
						    	<span>El Nombre NO cumple el requisito</span>
						    </div>
						</div>
						<div class="col-md-4" id="grpFirstLastName">
							<div class="form-group" id="firstlastName">
						    	<form:label id="lblInputFirstLastName" for="inputFirstLastName" 
						    			path="primerApellido">Primer Apellido:</form:label>
						    	<form:input type="text" cssClass="form-control" id="inputFirstLastName" 
						    			placeholder="su Primer Apellido" path="primerApellido"></form:input>
						    </div>
						    <div  class="form-group" id="expregFirstLastName">
						    	<span>La Primera letra ha ser Mayúscula</span>
						    </div>
						    <div class="form-group" id="firstLastNameWrong">
						    	<span>El 1er Apellido NO cumple el requisito</span>
						    </div>
						</div>    
						<div class="col-md-4" id="grpSecondLastName">
							<div class="form-group" id="secondlastName">
						    	<form:label id="lblInputSecondLastName" for="inputSecondLastName" 
						    			path="segundoApellido">Segundo Apellido:</form:label>
						    	<form:input type="text" cssClass="form-control" id="inputSecondLastName" 
						    			placeholder="su Segundo Apellido" path="segundoApellido"></form:input>
						    </div>
						    <div  class="form-group" id="expregSecondLastName">
						    	<span>La Primera letra ha ser Mayúscula</span>
						    </div>
						    <div class="form-group" id="secondLastNameWrong">
						    	<span>El 2do Apellido NO cumple el requisito</span>
						    </div>
						</div>
					</div>
				</div>
				<div class="row">
					<div id="grpdatosIdentidad1">	
						<div class="col-md-6" id="grpTelefonos">
							<div class="form-group" id="telefonos">
						    	<form:label id="lblInputTelefonos" for="inputTelefonos" 
						    			path="telefonos">Teléfono(s):</form:label>
						    	<form:input type="text" cssClass="form-control" id="inputTelefonos" 
						    			placeholder="sus Teléfonos" path="telefonos"></form:input>
						    </div>
						    <div  class="form-group" id="expregTelefonos">
						    	<span>Ej: 934874524, 697897824 (Separador: ", ")</span>
						    </div>
						    <div class="form-group" id="telefonosWrong">
						    	<span>Compruebe: 9 dígitos, "," y espacios</span>
						    </div>
						</div>	
						<div class="col-md-6" id="grpEmail">
							<div class="form-group" id="email">
						    	<form:label id="lblInputEmail" for="inputEmail" 
						    			path="correos">Correo(s) Electrónico(s):</form:label>
						    	<form:input type="text" cssClass="form-control" id="inputEmail" 
						    			placeholder="su E-mail" path="correos"></form:input>
						    </div>
						    <div  class="form-group" id="expregEmail">
						    	<span>Ej: usuario@gmail.com</span>
						    </div>
						    <div class="form-group" id="emailWrong">
						    	<span>El correo NO cumple el requisito</span>
						    </div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12" id="btnSubmit">
						<input class="btn btn-success" id="btnValidationBook" 
							   type="submit" value="Reservar Vuelo">
						<output id="altaOK"></output>
					</div>
				</div>					
			</form:form>	
		</div>
		<div class="row">
			<div class="col-md-12" id="tituloDatosVuelo">
				<h4 id="txtjs"></h4>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12" id="listaPasajeros">			
			</div>
		</div>	
	</div>	
</body>
<script>
	document.getElementById("frmReservarVuelo")
				.addEventListener("submit", frmReservarVueloSUBMITEvent);
	document.getElementById("vuelos")
		.addEventListener("change", vuelosCHANGEEvent);
</script>
</html>