<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!-- Barra de Navegación -->
<jsp:include page="componentes/navegacion.jsp" />
        <!--Lista de Vacantes -->        
        <div class="card">
            <div class="card-header text-center">
                Lista de Vacantes
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
                        <tr>
                            <th scope="row">Id Vacante</th>
                            <td>Nombre Vacante</td>
                            <td>Fecha de Publicación</td>
                            <td class="text-center"><a href="detalle.html" class="btn btn-outline-secondary btn-sm">Ver detalles</a></td>
                        </tr>
                        <tr>
                            <th scope="row">Id Vacante</th>
                            <td>Nombre Vacante</td>
                            <td>Fecha de Publicación</td>
                            <td class="text-center"><a href="detalle.html" class="btn btn-outline-secondary btn-sm">Ver detalles</a></td>
                        </tr>
                        <tr>
                            <th scope="row">Id Vacante</th>
                            <td>Nombre Vacante</td>
                            <td>Fecha de Publicación</td>
                            <td class="text-center"><a href="detalle.html" class="btn btn-outline-secondary btn-sm">Ver detalles</a></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
<!-- Pie de Página -->
<jsp:include page="componentes/pie-pagina.jsp" />
