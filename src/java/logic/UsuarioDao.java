package logic;

import com.mysql.jdbc.util.ResultSetUtil;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import models.Usuario;

/**
 *
 * @author diego
 */
public class UsuarioDao {

    DbConnection conn;

    public UsuarioDao(DbConnection conn) {
        this.conn = conn;
    }

    //Login
    public Usuario login(String user, String pass) {
        try {
            String sql = "SELECT * FROM usuario WHERE username=? AND pass=md5(?)"
                    + "AND estatus='activo' limit 1";
            PreparedStatement ps = conn.getConnection().prepareStatement(sql);
            ps.setString(1, user);
            ps.setString(2, pass);
            ResultSet rs = ps.executeQuery();

            Usuario usuario = new Usuario(0);
            while (rs.next()) {
                usuario.setIdUsuario(rs.getInt("idUsuario"));
                usuario.setNombre(rs.getString("nombre"));
                usuario.setEmail(rs.getString("email"));
                usuario.setUsername(rs.getString("username"));
                usuario.setPass(rs.getString("pass"));
                usuario.setPerfil(rs.getString("perfil"));
                usuario.setEstatus(rs.getString("estatus"));
            }
            //System.out.println(usuario);
            return usuario;

        } catch (SQLException e) {
            System.out.println("Error UsuarioDao.login: " + e.getMessage());
            return null;
        }

    }

    //Crear Usuario
    //Consultar Usuario
    //Crear Usuario
}
