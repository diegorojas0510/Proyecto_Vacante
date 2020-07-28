<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Barra de Navegación -->
<jsp:include page="../componentes/navegacion-admin.jsp" />


<!-- Página Inicial Administrador -->
<div class="row">
    <!-- Panel Lateral -->
    <jsp:include page="../componentes/panel-lateral-admin.jsp" />

    <div class="col-9 py-3 bg-secondary">
        <div class="card">
            <div class="card-header text-center pb-4">
                Enviar Correo
            </div>
            <div class="card-body">
                <form action="../componentes/mensaje.html" method="post">
                    <div class="form-group">
                        <label for="destinatario">Destinatario</label>
                        <input type="text" class="form-control" id="destinatario" name="destinatario"
                            value="usuario@correo.com" readonly required>
                    </div>
                    <div class="form-group">
                        <label for="asunto">Asunto</label>
                        <input type="text" class="form-control" id="asunto" name="asunto" required>
                    </div>
                    <div class="form-group">
                        <label for="mensaje">Mensaje</label>
                        <textarea class="form-control" name="mensaje" id="mensaje" cols="30" rows="10"
                            required></textarea>
                    </div>
                    <button type="submit" class="btn btn-success">Enviar Correo</button>
                </form>
            </div>
        </div>
    </div>
</div>
<!--Pie de Pagina-->
<jsp:include page="../componentes/pie-pagina.jsp" />