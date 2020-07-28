<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Barra de Navegación -->
<jsp:include page="navegacion-admin.jsp" />
<!-- Página Inicial Administrador -->
<div class="row">
	<!-- Panel Lateral -->
	<jsp:include page="panel-lateral-admin.jsp" />
<!--Mensaje-->
	<div class="col-9 py-3 bg-secondary">
		<div class="card">
			<div class="card-header text-center">
				Sistema
			</div>
			<div class="card-body">
				<h4>Mensaje de confirmación</h4>
			</div>
		</div>
	</div>
</div>
<!--Pie de Pagina-->
<jsp:include page="pie-pagina.jsp" />