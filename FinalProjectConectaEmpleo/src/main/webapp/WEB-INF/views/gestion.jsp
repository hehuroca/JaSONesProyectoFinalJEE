<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@taglib prefix="tags" tagdir="/WEB-INF/tags" %> --%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
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
<title>JaSONes - Gestión Peluquería</title>
</head>
<body>
<div id="container" class="container fluid">
		<div class="row" id="cabecera" >
			<div class="col-sm-9"></div>
			<div class="col-sm-3">
				<img src="<c:url value='/resources/project/images/jaSONes_fondoGris.png'/>"
				id="logo_cabecera">			
			</div>
			
		</div>
		<div class="row" id="contenido">
			<div class="col-sm-2" id="menu">
				<nav >

					<!-- Links -->
					<ul class="nav flex-column" >
					<br><br>
						<li class="nav-item">
						<a class="list-group-item-action" href= "#" target="contenedorIFRAME">Inicio</a>
						</li><br>
						<li class="nav-item">
						<a class="list-group-item-action" href= "#" target="contenedorIFRAME">Usuarios</a>
						</li><br>
						<li class="nav-item">
						<a class="list-group-item-action" href= "#" target="contenedorIFRAME">Clientes</a>
						</li><br>
						
						<li class="nav-item">
						<a class="list-group-item-action" href= "#" target="contenedorIFRAME">Visitas</a>
						</li><br>
						<li class="nav-item">
						<a class="list-group-item-action" href= "#" target="contenedorIFRAME">Servicios</a>
						</li><br>
						
						
						
					</ul>

				</nav>
			</div>
			<div class="col-sm-10" id="vistaGeneral">
				<iframe class="embed-responsive-item" class="embed-responsive-item" id="cliente" name="clientes"
					width="100%" height="100%" sandbox="allow-same-origin allow-scripts"></iframe>
			</div>


		</div>

	</div>

</body>
</html>