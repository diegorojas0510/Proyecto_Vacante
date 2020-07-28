<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!-- Barra de Navegación -->
<jsp:include page="componentes/navegacion.jsp" />

        <!-- Descripción vacante -->
        <div class="card">
            <div class="card-header text-center">
                Vacante: [Id - Vacante]
            </div>
            <div class="card-body">
                <h1 class="card-title text-dark">Nombre Vacante</h1>
                <p class="card-text">Publicado: Fecha de Publicación</p>
                <h5 class="text-info mt-4">Descripción</h5>
                <h6 class="text-muted">Descripción</h6>
                <h5 class="text-info my-4">Detalles de Vacante</h5>
                <div class="pl-4 mb-3">Detalle de Vacante</div>
                <a href="sitepages?action=enviarhv" class="btn btn-success">Enviar HV</a>
            </div>
        </div>

<!-- Pie de Página -->
<jsp:include page="componentes/pie-pagina.jsp" />