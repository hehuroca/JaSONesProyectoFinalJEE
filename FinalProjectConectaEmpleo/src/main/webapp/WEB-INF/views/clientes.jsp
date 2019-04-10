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
	<style>
		/* Make the image fully responsive */
		.carousel-inner img {
		width: 100%;
		height: 300px;
		}
		/* Para quitar el scroll */
		iframe {
			overflow: auto;
			border: none;
		}
	</style>
	<style>
			#infoNombreIncorrecto, #infoPrimerApellidoIncorrecto, #infoSegundoApellidoIncorrecto,
			#infoTlfIncorrecto, #infoEmailIncorrecto, #infoFechAltaIncorrecto, #infoFechSalidaIncorrecto {
				display: none;
				color: red;
				/* visibility: hidden; */
			}
	</style>	
	

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
    	<div class="col-sm-9">
    	 	<table class="table table-hover">
 	  			<thead>
 	  				<tr>
	 	    			<th scope="col">DNI</th> 
	 	   				<th scope="col">Nombre</th>
	 	   				<th scope="col">Primer Apellido</th>
	 	   				<th scope="col">Segundo Apellido</th>
	 	   				<th scope="col">Sexo</th>
	 	   				<th scope="col">Peluquero Favorito</th>
 	  				</tr>
				</thead>
				<tbody>
					<jsp:useBean id="c" class="com.JaSONes.FinalProjectConectaEmpleo.model.Cliente"></jsp:useBean>
					<c:forEach items="${c.allClients}" var="d">
						<c:set var="dni" value="${d.dni}"></c:set>
						<tr>
							<td><c:out value="${d.dni}"></c:out></td>
							<td><c:out value="${d.nombre}"></c:out></td>
							<td><c:out value="${d.primerApellido}"></c:out></td>
							<td><c:out value="${d.segundoApellido}"></c:out></td>
							<td><c:out value="${d.sexo}"></c:out></td>
							<td><c:out value="${d.peluqueroFavorito}"></c:out></td>				
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
			<div class="form-group">
				<label for="dni">Dni:</label>
				<input class="form-control" type="text" id="dni" required name="dni" placeholder="Dni del cliente">
				<span id="dniErroneo">El dni no es correcto.</span>			
			</div>
<!--NOMBRE -->
			<div class="form-group">
				<label for="nombre">Nombre:</label>
				<input class="form-control" type="text" id="nombre" required name="nombre" placeholder="Nombre del cliente.">
				<span id="infoNombreIncorrecto">Nombre inválido</span>
					</div>		
<!--PRIMER APELLIDO -->
			<div class="form-group">
				<label for="primerApellido">Primer Apellido: </label>
				<input class="form-control" type="text" id="primerApellido" required name="primerApellido" placeholder="Primer Apellido">
				<span id="infoPrimerApellidoIncorrecto">Apellido inválido</span>
			</div>
<!--SEGUNDO APELLIDO -->
			<div class="form-group">
				<label for="segundoApellido">Segundo Apellido: </label> 
				<input class="form-control" type="text" id="segundoApellido" required name="segundoApellido" placeholder="Segundo Apellido">
				<span id="infoSegundoApellidoIncorrecto">Apellido inválido</span>
			</div>		
<!--SEXO -->
			<div class="row">
				<div class="col">
					<label class="form-check form-check-inline" for="hombre">Hombre: </label> 
					<input class="form-check" type="radio" name="sexo" required id="sexo" value="H"> 
				</div>
				<div class="col">
					<label class="form-check form-check-inline" for="mujer">Mujer: </label> 
					<input class="form-check" type="radio" name="sexo" required id="sexo" value="M">
				</div>
			</div>		
<!--TELÉFONO -->
			<div class="form-group">
				<label for="tlfContacto">Teléfono de contacto</label> 
				<input class="form-control" type="text" id="tlfContacto" required name="tlfContacto" placeholder="Introduzca el teléfono">
				<span id="infoTlfIncorrecto">Teléfono inválido</span>
			</div>
<!--EMAIL -->
			<div class="form-group">
				<label for="email">Correo Eléctronico</label> 
				<input class="form-control" type="text" id="email" required name="email" class="form-control" placeholder="name@example.com"> 
				<span id="infoEmailIncorrecto">Cuenta inválida</span>
			</div>
<!-- BOTÓN REGISTRO DEL CLIENTE-->
				<button type="submit" class="btn btn-primary">Registrar cliente</button>						  
		</form>
	 </div>
	
	</div>
</body>
</html>