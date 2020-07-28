package controllers;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import logic.DbConnection;
import logic.UsuarioDao;
import models.Usuario;

/**
 *
 * @author diego
 */
public class LoginController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        Usuario usuario = new Usuario();
        usuario = (Usuario) session.getAttribute("usuario");

        RequestDispatcher rd;
        if (session.getAttribute("usuario") == null) {
            response.sendRedirect(request.getContextPath() + "/homepage");

        } else {
            if (usuario.getPerfil().equals("administrador") //&& usuario.getEstatus().equals("activo")
                    ) {
                rd = request.getRequestDispatcher("app/index-admin.jsp");
                rd.forward(request, response);

            } else if (usuario.getPerfil().equals("cliente") //&& usuario.getEstatus().equals("activo")
                    ) {
                rd = request.getRequestDispatcher("app/index-cliente.jsp");
                rd.forward(request, response);

            }
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        request.setCharacterEncoding("UTF-8");

        //Inicio de Sesion
        //Recibimos parámetros del formulario login
        String userParam = request.getParameter("user");
        String passParam = request.getParameter("pass");
        String msg = "";

        //recuperamos una instancia del objeto HttpSession
        HttpSession session = request.getSession();

        //Se crea la conexión y el UsuarioDao
        DbConnection conn = new DbConnection();
        UsuarioDao usuarioDao = new UsuarioDao(conn);

        //Verificamos en la BD, si es un usuario correcto
        //y nos desconectamos de la BD
        Usuario usuario = usuarioDao.login(userParam, passParam);
        conn.disconnect();
        
        RequestDispatcher rd;
        if (usuario.getIdUsuario() > 0) {
            //Creamos una variable de session, con el registro de usuario (Bean)
            //Verificar en el administrador de aplicaciones de tomcat.
            session.setAttribute("usuario", usuario);
            
            //Verificamos el tipo de usuario: Admin o Cliente y lo enviamos 
            //a su respectivo panel
            if (usuario.getPerfil().equals("administrador")) {
                rd = request.getRequestDispatcher("app/index-admin.jsp");
                rd.forward(request, response);

            } else if (usuario.getPerfil().equals("cliente")) {
                rd = request.getRequestDispatcher("app/index-cliente.jsp");
                rd.forward(request, response);
            }
        } else { //se devuelve a la url el controlador 'homepage'
            msg="Ocurrió Un error, no se pudo ingresar";
            request.setAttribute("message", msg);
            rd = request.getRequestDispatcher("paginas/mensaje.jsp");
            rd.forward(request, response);
            //response.sendRedirect(request.getContextPath() + "/homepage");
        }

    }

}
