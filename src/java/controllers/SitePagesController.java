package controllers;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author diego
 */
public class SitePagesController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        RequestDispatcher rd;
        if (action.equals("ver")) {
            rd = request.getRequestDispatcher("paginas/detalle.jsp");
            rd.forward(request, response);
        } else if (action.equals("listar")) {
            rd = request.getRequestDispatcher("paginas/lista-vacantes.jsp");
            rd.forward(request, response);
        } else if (action.equals("nosotros")) {
            rd = request.getRequestDispatcher("paginas/nosotros.jsp");
            rd.forward(request, response);
        } else if (action.equals("enviarhv")) {
            rd = request.getRequestDispatcher("paginas/enviar-hv.jsp");
            rd.forward(request, response);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

}
