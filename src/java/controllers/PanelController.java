package controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import logic.DbConnection;
import logic.VacanteDao;
import models.Usuario;
import models.Vacante;

/**
 *
 * @author diego
 */
public class PanelController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getParameter("action");
        HttpSession session = request.getSession();
        Usuario usuario = new Usuario();
        usuario = (Usuario) session.getAttribute("usuario");
        RequestDispatcher rd;
        switch (action) {

            case "crearusuario":
                rd = request.getRequestDispatcher("app/modulos/1_usuarios/crear-usuario.jsp");
                rd.forward(request, response);
                break;

            case "consultarusuario":
                rd = request.getRequestDispatcher("app/modulos/1_usuarios/consultar-usuario.jsp");
                rd.forward(request, response);
                break;

            case "actualizarusuario":
                rd = request.getRequestDispatcher("app/modulos/1_usuarios/actualizar-usuario.jsp");
                rd.forward(request, response);
                break;

            case "eliminarusuario":
                rd = request.getRequestDispatcher("app/modulos/componentes/mensaje.jsp");
                rd.forward(request, response);
                break;

            case "crearvacante":
                if (usuario.getPerfil().equals("administrador")) {
                    rd = request.getRequestDispatcher("app/modulos/2_vacantes/crear-vacante.jsp");
                    rd.forward(request, response);
                } else {
                    session.invalidate();
                    response.sendRedirect(request.getContextPath() + "/homepage");
                }
                break;

            case "consultarvacante":
                if (usuario.getPerfil().equals("administrador")) {
                    this.verTodas(request, response);
                } else {
                    session.invalidate();
                    response.sendRedirect(request.getContextPath() + "/homepage");
                }
                break;

            case "actualizarvacante":
                if (usuario.getPerfil().equals("administrador")) {
                    this.actualizarVacante(request, response);
                } else {
                    session.invalidate();
                    response.sendRedirect(request.getContextPath() + "/homepage");
                }
                break;

            case "eliminarvacante":
                if (usuario.getPerfil().equals("administrador")) {
                    this.eliminarVacante(request, response);
                } else {
                    session.invalidate();
                    response.sendRedirect(request.getContextPath() + "/homepage");
                }
                break;

            case "solicitudvacante":
                rd = request.getRequestDispatcher("app/modulos/2_vacantes/solicitud-vacantes.jsp");
                rd.forward(request, response);
                break;
            case "enviarrespvacante":
                rd = request.getRequestDispatcher("app/modulos/2_vacantes/enviar-correo-vacante.jsp");
                rd.forward(request, response);
                break;

        }

    }

    protected void verTodas(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        DbConnection conn = new DbConnection();
        VacanteDao vacanteDao = new VacanteDao(conn);
        List<Vacante> lista = vacanteDao.getAll();
        conn.disconnect();
        request.setAttribute("vacante", lista);
        RequestDispatcher rd;
        rd = request.getRequestDispatcher("app/modulos/2_vacantes/consultar-vacante.jsp");
        rd.forward(request, response);
    }

    protected void actualizarVacante(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int idVacante = Integer.parseInt(request.getParameter("idVacante"));
        DbConnection conn = new DbConnection();
        VacanteDao vacanteDao = new VacanteDao(conn);
        Vacante vacante = vacanteDao.getById(idVacante);
        conn.disconnect();

        request.setAttribute("vacante", vacante);
        RequestDispatcher rd;

        rd = request.getRequestDispatcher("app/modulos/2_vacantes/actualizar-vacante.jsp");
        rd.forward(request, response);

    }

    protected void eliminarVacante(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int IdVacanteParam = Integer.parseInt(request.getParameter("idVacante"));
        DbConnection conn = new DbConnection();
        VacanteDao vacanteDao = new VacanteDao(conn);
        int respuesta = vacanteDao.delete(IdVacanteParam);
        String msg = "";
        if (respuesta == 1) {
            msg = "La vacante fue eliminada correctamente";
        } else {
            msg = "Ocurrió un error. La vacante no fue eliminada";
        }
        conn.disconnect();
        request.setAttribute("message", msg);
        RequestDispatcher rd;
        rd = request.getRequestDispatcher("app/modulos/componentes/mensaje.jsp");
        rd.forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

}
