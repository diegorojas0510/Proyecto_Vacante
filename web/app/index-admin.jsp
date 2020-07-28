<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!-- Barra de Navegación -->
<jsp:include page="modulos/componentes/navegacion-admin.jsp" />

<!-- Página Inicial Administrador -->
<div class="row">
    <!-- Panel Lateral -->
    <jsp:include page="modulos/componentes/panel-lateral-admin.jsp" />

    <!--Contenido-->
    <div class="col-9 py-3 bg-secondary">
        <div class="card">
            <div class="card-header text-center pb-4">
                Página principal
            </div>
            <div class="card-body">
                <p class="font-weight-bold m-0">Username</p>
                <p>${usuario.username}</p>
                <p class="font-weight-bold m-0">Email</p>
                <p>${usuario.email}</p>
                <p class="font-weight-bold m-0">Perfil</p>
                <p>${usuario.perfil}</p>
                <p class="font-weight-bold  m-0">Estatus</p>
                <p>${usuario.estatus}</p>
            </div>
        </div>
    </div>
</div>
<!--Pie de Pagina-->
<jsp:include page="modulos/componentes/pie-pagina.jsp"/>