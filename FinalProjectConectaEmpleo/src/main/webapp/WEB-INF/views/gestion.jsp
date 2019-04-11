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
	<link rel="stylesheet" href="<c:url value='/resources/project/css/gestion.css'/>" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<!-- Scripts propios y de Frameworks -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
	<script src="<c:url value='/resources/project/js/comunes.js' />"></script>
	<script src="<c:url value='/resources/project/js/gestion.js' />"></script>
<title>JaSONes - Gestión Peluquería</title>
</head>
<body>
	<div id="container" class="container fluid">
		<div class="row fixed-top" id="header" >
			<div class="col-sm-9"></div>
			<div class="col-sm-3">
				<img src="<c:url value='/resources/project/images/jaSONes_fondoGris.png'/>"
				id="logo_cabecera">			
			</div>	
		</div>
		<div class="row" id="contenido">
			<div class="col col-md-2" id="menu">
				<nav class="nav flex-md-column">
					<ul class="nav flex-md-column" >
						<li class="nav-item">
<!-- 							<a class="list-group-item-action" href= "#" target="iframeContents">Inicio</a> -->
<!-- 						</li> -->
<!-- 						<li class="nav-item"> -->
<!-- 							<a class="list-group-item-action" href= "#" target="iframeContents">Usuarios</a> -->
<!-- 						</li> -->
						<li class="nav-item">
							<a class="list-group-item-action" href= "clientes" target="iframeContents">Clientes</a>
						</li>
						<li class="nav-item">
							<a class="list-group-item-action" href= "#" target="iframeContents">Visitas</a>
						</li>
						<li class="nav-item">
							<a class="list-group-item-action" href= "#" target="iframeContents">Servicios</a>
						</li>
					</ul>
				</nav>
			</div>
			<div class="col col-md-10 embed-responsive-16by9" id="vistaGeneral">
				<iframe class="embed-responsive-item" class="embed-responsive-item" id="iframeContents" name="iframeContents" 
						width="100%" height="100%" sandbox="allow-same-origin allow-scripts"></iframe>
			</div>
		</div>
		<div class="row fixed-bottom" id="footer" >
			<div id="leftFooter" class="col-sm-6">JaSONes Asesores SL</div>
			<div id="rightFooter" class="col-sm-6"><a href="http://www.jasonesasesores.com">http://www.jasonesasesores.com</a></div>	
		</div>
	</div>
</body>
</html>