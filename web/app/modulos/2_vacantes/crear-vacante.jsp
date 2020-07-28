<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Barra de Navegación -->
<jsp:include page="../componentes/navegacion-admin.jsp" />

<!-- Página Inicial Administrador -->
<div class="row">
	
	<!-- Panel Lateral -->
	<jsp:include page="../componentes/panel-lateral-admin.jsp" />

	<!-- Formulario para Crear Vacante -->
	<div class="col-9 py-3 bg-secondary">
		<div class="card">
			<div class="card-header text-center pb-4">
				Crear Vacante
			</div>
			<div class="card-body">
				<form action="crearvacante" method="post">
					<div class="form-group">
						<label for="nombre-vacante">Nombre</label>
						<input type="text" class="form-control" id="nombre" name="nombre" required>
					</div>
					<div class="form-group">
						<label for="exampleFormControlTextarea1">Descripción</label>
						<textarea class="form-control" id="descripcion" name="descripcion" rows="3"></textarea>
					</div>
					<label for="exampleFormControlTextarea1">Escriba los detalles</label>
					<textarea id="detalle" name="detalle"></textarea>
					<div class="form-group pt-3 text-right m-0">
						<button type="submit" class="btn btn-secondary">Guardar</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>

<!--Pie de Pagina-->
<jsp:include page="../componentes/pie-pagina.jsp" />