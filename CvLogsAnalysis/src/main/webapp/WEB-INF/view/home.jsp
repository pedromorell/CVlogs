<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<html lang="es">
<head>
	<!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
	<!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
	<!-- Custom css -->
	<link rel="stylesheet" href="css/default.css">
	
	<!--  JQuery -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<!-- Bootstrap JS -->
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
	
	<script src="js/default.js"></script>
	
</head>
<body>
	<div class="container">
		<div class="main">
			<img src="img/logo.jpg" class="logo">
			<h1>Bienvenido!</h1>
			<form action="/aceptar" method="GET">
				<div id="cabecera-formulario">
					<div class="celda-form">
						<label for="ficheroInput">Fichero de logs</label><br/>
						<select name="fichero" id="ficheroInput">
						  <option value="none">---</option>
						  <option value="FC">Curso FC: 2016-2017</option>
						</select>
					</div>
					<div class="celda-form">
						<label for="algoritmoInput">Algoritmo de Machine Learning</label><br/>
						
						<select name="algoritmo" id="algoritmoInput">
						  <option value="none">---</option>
						  <option value="clustering">Clustering</option>
						</select>
					</div>
					
				</div>
				<div class="centrar-texto">
					<input type="submit" value="Obtener resultados" class="btn-aceptar" data-toggle="modal" data-target="#cargando" disabled>
				</div>
			</form>
		</div>
	</div>
	<!-- <button type="button" data-toggle="modal" data-target="#cargando">Prueba</button> -->
	<!-- Modal -->
	<div class="modal" tabindex="-1" role="dialog" id="cargando">
	  <div class="modal-dialog modal-dialog-centered" role="document">
	    <div class="modal-content">
	      <div class="modal-body centrar-texto">
	      	<div class="loading-img"></div>
	        <h4>Procesando...</h4>
	      </div>
	    </div>
	  </div>
	</div>
</body>
</html>