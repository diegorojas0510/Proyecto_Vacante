package controllers;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import logic.DbConnection;
import logic.VacanteDao;
import models.Vacante;
import javax.servlet.RequestDispatcher;

/**
 *
 * @author diego
 */
public class ActualizarVacanteController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        //1.Recibir los parametros 
        int idParam = Integer.parseInt(request.getParameter("idVacante"));
        String nombreParam = request.getParameter("nombre");
        String detalleParam = request.getParameter("detalle");
        String descripcionParam = request.getParameter("descripcion");
        
        //2. crear objeto Vacante (Dto) y enviar los parámetros por Set
        Vacante vacante = new Vacante(idParam);//Constructor que recibe 
        vacante.setNombre(nombreParam);
        vacante.setDetalle(detalleParam);
        vacante.setDescripcion(descripcionParam);
        //3. Procesar los datos para guardar en BD
        System.out.println(vacante);
        //Preparamos un mensaje
        DbConnection conn = new DbConnection();
        VacanteDao vacanteDao = new VacanteDao(conn);
        boolean status = vacanteDao.update(vacante);

        String msg = "";
        if (status) {
            msg = "La vacante fue actualizada correctamente";
        } else {
            msg = "Ocurrió un error, la vacante no fue actualizada";
        }
        conn.disconnect();
        RequestDispatcher rd;
        //Compartimos la variable msg para poder accederla desde la vista
        request.setAttribute("message", msg);
        //Enviamos respuesta. Renderizamos la vista mensaje.jsp
        rd = request.getRequestDispatcher("app/modulos/componentes/mensaje.jsp");
        rd.forward(request, response);

    }

}
