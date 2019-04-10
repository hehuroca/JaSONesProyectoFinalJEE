<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@taglib prefix="tags" tagdir="/WEB-INF/tags" %> --%>
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
	<link rel="stylesheet" href="<c:url value='/resources/project/css/modelo1.css'/>" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<!-- Scripts propios y de Frameworks -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
	<script src="<c:url value='/resources/project/js/comunes.js' />"></script>
	<script src="<c:url value='/resources/project/js/reservarVuelo.js' />"></script>
	<script src="<c:url value='/resources/project/js/index.js' />"></script>
	<title>Aeropuerto La Corredoria</title>
</head>
<body style="">
	<div class="container-fluid">
		<div class="col-md-3" id="menuBtns">
			<a href="login.jsp" target="x">Login</a>
			<a href="clientes.jsp" >Login</a>
			<a href="login.jsp" >Login</a>
			<a href="login.jsp" >Login</a>
		</div>
		<div class="col-md-9">
			<iframe id="x" scr=></iframe>
		</div>
	 	<div class="row fixed-top" id="menuBtns">
	      	<!-- Trigger the modal with a button -->
<!-- 	    <input id="reservar" type="button" class="btn btn-info btn-lg"  -->
<!-- 	      			data-toggle="modal" data-target="#myModal" value="Reservar"> -->
	      	<input id="btnReservar" type="button" class="btn btn-success btn-lg" 
	      			data-backdrop="static" data-keyboard="false" 
	      			data-show="false" data-target="#myModal" value="Reservar">			
	 	</div>
 		<!-- Modal -->
		<div class="modal fade" id="myModal" role="dialog">
		    <div class="modal-dialog modal-dialog-centered">    
		<!-- Modal content -->
		      <div class="modal-content">
		      	<div class="modal-header" id="modalHeader">
		        	<h4 class="modal-title">Identificarse para Reservar</h4>
		        </div>
		        <div class="modal-body">
					<form id="frmLogin">
						<div class="form-group" id="usuario">
					    	<label id="lblinputUSR" for="inputUSR"> Usuario:</label>
					    	<input type="text" class="form-control btn-default" id="inputUSR"
					    	       placeholder="Teclee su Usuario" name="inputUSR" required>
			    		</div>
			    		<div class="form-group" id="password">
					    	<label id="lblinputPWD" for="inputPWD">  Contraseña:</label>
					    	<input type="password" class="form-control btn-default" id="inputPWD" 
					    	       placeholder="Teclee su Contraseña" name="inputPWD" required>
			    		</div>
						<div class="form-group" id="usrIncorrecto">
				  			<span>El usuario o la contraseña no son correctos</span>
				  		</div>
					</form>
		        </div>
		        <div class="modal-footer" id="modalFooter">
		        	<div><input id="btnLogin" type="button" 
					   			class="btn btn-default" data-dismiss="modal" 
					   			value="Aceptar"></div>
		          	<div><input id="btnCancel" type="button" 
		          				class="btn" data-dismiss="modal" 
		          				value="Cancelar"></div>
		        </div>
		      </div>			      
		    </div>
		</div>
		<div class="row" id="vuelosPasajeros">
<%-- 			<jsp:useBean id="m" class="com.hehuroca.CPFinalMod4.model.Modelo"></jsp:useBean> --%>
			<c:if test="${not empty pasajerosPorDestino }" >
				<c:forEach var="entry" items="${pasajerosPorDestino}">
					<h3 id="titulo1">Vuelo destino: <c:out value="${entry.key}"></c:out></h3>
					<table class="table table-hover">
		<!-- 			<table class="table table-striped"> -->
					  	<thead class="thead-light">
				 	  		<tr>
						 	    <th scope="col" style="width: 30%">Nombre</th> 
						 	    <th scope="col" style="width: 35%">Teléfonos</th>
						 	    <th scope="col" style="width: 35%">Correos</th>
				 	  		</tr>
						</thead>
						<tbody>
							<c:forEach items="${entry.value}" var="p">
								<c:set var="nombre" value="${p.nombre} ${p.primerApellido} ${p.segundoApellido}"></c:set>
						 	   	<tr> 
			 	  					<td><c:out value="${nombre}"></c:out></td>
			 	  					<td><c:out value="${p.telefonos}"></c:out></td>
			 	  					<td><c:out value="${p.correos}"></c:out></td> 
			 	  				</tr>
				 			</c:forEach>	  	
			 	 		</tbody>  
		 			</table>
		 		</c:forEach>
		 	</c:if>
		</div>
	</div>
</body>
<script>
	document.getElementById("btnReservar").addEventListener("click", reservarButtonCLICKEvent);
	document.getElementById("btnCancel").addEventListener("click", cancelButtonCLICKEvent);
	document.getElementById("btnLogin").addEventListener("click", loginButtonCLICKEvent);
</script>

</html>