<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!-- Barra de Navegación -->
<jsp:include page="componentes/navegacion.jsp" />

        <!-- Enviar hoja de vida -->
        <div class="card">
            <div class="card-header text-center">
                Enviar HV para Vacante: Nombre de la Vacante
            </div>
            <div class="card-body">
                <form action="mensaje.html" method="post">
                    <div class="form-group">
                        <label for="nombre">Nombre</label>
                        <input type="text" class="form-control" id="nombre" name="nombre" required>
                    </div>
                    <div class="form-group">
                        <label for="email">Email</label>
                        <input type="text" class="form-control" id="email" name="email" required>
                    </div>
                    <div class="form-group">
                        <label for="telefono">Teléfono</label>
                        <input type="text" class="form-control" id="telefono" name="telefono" required>
                    </div>
                    <div class="form-group">
                        <label for="direccion">Dirección</label>
                        <input type="text" class="form-control" id="direccion" name="direccion" required>
                    </div>
                    <div class="form-group">
                        <label for="nombre" class="col-12 p-0">Subir HV</label>
                        <input type="file" id="archivo" name="archivo" accept="application/msword,application/vnd.openxmlformats-officedocument.wordprocessingml.document,application/pdf" required>
                        <p class="help-block">Solo se permiten archivos [ pdf,doc,docx ]</p>
                    </div>                    
                    <button type="submit" class="btn btn-success">Enviar HV</button>                    
                </form>
            </div>
        </div>
<!-- Pie de Página -->
<jsp:include page="componentes/pie-pagina.jsp" />
