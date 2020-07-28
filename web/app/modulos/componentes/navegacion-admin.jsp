<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Sistema de Información</title>
    <link rel="stylesheet" href="app/css/bootstrap.min.css">
    <link rel="stylesheet" href="app/css/summernote-bs4.min.css">
    <link rel="stylesheet" href="app/css/all.min.css">
    <link rel="stylesheet" href="app/css/estilos1.css">
</head>

<body>
    <div class="container border-top-0">
        <!-- Barra de Navegación -->
        <nav class="row navbar navbar-expand-lg navbar-dark bg-dark sticky-top">
            <a class="navbar-brand" href="#">Logo Sistema</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav col-1 justify-content-start">
                    <li class="nav-item active">
                        <a class="nav-link" href="inicio">Inicio <span class="sr-only">(current)</span></a>
                    </li>
                </ul>
                <ul class="navbar-nav col-9 justify-content-center"></ul>
                <ul class="navbar-nav col-2 justify-content-end pr-0">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Administrador
                        </a>
                        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item text-right" href="#">Configuración</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item text-right" href="salir">Salir</a>
                        </div>
                    </li>
                </ul>
            </div>
        </nav>