<jsp:include page="header-fragment.jsp"></jsp:include>
			<h2>Bienvenido!</h2>
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
	        <p class="texto-loading">Procesando...</p>
	      </div>
	    </div>
	  </div>
	</div>
</body>
</html>