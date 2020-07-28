<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!-- Barra de Navegación -->
<jsp:include page="paginas/componentes/navegacion.jsp" />


<!-- Portada -->

<div class="jumbotron bg-light text-center m-0">
    <h1 class="display-6">¡ENCUENTRA TU TRABAJO IDEAL!</h1>
    <p class="lead">Bienvenido a My Company, aquí podrás encontrar ofertas de empleos que sean adecuados a tu perfil, experiencia y ubicación. Es muy fácil de usar, solo haz clic en una vacante, ingresa para ver los detalles y envíanos tu CV en formato PDF o DOCX. Nosotros revisaremos tu CV y posteriormente te contactaremos</p>
    <a class="btn btn-dark btn-lg" href="sitepages?action=listar" role="button">Ver más ofertas</a>
</div>        


<!-- Ofertas de Empleo -->
<div class="text-center bg-white px-4 pt-4 pb-2">
    <h3 class="m-0">OFERTAS RECIENTES</h3>
</div>

<!-- Últimas 3 vacantes -->
<div class="card-group px-4 bg-white pb-4">
    <div class="card">
        <div class="card-body">
            <h4 class="card-title">Id Vacante</h4>
            <h5 class="card-subtitle mb-2 text-danger">Nombre Vacante</h5>
            <p class="card-text text-justify">Descripción Vacante</p>
            <a href="sitepages?action=ver" class="btn btn-success">Ver Detalle</a>
        </div>
        <div class="card-footer text-right">
            <small class="text-muted">Publicado: Fecha de Publicación</small>
        </div>
    </div>
    <div class="card">
        <div class="card-body">
            <h4 class="card-title">Id Vacante</h4>
            <h5 class="card-subtitle mb-2 text-danger">Nombre Vacante</h5>
            <p class="card-text text-justify">Descripción Vacante</p>
            <a href="sitepages?action=ver" class="btn btn-success">Ver Detalle</a>
        </div>
        <div class="card-footer text-right">
            <small class="text-muted">Publicado: Fecha de Publicación</small>
        </div>
    </div>
    <div class="card">
        <div class="card-body">
            <h4 class="card-title">Id Vacante</h4>
            <h5 class="card-subtitle mb-2 text-danger">Nombre Vacante</h5>
            <p class="card-text text-justify">Descripción Vacante</p>
            <a href="sitepages?action=ver" class="btn btn-success">Ver Detalle</a>
        </div>
        <div class="card-footer text-right">
            <small class="text-muted">Publicado: Fecha de Publicación</small>
        </div>
    </div>
</div>

<!-- Pie de Página -->
<jsp:include page="paginas/componentes/pie-pagina.jsp" />