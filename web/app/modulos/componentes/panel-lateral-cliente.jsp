<%@page contentType="text/html" pageEncoding="UTF-8"%>

		<div class="col-3 bg-white">
			<div class="p-2"></div>
			<div class="accordion pb-3" id="accordionExample">
				<div class="card">
					<div class="card-header bg-info" id="headingOne">
						<h2 class="mb-0">
							<button class="btn text-white btn-block text-left" type="button" data-toggle="collapse" data-target="#" aria-expanded="true" aria-controls="collapseOne">
								Configuración
							</button>
						</h2>
					</div>

					<div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
						<div class="card-body">
							<ul class="p-0">
								<a class="nav-link text-left" href="#">Configurar Cuenta</a>
							</ul>
						</div>
					</div>
				</div>		
				<div class="card">
					<div class="card-header bg-info" id="headingThree">
						<h2 class="mb-0">
							<button class="btn text-white btn-block text-left collapsed" type="button" data-toggle="collapse" data-target="#" aria-expanded="false" aria-controls="collapseThree">
								Vacantes
							</button>
						</h2>
					</div>
					<div id="collapseThree" class="collapse  show" aria-labelledby="headingThree" data-parent="#accordionExample">
						<div class="card-body">
							<ul class="p-0">
								<a class="nav-link text-left" href="#"
								>Consultar Vacantes</a>
                                <a class="nav-link text-left" href="#">Estado Postulaciones</a>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>


