<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div class="col-3 bg-light">
	<div class="p-2"></div>
	<div class="accordion pb-3" id="accordionExample">
		<div class="card">
			<div class="card-header bg-dark" id="headingOne">
				<h2 class="mb-0">
					<button class="btn text-white btn-block text-left" type="button" data-toggle="collapse"
						data-target="#" aria-expanded="true" aria-controls="collapseOne">
						Gestión de Usuarios
					</button>
				</h2>
			</div>

			<div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
				<div class="card-body">
					<ul class="p-0">
						<a class="nav-link text-left" href="dashboard?action=crearusuario">Crear Usuario</a>
						<a class="nav-link" href="dashboard?action=consultarusuario">Consultar Usuarios</a>
					</ul>
				</div>
			</div>
		</div>
		<div class="card">
			<div class="card-header bg-dark" id="headingThree">
				<h2 class="mb-0">
					<button class="btn text-white btn-block text-left collapsed" type="button" data-toggle="collapse"
						data-target="#" aria-expanded="false" aria-controls="collapseThree">
						Gestión de Vacantes
					</button>
				</h2>
			</div>
			<div id="collapseThree" class="collapse  show" aria-labelledby="headingThree"
				data-parent="#accordionExample">
				<div class="card-body">
					<ul class="p-0">
						<a class="nav-link text-left" href="dashboard?action=crearvacante">Crear Vacante</a>
						<a class="nav-link" href="dashboard?action=consultarvacante">Consultar Vacantes</a>
						<a class="nav-link" href="dashboard?action=solicitudvacante">Solicitudes</a>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>