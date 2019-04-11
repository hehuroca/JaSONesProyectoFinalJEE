<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
<!-- Design Responsive -->
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Estilos propios y de bootstrap 4.x	 -->
	<link rel="stylesheet" href="<c:url value='/resources/project/css/clientes.css'/>" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<!-- Scripts propios y de Frameworks -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
	<script src="<c:url value='/resources/project/js/comunes.js' />"></script>
	<script src="<c:url value='/resources/project/js/clientes.js' />"></script>
	<script src="<c:url value='/resources/project/js/index.js' />"></script>
	<title>Clientes</title>
</head>
<body>

<!-- Barra de navegación superior -->
	<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
	  <div class="collapse navbar-collapse" id="collapsibleNavbar">
	    <ul class="navbar-nav">
	      <li class="nav-item active" >
	      	<input class="btn btn-outline-dark" id="btnNewCustomer" type="button" value="Crear Cliente">
	      </li>
	      <li class="nav-item">
	        <input class="btn btn-outline-dark" id="btnNewVisit" type="button" value="Otra Opción">
	      </li>
	    </ul>
	  </div>  
	</nav>

<!-- Contenedor Principal -->
	<div class="container-fluid">			
		<div class="row" id="grpListadoClientes">
			<div class="col-md-12" id="tituloDatosVuelo">
				<h4 id="clientsListTitle">Listado de clientes</h4>
			</div>
		<!-- Menu central con listado de clientes. -->
	    	<div class="col-md-12" id="listadoClientes">
	    	 	<table class="table table-hover">
	 	  			<thead>
	 	  				<tr align="center">
		 	    			<th scope="col">DNI</th> 
		 	   				<th scope="col">Nombre</th>
		 	   				<th scope="col">Sexo</th>
		 	   				<th scope="col">Fecha de Nacimiento</th>
		 	   				<th scope="col">Acciones</th>
	 	  				</tr>
					</thead>
					<tbody>
						<c:forEach items="${listaClientes}" var="cliente">
							<c:set var="nombre" value="${cliente.nombre} ${cliente.primerApellido} ${cliente.segundoApellido}"></c:set>
							<tr>
								<td align="center"><c:out value="${cliente.dni}"></c:out></td>
								<td align="left"><c:out value="${nombre}"></c:out></td>
								<td align="center"><c:out value="${cliente.sexo}"></c:out></td>
								<td align="center"><c:out value="${cliente.fechaNacimiento}"></c:out></td>
								<td align="center">
									<input id ="btnEdit" type="button" class="btn btn-outline-dark" 
					       				   onClick="onclickEditCustomer('${cliente.dni}', '${nombre}')" value="Editar">
									<input id ="btnNewVisit" type="button" class="btn btn-outline-dark" 
					       				   onClick="onclickNewVisit('${cliente.dni}')" value="Nueva Visita">
					       		</td>				
							</tr>
						</c:forEach>
					</tbody>
				</table>
	    	</div>
		</div>	
	<!-- Formulario de creacion de un nuevo cliente.  -->
		<div class="row" id="grpAddCustomer">
			<div class="col-md-12" id="tituloPrincipal">
				<h3 id="frmCaption"></h3>
			</div>
			<div class="col-md-12" id="mainContainer">			
				<form action="" method="post" id="formDatosCliente">
					<div class="row">
						<div id="grpdatosIdentidad0">
						<!-- dni -->
							<div class="col-md-3" id="grpDni">
								<div class="form-group" id="dni">
									<label id="lblInputDni" for="inputDni">Dni:</label>
									<input class="form-control" type="text" id="inputDni" required 
								    	   name="dni" placeholder="Dni del cliente">		
								</div>
								<div  class="form-group" id="expregDni">
									<span>El dni tiene que llevar ocho números y una letra</span>
								</div>
								<div  class="form-group" id="dniWrong">
									<span>El dni NO cumple el requisito</span>
								</div>
							</div>
						<!--NOMBRE -->
							<div class="col-md-3" id="grpName">
								<div class="form-group" id="name">
									<label id="lblInputName" for="inputName">Nombre:</label>
									<input class="form-control" type="text" id="inputName" required
									       name="nombre" placeholder="Nombre del cliente.">
								</div>	
							 	<div  class="form-group" id="expregName">
									<span>La Primera letra ha ser Mayúscula</span>
								</div>
								<div  class="form-group" id="nameWrong">
									<span>El Nombre NO cumple el requisito</span>
								</div>				
							</div>	
						<!--PRIMER APELLIDO -->
							<div class="col-md-3" id="grpFirstLastName">
								<div class="form-group" id= "firstlastName">
									<label id="lblInputFirstLastName" for="inputFirstLastName">Primer Apellido: </label>
									<input class="form-control" type="text" id="inputFirstLastName" required
										   name="primerApellido" placeholder="Primer Apellido">
								</div>	
								<div class="form-group" id="expregFirstLastName">
									<span>La Primera letra ha ser Mayúscula</span>
								</div>
								<div class="form-group" id="firstLastNameWrong">
									<span>El 1er Apellido NO cumple el requisito</span>
								</div>				
							</div>
						<!--SEGUNDO APELLIDO -->
							<div class="col-md-3" id="grpSecondLastName">
								<div class="form-group" id="secondlastName">
									<label id="lblInputSecondLastName" for="inputSecondLastName">Segundo Apellido: </label> 
									<input class="form-control" type="text" id="inputSecondLastName" required 
									       name="segundoApellido" placeholder="Segundo Apellido">
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
						<!--SEXO -->
							<div class="col-md-3" id="grpSex">
								<div class="form-group" id="sex">
									<div id="divlblSex">
										<label id="lblInputSex">Sexo:</label>
									</div>
									<div id="divlblSexData">
									    <div class="form-check form-check-inline">
											<input class="form-check-input" type="radio" name="sex" id="inputSex1" value="M">
											<label class="form-check-label" for="inputSex1">Mujer</label>
										</div>
										<div class="form-check form-check-inline">
											<input class="form-check-input" type="radio" name="sex" id="inputSex2" value="H">
											<label class="form-check-label" for="inputSex2">Hombre</label>
										</div>
									</div>
								</div>	    
							</div>
						<!--FECHA NACIMIENTO -->
							<div class="col-md-3" id="grpBirthDay">
								<div class="form-group" id="birthDay">
									<label id="lblInputFechaNac" for="inputBirthDay">Fecha de Nacimiento: </label> 
									<input class="form-control" type="date" id="inputBirthDay" required 
					    		           name="fechaNacimiento" placeholder="Fecha de Nacimiento">
								</div>
<!-- 								<div class="form-group" id="expregFechaNac"> -->
<!-- 									<span>Ej: 934874524, 697897824 (Separador: ", ")</span> -->
<!-- 								</div> -->
<!-- 								<div class="form-group" id="Fecha"> -->
<!-- 									<span>Compruebe: 9 dígitos, "," y espacios</span> -->
<!-- 								</div>			 -->
							</div>	
						<!--TELÉFONO -->
							<div class="col-md-3" id="grpPhones">
								<div class="form-group" id="phones">
							    	<label id="lblInputTelefonos" for="inputTelefonos">Teléfonos:</label>
							    	<input type="text" class="form-control" id="inputTelefonos" 
							    	       placeholder="Números de Teléfono" name="telefonos" required>
							    </div>
							    <div  class="form-group" id="expregTelefonos">
							    	<span>Ej: 934874524, 697897824 (Separador: ", ")</span>
							    </div>
							    <div class="form-group" id="telefonosWrong">
							    	<span>Compruebe: 9 dígitos, "," y espacios</span>
							    </div>
							</div>
						<!--EMAIL -->
							<div class="col-md-3" id="grpEmails">
								<div class="form-group" id="emails">
							    	<label id="lblInputEmail" for="inputEmail">Correo Electrónico:</label>
							    	<input type="text" class="form-control" id="inputEmail" 
							    	       placeholder="su E-mail" name="correos" required>
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
				<!-- BOTÓN REGISTRO DEL CLIENTE-->
					<div class="row">
						<div class="col-md-12" id="btnSubmit">
							<input id ="btnRegValidation "type="submit" class="btn btn-outline-dark" 
							       type="button" value="Actualizar Datos">
							<input id ="btnCancelValidation "type="button" class="btn btn-outline-dark" 
							       type="button" value="Cancelar" onClick="btnCancelValidationCLICKEvent()">
						</div>
					</div>							  
				</form>
			</div>	
		</div>
	</div>
</body>
<script>
	document.getElementById("formDatosCliente")
	.addEventListener("submit", formDatosClienteSUBMITEvent);
	document.getElementById("btnNewCustomer")
	.addEventListener("click", btnNewCustomerCLICKEvent);

</script>
</html>