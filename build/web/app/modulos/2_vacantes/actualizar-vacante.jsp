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
				<h5><b>Actualizar Vacante: [Id - ${vacante.id}]</b></h5>
			</div>
			<div class="card-body">
				<form action="actualizarvacante" method="post">
					<input type="hidden" class="form-control" id="idVacante" name="idVacante" value="${vacante.id}">
					<input type="hidden" class="form-control" id="fechaPublicacion" name="fechaPublicacion"
						value="${vacante.fechaPublicacion}">
					<div class="form-group">
						<label for="nombre-vacante">Nombre</label>
						<input type="text" class="form-control" id="nombre" name="nombre" value="${vacante.nombre}"
							required>
					</div>
					<div class="form-group">
						<label for="exampleFormControlTextarea1">Descripción</label>
						<textarea class="form-control" id="descripcion" name="descripcion" rows="3">
								${vacante.descripcion}</textarea>
					</div>
					<label for="exampleFormControlTextarea1">Escriba los Detalles</label>
					<textarea id="detalle" name="detalle">${vacante.detalle}</textarea>
					<div class="form-group pt-3 text-right m-0">
						<button type="submit" class="btn btn-secondary">Actualizar</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<!--Pie de Pagina-->
<jsp:include page="../componentes/pie-pagina.jsp" />