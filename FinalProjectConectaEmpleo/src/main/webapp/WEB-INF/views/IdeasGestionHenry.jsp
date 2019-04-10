<!DOCTYPE html>
<html>
<head>

	<meta charset="UTF-8">
	<title>ColTUR - Viajes Turísticos</title>

<!-- Design Responsive -->
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Estilos propios y de bootstrap 4.x	 -->
	<link rel="stylesheet" href="css/index.css">
	<link rel="stylesheet" href="css/formLogin.css">
	<link rel="stylesheet" href="css/formReservas.css">
 	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.css">
  	
<!-- Scripts propios y de Frameworks -->
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.js"></script> 	
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.js"></script>
	<script src="js/commonScripts.js"></script>
	<script src="js/formReservas.js"></script>
	<script src="js/formLogin.js"></script>
	<script src="js/index.js"></script>

</head>
<body>

<!--La clase img-fluid pone max-width:100% y height: auto
	Se pueden usar width y height igualmente si interesa 
	manipular estos valores -->
	<div class="container-fluid">
		<!-- Fila 1 - Barra de navegación -->
		<div class="row">
			<div class="col" style="background-color:lightblue">
		<!-- Aquí pondremos el menú de navegación -->
				<nav class="navbar fixed-top navbar-light bg-light">
					  <div class="navbar-expand" id="navbarNavDropdown">
					    <ul class="navbar-nav">
					      <li class="nav-item active">
					        <a class="nav-link" href="#demo">Ir al inicio</a>
					      </li>
					      <li class="nav-item">
					        <a class="nav-link" href="https://www.google.com/maps/" target="_blank">Google Maps</a>
					      </li>
<!-- 					      <li class="nav-item dropdown"> -->
<!-- 					        <a class="nav-link dropdown-toggle" href="#" id="menuUsuarios"  -->
<!-- 					           data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Usuarios</a> -->
<!-- 					        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink"> -->
<!-- 					          <a class="dropdown-item" href="#titulo2">Reservar</a> -->
<!--  					      <a class="dropdown-item" href="#">Ver tus Reservas</a> -->
<!--  					      <a class="dropdown-item" href="#">Something else here</a> -->
<!-- 					        </div> -->
<!-- 					      </li> -->
					      <li class="nav-item">
					      	<div><input type="text" class="form-control" id="currentUserName" 
					      	            name="currentUserName"></div>
					      </li>
					      <li class="nav-item">
					      	<div><input type="text" class="form-control btn-default" id="inputUSR" 
					      	            name="inputUSR" placeholder="Usuario"></div>
					      </li>
					      <li class="nav-item">
					      	<div><input type="password" class="form-control btn-default" id="inputPWD" 
					      	            name="inputPWD" placeholder="Contraseña"></div>
					      </li>
					      <li class="nav-item">
					      	<div><input type="button" class="btn btn-primary" id="datosReservas" 
					      	            name="datosReservas" value="Login/Entrar"></div>
					      </li>
					      <li class="nav-item">
						    <div id="expregUSR">
						    	<span>Usuario: 6 a 10 caracteres, letras minusculas y 1 número al menos. Ningún simbolo.</span>
						    </div>
						  </li>
					      <li class="nav-item">
						    <div id="expregPWD">
						    	<span>Contraseña: 8-16 caracteres, 1 número, 1 minúscula y 1 mayúscula al menos. No simbolos.</span>
						    </div>
						  </li>					      
					    </ul>
					  </div>
				</nav>
			</div>
		</div>
		<!-- Fila 2 - Carrusel -->
		<div class="row">
			<div id="demo" class="col carousel slide" data-ride="carousel">
			<!-- Aquí pondremos el carrusel -->
			 <!-- Indicators -->
  				<ul class="carousel-indicators">
				    <li data-target="#demo" data-slide-to="0" class="active"></li>
				    <li data-target="#demo" data-slide-to="1"></li>
				    <li data-target="#demo" data-slide-to="2"></li>
  				</ul>
  			 <!-- The slideshow -->
				  <div align="center" class="carousel-inner">
				    <div class="carousel-item active">
				    	<img src="imagenes/Colombia-turismo-Villa-de-Leyva.jpg" alt="Colombia - Villa de Leyva">
				    </div>
				    <div class="carousel-item">
				    	<img src="imagenes/Colombia-turismo-Leticia.jpg" alt="Colombia - Leticia">
				    </div>
				    <div class="carousel-item">
				    	<img src="imagenes/Colombia-turismo-Tayrona.jpg" alt="Colombia - Tayrona">
				    </div>
				  </div>
				  
				  <!-- Left and right controls -->
				  <a class="carousel-control-prev" href="#demo" data-slide="prev">
				    <span class="carousel-control-prev-icon"></span>
				  </a>
				  <a class="carousel-control-next" href="#demo" data-slide="next">
				    <span class="carousel-control-next-icon"></span>
				  </a>
			</div>
		</div>
		<!-- Fila 3 Texto -->
		<div class="row">			
			<div class="col container" id="titulo1">
				<h2 align="center">Reserva tu viaje a tus destinos favoritos</h2>
			</div>		
		</div>
		<!-- Fila 4 de 2 columnas - Menú de Sitios Turísticos -->
		<div class="row" id="sitiosTuristicos">
			<div class="col-sm-3 list-group" id="menuSitios">
				<div class="row" id="grpSitesList">
					<h4 align="center">Sitios Turísticos</h4>
					<a href="CentroTuristico1.html" class="list-group-item list-group-item-action" target="contenedor">VILLA DE LEYVA</a>
	  				<a href="CentroTuristico2.html" class="list-group-item list-group-item-action" target="contenedor">LETICIA</a>
	  				<a href="CentroTuristico3.html" class="list-group-item list-group-item-action" target="contenedor">TAYRONA</a>
  				</div>
<!--   				<div class="row" id="grpLogBoxes"> -->
<!--   					<div id="idShowLoginTextBoxes"> -->
<!-- 						<input id="loginTextBoxes" class="btn btn-info" type="button" value="Identifiquese para Reservar"> -->
<!-- 					</div> -->
<!--   				</div> -->
			</div>
			<div class="col-sm-9" id="iframecontenedor">
<!-- 			<div class="embed-responsive embed-responsive-16by9"> -->
				<div class="embed-responsive-16by9">
<!-- 				<div class="embed-responsive-16by9"> -->
<!-- 				<iframe id="iFrameSitios" class="embed-responsive-item" src="CentroTuristico1.html" name="contenedor" height="100%" width="100%"></iframe> -->
					<iframe id="iFrameSitios" class="embed-responsive-item" 
					        src="CentroTuristico1.html" name="contenedor" 
					        width="100%" height="250px" sandbox="allow-same-origin allow-scripts"></iframe>
<!-- 				</div> -->
				</div>
			</div>
		</div>
		<!-- Fila 5 - Reservas -->
		<div class="row">
			<div class="col container" id="titulo2">
				<h3 align="center">Formulario de Reserva</h3>
			</div>
		</div>
		<!-- Fila 6 - Formulario de Reservas -->
		<div class="col col-sm-12" id="mainContainer">
			<form action="#" method="get" id="frmReservas">	
	<!-- 		Fila Principal del contenedor    		 -->
				<div class="form-row">
	<!-- 			Columna 1 del contenedor: Aquí va el formulario -->
					<div class="col-md-7 mb-3" id="userData">
	<!-- 				Metemos Filas en la Columna para ordenar los campos del Formulario -->
						<div class="form-row">
	<!-- 					Fila 1 de la columna: Botones a manera de barra de navegación -->
							<div id="grpDropdownSitios">
								<div id="idBooking">
									<input id="bookingId" class="btn btn-success" type="button" value="NumReserva">
								</div>
								<div id="userBooking">
									<input id="userBookingId" class="btn btn-secondary" type="button" value="Usuario">
								</div>
								<div id="idNewBookingButton">
									<input id="NewBookingButton" class="btn btn-primary" type="button" value="Nueva Reserva">
								</div>
								<div class="dropdown" id="idsitiosReserva">
									<select name="OS" class="btn btn-info" id="dropdownMenuButton">
									   <option value="LETICIA">LETICIA</option> 
									   <option value="VILLA DE LEYVA">VILLA DE LEYVA</option> 
									   <option value="TAYRONA">TAYRONA</option>
									</select>
								</div>
								<div id="idBookingValidationButton">
									<input id="bookingValidationButton" class="btn btn-success" type="button" value="Validar Reserva">
								</div>	
							</div>
						</div>
	<!-- 				Fila 2 de la columna con Datos-->
						<div class="form-row">
							<div id="grpdatosIdentidad0">
								<div id="grpName">
									<div class="form-group" id="name">
								    	<label id="lblInputName" for="inputName">Nombre:</label>
								    	<input type="text" class="form-control" id="inputName"
								    	       placeholder="su Nombre" name="inputName" required>
								    </div>
								    <div  class="form-group" id="expregName">
								    	<span>La Primera letra ha ser Mayúscula</span>
								    </div>
								    <div  class="form-group" id="nameWrong">
								    	<span>El Nombre NO cumple el requisito</span>
								    </div>
								</div>
								<div id="grpFirstLastName">
									<div class="form-group" id="firstlastName">
								    	<label id="lblInputFirstLastName" for="inputFirstLastName">Primer Apellido:</label>
								    	<input type="text" class="form-control" id="inputFirstLastName" 
								    	       placeholder="su Primer Apellido" name="inputFirstLastName" required>
								    </div>
								    <div  class="form-group" id="expregFirstLastName">
								    	<span>La Primera letra ha ser Mayúscula</span>
								    </div>
								    <div class="form-group" id="firstLastNameWrong">
								    	<span>El 1er Apellido NO cumple el requisito</span>
								    </div>
								</div>    
								<div id="grpSecondLastName">
									<div class="form-group" id="secondlastName">
								    	<label id="lblInputSecondLastName" for="inputSecondLastName">Segundo Apellido:</label>
								    	<input type="text" class="form-control" id="inputSecondLastName" 
								    	       placeholder="su Segundo Apellido" name="inputSecondLastName" required>
								    </div>
								    <div  class="form-group" id="expregSecondLastName">
								    	<span>La Primera letra ha ser Mayúscula</span>
								    </div>
								    <div class="form-group" id="secondLastNameWrong">
								    	<span>El 2do Apellido NO cumple el requisito</span>
								    </div>
								</div>	
								<div id="grpEmail">
									<div class="form-group" id="email">
								    	<label id="lblInputEmail" for="inputEmail">Correo Electrónico:</label>
								    	<input type="text" class="form-control" id="inputEmail" 
								    	       placeholder="su E-mail" name="inputEmail" required>
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
	<!-- 				Fila 3 de la columna con Datos-->
						<div class="form-row">
							<div id="grpdatosIdentidad1">						
								<div id="grpSex">
									<div class="form-group" id="sex">
										<div id="divlblSex">
											<label id="lblInputSex">Sexo:</label>
										</div>
										<div id="divlblSexData">
										    <div class="form-check form-check-inline">
												<input class="form-check-input" type="radio" name="inputSex" id="inputSex1" value="M">
												<label class="form-check-label" for="inputSex1">Mujer</label>
											</div>
											<div class="form-check form-check-inline">
												<input class="form-check-input" type="radio" name="inputSex" id="inputSex2" value="H">
												<label class="form-check-label" for="inputSex2">Hombre</label>
											</div>
										</div>
									</div>	    
								</div>
								<div id="grpTelefonos">
									<div class="form-group" id="telefonos">
								    	<label id="lblInputTelefonos" for="inputTelefonos">Teléfonos:</label>
								    	<input type="text" class="form-control" id="inputTelefonos" 
								    	       placeholder="sus Teléfonos" name="inputTelefonos" required>
								    </div>
								    <div  class="form-group" id="expregTelefonos">
								    	<span>Ej: 934874524, 697897824 (Separador: ", ")</span>
								    </div>
								    <div class="form-group" id="telefonosWrong">
								    	<span>Compruebe: 9 dígitos, "," y espacios</span>
								    </div>
								</div>
							</div>	    
						</div>
	<!-- 				Fila 3 de la columna con Datos-->
						<div class="form-row">
							<div id="grpHasPets">
								<div class="form-group" id="hasPets">
									<div id="divlblHasPets">
										<label id="lblInputHasPets" for="inputHasPets">Tiene Mascotas?</label>
									</div>	
									<div class="form-check" id="divlblHasPetsData">
		 								<input class="form-check-input" type="checkbox" id="inputHasPets" name="inputHasPets">
									</div>
								</div>		
							</div>
							<div id="grpHasPetsList">
								<div class="form-group" id="hasPetsList">
									<div id="divlblHasPetsList">
										<label id="lblInputHasPetsList" for="inputHasPetsList">Tiene Mascotas?</label>
									</div>	
									<div id="divlblHasPetsListData">
										<select id="inputHasPetsList" multiple>
										<!--Para listas de selección el evento que ocurre es el "change" -->
											<option value="Gato">Gato</option>
											<option value="Perro">Perro</option>
											<option value="Gavilán">Gavilán</option>
											<option value="Otros">Otro Tipo</option>
										</select>
									</div>
								</div>		
							</div>
							<div id="grpHasPetsListComments">
								<div class="form-group" id="hasPetsListComment">
								    <div id="divlblHasPetsListComment">
								    	<label id="lblInputHasPetsListComment" for="inputComment">Comentarios mascotas:</label>
								    </div>
								    <div id="divlblHasPetsListCommentData">
								    	<textarea class="form-control" rows="6" id="inputComment"></textarea>
								    </div>	
								</div>
							</div>
						</div>
						<div class="form-row">
							<div class="col container" id="titulo4">
								<h4 align="center">Datos adicionales Reserva</h4>
							</div>
						</div>
						<div class="form-row">
							<div id="grpdatosIdentidad2">
								<div id="grpIniDate">
									<div class="form-group" id="iniDate">
								    	<label id="lblInputIniDate" for="inputIniDate">Fecha de Entrada:</label>
								    	<input type="date" class="form-control" id="inputIniDate"
								    	       placeholder="Fecha de Entrada" name="inputIniDate" required>
								    </div>
								    <div  class="form-group" id="expregIniDate">
								    	<span>Use el selector de Fecha</span>
								    </div>
								    <div  class="form-group" id="iniDateWrong">
								    	<span>Verifique la fecha de entrada</span>
								    </div>
								</div>					
								<div id="grpFinDate">
									<div class="form-group" id="finDate">
								    	<label id="lblInputFinDate" for="inputFinDate">Fecha de Salida:</label>
								    	<input type="date" class="form-control" id="inputFinDate"
								    	       placeholder="Fecha de Salida" name="inputFinDate" required>
								    </div>
								    <div class="form-group" id="expregFinDate">
								    	<span>Use el selector de Fecha </span>
								    </div>
								    <div class="form-group" id="finDateWrong">
								    	<span>Verifique la fecha de salida</span>
								    </div>
								</div>
								<div class="form-group" id="iddatesValidationButton">
									<input id="datesValidationButton" class="btn btn-success" type="button" value="Validar Fechas">
								</div>
							</div>		
						</div>						
					</div>  				    
					<div class="col-md-5 mb-3" id="dataExtraBookData">
	<!-- 				Aquí va la tabla -->
						<h4 align="center">Viajes Reservados</h4>
						<div class="table-responsive" id="reservasTbl">
						</div>
					</div>
				</div>				    
			</form>
 		</div>
		<!-- Fila 7 -->	
		<div class="row">
			<div class="col container" id="titulo3">
				<h3 align="center">Tel. Contacto: (+34)625254832 - Email: coltur@coltur.com</h3>
			</div>
		</div>
	</div>
	<script>
		// Manejadores de Evento para elementos de la página Web
		
		document.getElementById("datosReservas").addEventListener("click", controlUserState);
		
		document.getElementById("inputUSR").addEventListener("blur", valPatronesInputElements);
		document.getElementById("inputPWD").addEventListener("blur", valPatronesInputElements);
		
 		document.getElementById("inputUSR").addEventListener("focus", onEnterLoggin);
 		document.getElementById("inputPWD").addEventListener("focus", onEnterLoggin);

 		
		//Reservas
		// Una forma de recuperar la opción seleccionada en un dropdown de bootstrap	
/* 		$(".dropdown-menu li a").click(function(){
	 	  $(this).parents(".dropdown").find('.btn').html($(this).text() + ' <span class="caret"></span>');
	 	  $(this).parents(".dropdown").find('.btn').val($(this).data('value'));
	 	}); */

		document.getElementById("inputName").addEventListener("blur", valPatronesInputElements);
		document.getElementById("inputFirstLastName").addEventListener("blur", valPatronesInputElements);
		document.getElementById("inputSecondLastName").addEventListener("blur", valPatronesInputElements);
		document.getElementById("inputEmail").addEventListener("blur", valPatronesInputElements);
		document.getElementById("inputTelefonos").addEventListener("blur", valPatronesInputElements);

		document.getElementById("inputHasPets").addEventListener("click", hasPets);
		document.getElementById("inputHasPetsList").addEventListener("change", hasPetsSetComment);

		
		document.getElementById("datesValidationButton").addEventListener("click", datesBookingValidationOK);
		document.getElementById("dropdownMenuButton").addEventListener("change", dropdownMenuButtonChange);
		
		document.getElementById("NewBookingButton").addEventListener("click", newBookData);
		document.getElementById("bookingValidationButton").addEventListener("click", validateBookData);
			
	</script>
</body>
</html>