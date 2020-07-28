<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- Barra de Navegación -->
<jsp:include page="../componentes/navegacion-admin.jsp" />

<!-- Página Inicial Administrador -->
<div class="row">

    <!-- Panel Lateral -->
    <jsp:include page="../componentes/panel-lateral-admin.jsp" />

    <!--Tabla que muestra vacantes-->
    <div class="col-9 py-3 bg-secondary">
        <div class="card">
            <div class="row card-header justify-content-end">
                <div class="col-7 text-right">Consultar Vacantes</div>
                <div class="col-5 text-right">
                    <form action="" method="" class="form-inline my-2 my-lg-0 justify-content-end">
                        <input class="form-control mr-sm-2 btn-sm" type="search" name="query"
                            placeholder="Buscar oferta..." aria-label="Search">
                        <button class="btn btn-primary my-2 my-sm-0 btn-sm" type="submit">Buscar</button>
                    </form>
                </div>
            </div>
            <div class="card-body table-responsive">
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th scope="col">ID</th>
                            <th scope="col">Vacante</th>
                            <th scope="col">Publicado</th>
                            <th scope="col" class="text-center">Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${vacante}" var="vacante" varStatus="status">
                            <tr>
                                <th scope="row">${vacante.id}</th>
                                <td>${vacante.nombre}</td>
                                <td>${vacante.fechaPublicacion}</td>
                                <td class="text-center">
                                    <a href="dashboard?action=actualizarvacante&idVacante=${vacante.id}" class="btn
                                    btn-success btn-sm">Actualizar</a>
                                    <a href="dashboard?action=eliminarvacante&idVacante=${vacante.id}" class="btn
                                    btn-danger btn-sm">Eliminar</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
<!--Pie de Pagina-->
<jsp:include page="../componentes/pie-pagina.jsp" />