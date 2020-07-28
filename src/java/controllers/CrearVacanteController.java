package controllers;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import logic.DbConnection;
import logic.VacanteDao;
import models.Vacante;

/**
 *
 * @author diego
 */
public class CrearVacanteController extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        request.setCharacterEncoding("UTF-8");

        //1.Recibir los parámetros
        String nombreParam = request.getParameter("nombre");
        String detalleParam = request.getParameter("detalle");
        String descripcionParam = request.getParameter("descripcion");

        //2.Crear objeto Vacante(Dto) y enviar los parámetros por Set
        Vacante vacante = new Vacante(0);//Constructor que recibe el 'id'
        vacante.setNombre(nombreParam);
        vacante.setDetalle(detalleParam);
        vacante.setDescripcion(descripcionParam);

        //3.Procesar los datos para guardar en BD
        System.out.println(vacante);

        //4.Preparamos un mensaje para el usuario
        DbConnection conn = new DbConnection();
        VacanteDao vacanteDao = new VacanteDao(conn);
        boolean status = vacanteDao.insert(vacante);
        
        String msg = "";
        if (status) {
            msg = "La vacante fue guardada correctamente";
        } else {
            msg = "Ocurrió un error, la vacante no fue guardada";
        }
        conn.disconnect();
        RequestDispatcher rd;

        //Compartimos la variable msg para poder acceder desde la vista
        request.setAttribute("message", msg);
        //Enviamos respuesta Renderizamos la vista mensaje.jsp
        rd = request.getRequestDispatcher("app/modulos/componentes/mensaje.jsp");
        rd.forward(request, response);
        
    }
    
}
