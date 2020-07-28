<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Barra de Navegación -->
<jsp:include page="../componentes/navegacion-admin.jsp" />

<!-- Página Inicial Administrador -->
<div class="row">

    <!-- Panel Lateral -->
    <jsp:include page="../componentes/panel-lateral-admin.jsp" />

    <!--Tabla que muestra las solicitudes realizadas-->
    <div class="col-9 py-3 bg-secondary">
        <div class="card">
            <div class="row card-header justify-content-end">
                <div class="col-7 text-right">Lista de Solicitudes Recibidas</div>
                <div class="col-5 text-right">
                    <form action="" method="" class="form-inline my-2 my-lg-0 justify-content-end">
                        <input class="form-control mr-sm-2 btn-sm" type="search" name="query"
                            placeholder="Buscar solicitud..." aria-label="Search">
                        <button class="btn btn-primary my-2 my-sm-0 btn-sm" type="submit">Buscar</button>
                    </form>
                </div>
            </div>
            <div class="card-body table-responsive">
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th scope="col">Fecha</th>
                            <th scope="col">Nombre</th>
                            <th scope="col">Email</th>
                            <th scope="col">Teléfono</th>
                            <th scope="col">Dirección</th>
                            <th scope="col">Aplicó</th>
                            <th scope="col" class="text-center">Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">2020-07-18</th>
                            <td>Marinita García</td>
                            <td>usuario@correo.com</td>
                            <td>3153652354</td>
                            <td>Avenida Siempre Viva</td>
                            <td>Técnico mecánico automotriz</td>
                            <td class="text-center col ">
                                <a href="#" class="btn btn-info btn-sm"><i class="fas fa-download"></i></a>
                                <a href="dashboard?action=enviarrespvacante" class="btn btn-success btn-sm"><i
                                        class="fas fa-envelope-open-text"></i></a>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">2020-07-18</th>
                            <td>Marinita García</td>
                            <td>usuario@correo.com</td>
                            <td>3153652354</td>
                            <td>Avenida Siempre Viva</td>
                            <td>Técnico mecánico automotriz</td>
                            <td class="text-center col ">
                                <a href="#" class="btn btn-info btn-sm"><i class="fas fa-download"></i></a>
                                <a href="enviar-correo-vacante.html" class="btn btn-success btn-sm"><i
                                        class="fas fa-envelope-open-text"></i></a>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">2020-07-18</th>
                            <td>Marinita García</td>
                            <td>usuario@correo.com</td>
                            <td>3153652354</td>
                            <td>Avenida Siempre Viva</td>
                            <td>Técnico mecánico automotriz</td>
                            <td class="text-center col ">
                                <a href="#" class="btn btn-info btn-sm"><i class="fas fa-download"></i></a>
                                <a href="enviar-correo-vacante.html" class="btn btn-success btn-sm"><i
                                        class="fas fa-envelope-open-text"></i></a>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
<!--Pie de Pagina-->
<jsp:include page="../componentes/pie-pagina.jsp" />