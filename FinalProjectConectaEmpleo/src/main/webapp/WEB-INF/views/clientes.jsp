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
	<link rel="stylesheet" href="<c:url value='/resources/project/css/index.css'/>" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<!-- Scripts propios y de Frameworks -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
	<script src="<c:url value='/resources/project/js/comunes.js' />"></script>
	<script src="<c:url value='/resources/project/js/reservarVuelo.js' />"></script>
	<script src="<c:url value='/resources/project/js/index.js' />"></script>
	<title>Clientes</title>
</head>
<body>

<!-- Barra de navegación superior -->
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <div class="collapse navbar-collapse" id="collapsibleNavbar">
    <ul class="navbar-nav">
      <li class="nav-item active" >
        <a class="nav-link" href="#">Crear cliente</a>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled" href="#">Nueva visita</a>
      </li>
    </ul>
  </div>  
</nav>

	<div class="container-fluid">
	
	<!-- Menú lateral izquierdo de navegación.  -->
	  <div class="row">
    	<div class="col-sm-3">
    		<a class="list-group-item-action" href= "#" target="contenedorIFRAME">Inicio</a>
    		<a class="list-group-item-action" href= "#" target="contenedorIFRAME">Usuarios</a>
    		<a class="list-group-item-action" href= "#" target="contenedorIFRAME">Clientes</a>
    		<a class="list-group-item-action" href= "#" target="contenedorIFRAME">Visitas</a>
    		<a class="list-group-item-action" href= "#" target="contenedorIFRAME">Servicios</a>
	
    	</div>
	<!-- Menu central con listado de clientes. -->
    	<div class="col-sm-9" id="">
    		<h4 align="center">Listado de clientes</h4>
    	 	<table class="table table-hover">
 	  			<thead>
 	  				<tr>
	 	    			<th scope="col">DNI</th> 
	 	   				<th scope="col">Nombre</th>
	 	   				<th scope="col">Primer Apellido</th>
	 	   				<th scope="col">Segundo Apellido</th>
	 	   				<th scope="col">Sexo</th>
	 	   				<th scope="col">Fecha de Nacimiento</th>
 	  				</tr>
				</thead>
				<tbody>
<%-- 					<jsp:useBean id="c" class="com.JaSONes.FinalProjectConectaEmpleo.model.Cliente"></jsp:useBean> --%>
					<c:forEach items="${allClients}" var="d">
						<c:set var="nombre" value="${nombre} ${primerApellido} ${segundoApellido}"></c:set>
						<tr>
							<td><c:out value="${dni}"></c:out></td>
							<td><c:out value="${nombre}"></c:out></td>
							<td><c:out value="${sexo}"></c:out></td>
							<td><c:out value="${peluqueroFavorito}"></c:out></td>				
						</tr>
					</c:forEach>
				</tbody>
			</table>
    	</div>
	</div>
	
<!-- Formulario de creacion de un nuevo cliente.  -->
	<div class="row">
		<h3>Formulario de registro de un cliente</h3>
		<form action="#" method="get" id="formRegistro">
<!-- dni -->
		<div id="grupoDni">
			<div class="form-group" id="dni">
				<label id="lblInputDni" for="dni">Dni:</label>
				<input class="form-control" type="text" id="dni" required name="dni" placeholder="Dni del cliente">		
			</div>
			<div  class="form-group" id="expreDni">
				<span>El dni tiene que llevar ocho números y una letra</span>
			</div>
				<div  class="form-group" id="dniErroneo">
					<span>El dni NO cumple el requisito</span>
				</div>
		</div>
<!--NOMBRE -->
		<div id="grupoName">
			<div class="form-group" id="nombre">
				<label id="lblInputNombre" for="nombre">Nombre:</label>
				<input class="form-control" type="text" id="nombre" required
					 name="nombre" placeholder="Nombre del cliente.">
			</div>	
			 	<div  class="form-group" id="expreNombre">
					<span>La Primera letra ha ser Mayúscula</span>
				</div>
				<div  class="form-group" id="nombreErroneo">
					<span>El Nombre NO cumple el requisito</span>
				</div>				
		</div>	
<!--PRIMER APELLIDO -->
		<div id="grpPrimerApellido">
			<div class="form-group" id= "primerApellido">
				<label id="lblInputPrimerApellido" for="primerApellido">Primer Apellido: </label>
				<input class="form-control" type="text" id="primerApellido" required
					 name="primerApellido" placeholder="Primer Apellido">
			</div>	
			<div  class="form-group" id="exprePrimerApellido">
				<span>La Primera letra ha ser Mayúscula</span>
			</div>
			<div class="form-group" id="primerApellidoErroneo">
				<span>El 1er Apellido NO cumple el requisito</span>
			</div>				
		</div>
<!--SEGUNDO APELLIDO -->
		<div id="grpSegundoApellido">
			<div class="form-group" id="segundoApellido">
				<label id="lblInputSegundoApellido" for="segundoApellido">Segundo Apellido: </label> 
				<input class="form-control" type="text" id="segundoApellido" required 
					name="segundoApellido" placeholder="Segundo Apellido">
			</div>				
				<div  class="form-group" id="expreSegundoApellido">
					<span>La Primera letra ha ser Mayúscula</span>
				</div>
				<div class="form-group" id="segundoApellidoErroneo">
					<span>El 2do Apellido NO cumple el requisito</span>
				</div>
		</div>	
<!--SEXO -->
		<div id="grpSexo">
			<div class="row" id="sexo">
				<div class="form-check form-check-inline">
					<label class="form-check form-check-inline" for="hombre">Hombre: </label> 
					<input class="form-check-input" type="radio" name="sexo" required
						 id="sexo" value="H"> 
				</div>
				<div class="form-check form-check-inline">
					<label class="form-check form-check-inline" for="mujer">Mujer: </label> 
					<input class="form-check" type="radio" name="sexo" required 
						id="sexo" value="M">
				</div>
			</div>	
		</div>	
<!--TELÉFONO -->
		<div id="grpTelefonos">
			<div class="form-group" id="telefonos">
				<label for="lblInputTlfContacto">Teléfono de contacto: </label> 
				<input class="form-control" type="text" id="tlfContacto" required 
					name="tlfContacto" placeholder="Introduzca el teléfono">
			</div>
			<div  class="form-group" id="expregTelefonos">
				<span>Ej: 934874524, 697897824 (Separador: ", ")</span>
			</div>
			<div class="form-group" id="telefonoErroneo">
				<span>Compruebe: 9 dígitos, "," y espacios</span>
			</div>			
		</div>
<!--EMAIL -->
		<div id="grpEmail">
			<div class="form-group">
				<label id="lblInputEmail" for="email">Correo Eléctronico</label> 
				<input class="form-control" type="text" id="email" required 
					name="email" placeholder="name@example.com"> 
			</div>
			<div  class="form-group" id="expregEmail">
				<span>Ej: usuario@gmail.com</span>
			</div>
			<div class="form-group" id="emailErroneo">
				<span>El correo NO cumple el requisito</span>
			</div>
		</div>
<!-- BOTÓN REGISTRO DEL CLIENTE-->
				<button type="submit" class="btn btn-primary">Registrar cliente</button>						  
		</form>
	 </div>
	
	</div>
</body>
</html>