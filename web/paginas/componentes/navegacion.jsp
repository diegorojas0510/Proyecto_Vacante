<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Página Empresa</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/estilos.css">
</head>

<body>
    <div class="container border p-0 border-top-0">
        <!-- Barra de Navegación -->
        <nav class="navbar navbar-expand-lg navbar-dark bg-success sticky-top">
            <a class="navbar-brand" href="#">Logo Empresa</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse justify-content-end" id="navbarSupportedContent">
                <form action="../lista-vacantes.html" method="" class="form-inline my-2 my-lg-0 mr-auto">
                    <input class="form-control mr-sm-2" type="search" name="query" placeholder="Buscar oferta..."
                        aria-label="Search">
                    <button class="btn btn-light my-2 my-sm-0" type="submit">Buscar</button>
                </form>
                <ul class="navbar-nav ">
                    <li class="nav-item active">
                        <a class="nav-link" href="homepage">Inicio <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="sitepages?action=nosotros">Nosotros</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Ingresar
                        </a>
                        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item text-right" href="#" data-toggle="modal"
                                data-target="#registro">Registro</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item text-right" href="#" data-toggle="modal"
                                data-target="#ingreso">Ingreso</a>
                        </div>
                    </li>
                </ul>
            </div>
        </nav>

        <!-- Formularo Modal: Registro -->
        <div class="modal fade" id="registro" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
            aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header justify-content-center">
                        <h4 class="text-center modal-title col-11" id="exampleModalLabel">Registro</h4>
                        <button type="button" class="col-1 close ml-0" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <!-- Formulario de Registro-->
                        <form action="" method="post">
                            <div class="form-group">
                                <label for="nombre">Nombre</label>
                                <input type="text" class="form-control" id="nombre" placeholder="Nombres y Apellidos">
                            </div>
                            <div class="form-group">
                                <label for="email">Email</label>
                                <input type="email" class="form-control" id="email" placeholder="usuario@dominio.com">
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label for="username">Username</label>
                                    <input type="text" class="form-control" id="username" placeholder="username">
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="password">Password</label>
                                    <input type="password" class="form-control" id="password"
                                        placeholder="Entre 5 y 8 caracteres">
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-12">
                                    <label for="perfil">Perfil</label>
                                    <select id="perfil" class="form-control">
                                        <option selected>cliente</option>
                                        <option>administrador</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" id="gridCheck">
                                    <label class="form-check-label" for="gridCheck">
                                        Recordar mis datos
                                    </label>
                                </div>
                            </div>
                            <div class="text-center">
                                <button type="button" class="btn btn-info" data-dismiss="modal" data-toggle="modal"
                                    data-target="#ingreso">Ingresar</button>
                                <button type="button" class="btn btn-dark" data-dismiss="modal">Cancelar</button>
                                <button type="button" id="btn-submit-registro" class="btn btn-success"
                                    onclick="validarNavegacion();">Enviar</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <!-- Formulario Modal: Ingreso -->
        <div class="modal fade" id="ingreso" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
            aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header justify-content-center">
                        <h4 class="text-center modal-title col-11" id="exampleModalLabel">Iniciar Sesión</h4>
                        <button type="submit" class="col-1 close ml-0" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <!-- Formulario de Ingreso-->
                        <form id="myForm" action="inicio" method="post">
                            <div class="form-group">
                                <input type="text" class="form-control" name="user" id="user"
                                    aria-describedby="emailHelp" placeholder="Usuario: admin" required>
                            </div>
                            <div class="form-group">
                                <input type="password" class="form-control" name="pass" id="pass"
                                    placeholder="password: 12345" required title="Escriba entre 5 y 8 caracteres">
                            </div>
                            <div class="row px-3 pb-3 mb-3">
                                <div class="form-group form-check col-6 m-0">
                                    <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                    <label class="form-check-label" for="exampleCheck1">Recordar mis datos</label>
                                </div>
                                <a href="" class="col nav-link col-6 m-0 p-0 text-right">Olvidó su contraseña?</a>
                            </div>
                            <div class="text-center">
                                <button type="button" class="btn btn-info" data-dismiss="modal" data-toggle="modal"
                                    data-target="#registro">Registrarse</button>
                                <button type="button" class="btn btn-dark" data-dismiss="modal">Cancelar</button>
                                <button type="submit" id="btn-submit-ingreso" class="btn btn-success">Enviar</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>