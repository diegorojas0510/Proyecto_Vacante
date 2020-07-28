<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!-- Barra de Navegación -->
<jsp:include page="componentes/navegacion.jsp" />
<!-- Descripción vacante -->
<div class="card">
    <div class="card-header text-center">
        Sistema
    </div>
    <div class="card-body">
        <h4>${message}</h4>
    </div>
</div>
<!-- Pie de Página -->
<jsp:include page="componentes/pie-pagina.jsp" />