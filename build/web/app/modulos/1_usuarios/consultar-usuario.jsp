<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Barra de Navegación -->
<jsp:include page="../componentes/navegacion-admin.jsp" />

<!-- Página Inicial Administrador -->
<div class="row">
    <!-- Panel Lateral -->
    <jsp:include page="../componentes/panel-lateral-admin.jsp" />

    <div class="col-9 py-3 bg-secondary">
        <div class="card">
            <div class="row card-header justify-content-end">
                <div class="col-7 text-right">Consultar Usuarios</div>
                <div class="col-5 text-right">
                    <form action="" method="" class="form-inline my-2 my-lg-0 justify-content-end">
                        <input class="form-control mr-sm-2 btn-sm" type="search" name="query"
                            placeholder="Buscar usuario..." aria-label="Search">
                        <button class="btn btn-primary my-2 my-sm-0 btn-sm" type="submit">Buscar</button>
                    </form>
                </div>
            </div>
            <div class="card-body table-responsive">
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th scope="col">Id</th>
                            <th scope="col">Nombre</th>
                            <th scope="col">Email</th>
                            <th scope="col">Username</th>
                            <th scope="col">Password</th>
                            <th scope="col">Perfil</th>
                            <th scope="col">Estatus</th>
                            <th scope="col" class="text-center">Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">1</th>
                            <td>Albeiro Ramos</td>
                            <td>profealbeiro@gmail.com</td>
                            <td>admin</td>
                            <td>12345</td>
                            <td>administrador</td>
                            <td>activo</td>
                            <td class="text-center">
                                <a href="dashboard?action=actualizarusuario" class="btn btn-success btn-sm"><i
                                        class="far fa-edit"></i></a><a href="dashboard?action=eliminarusuario"
                                    class="btn btn-danger btn-sm"><i class="fas fa-trash-alt"></i></a>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">1</th>
                            <td>Pepito Perez</td>
                            <td>pepito@perez.com</td>
                            <td>cliente</td>
                            <td>12345</td>
                            <td>cliente</td>
                            <td>activo</td>
                            <td class="text-center">
                                <a href="dashboard?action=actualizarusuario" class="btn btn-success btn-sm"><i
                                    class="far fa-edit"></i></a><a href="dashboard?action=eliminarusuario"
                                class="btn btn-danger btn-sm"><i class="fas fa-trash-alt"></i></a>
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