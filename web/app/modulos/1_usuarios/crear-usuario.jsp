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
				Crear Usuario
			</div>
			<div class="card-body">
				<form action="../componentes/mensaje.html" method="post">
					<div class="form-group">
						<label for="nombre">Nombre</label>
						<input type="text" class="form-control" id="nombre" placeholder="Nombres y Apellidos">
					</div>
					<div class="form-group">
						<label for="email">Email</label>
						<input type="email" class="form-control" id="email" placeholder="usuario@dominio.com">
					</div>
					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="username">Username</label>
							<input type="text" class="form-control" id="username" placeholder="username">
						</div>
						<div class="form-group col-md-6">
							<label for="password">Password</label>
							<input type="password" class="form-control" id="password"
								placeholder="Entre 5 y 8 caracteres">
						</div>
					</div>
					<div class="form-row">
						<div class="form-group col-md-12">
							<label for="perfil">Perfil</label>
							<select id="perfil" class="form-control">
								<option selected>cliente</option>
								<option>administrador</option>
							</select>
						</div>
					</div>
					<div class="text-center">
						<button type="submit" class="btn btn-secondary">Guardar</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<!--Pie de Pagina-->
<jsp:include page="../componentes/pie-pagina.jsp" />