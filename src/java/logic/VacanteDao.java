package logic;

//import com.mysql.jdbc.util.ResultSetUtil;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.LinkedList;
import java.util.List;
//import java.util.Locale;
import models.Vacante;

/**
 *
 * @author diego
 */
public class VacanteDao {

    public VacanteDao(DbConnection conn) {
        this.conn = conn;
    }

//Se crea el objeto de tipo conneción    
    DbConnection conn;

    //CREATE: Insertar una vacante
    public boolean insert(Vacante vacante) {
        try {
            //Variable que lleva la sentencia SQL
            SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
            String sql = "INSERT INTO vacante VALUES(?,?,?,?,?)";
            //Permite ejecutar una sentencia SQL
            PreparedStatement ps = conn.getConnection().prepareStatement(sql);
            ps.setInt(1, vacante.getId());
            ps.setString(2, format.format(vacante.getFechaPublicacion()));
            ps.setString(3, vacante.getNombre());
            ps.setString(5, vacante.getDetalle());
            ps.setString(4, vacante.getDescripcion());
            ps.executeUpdate();
            return true;

        } catch (Exception e) {
            System.out.println("Error VacanteDao.insert" + e.getMessage());
            return false;
        }

    }

    //Método READ: Ultimas 3 vacantes
    public List<Vacante> getUltimas() {
        try {
            String sql = "SELECT * FROM vacante = ORDER BY id DESC LIMIT 3";
            PreparedStatement ps = conn.getConnection().prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            List<Vacante> list = new LinkedList<>();
            Vacante vacante;
            while (rs.next()) {
                vacante = new Vacante(rs.getInt("id"));
                vacante.setFechaPublicacion(rs.getDate("fechaPublicacion"));
                vacante.setNombre(rs.getString("nombre"));
                vacante.setDetalle(rs.getString("detalle"));
                vacante.setDescripcion(rs.getString("descripcion"));
                list.add(vacante);
            }
            return list;
        } catch (Exception e) {
            System.out.println("Error VacanteDao.getUltimas" + e.getMessage());
            return null;
        }

    }

    //Método READ: Búsqueda por Id
    public Vacante getById(int idVacante) {
        try {
            String sql = "SELECT * FROM vacante WHERE id=? LIMIT 1";
            PreparedStatement ps = conn.getConnection().prepareStatement(sql);
            ps.setInt(1, idVacante);
            ResultSet rs = ps.executeQuery();
            Vacante vacante = new Vacante(0);
            while (rs.next()) {
              vacante.setId(rs.getInt("id"));
              vacante.setFechaPublicacion(rs.getDate("fechaPublicacion"));
              vacante.setNombre(rs.getString("nombre"));
              vacante.setDetalle(rs.getString("detalle"));
              vacante.setDescripcion(rs.getString("descripcion"));
            }
            return vacante;
        } catch (SQLException e) {
            System.out.println("Error VacanteDao.getById" + e.getMessage());
            return null;
        }
    }

    //Método READ: todas las vacantes
    public List<Vacante> getAll() {
        try {
            String sql = "SELECT * FROM vacante ORDER BY id DESC";
            PreparedStatement ps = conn.getConnection().prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            List<Vacante> list = new LinkedList<>();
            Vacante vacante;
            while (rs.next()) {
                vacante = new Vacante(rs.getInt("id"));
                vacante.setFechaPublicacion(rs.getDate("fechaPublicacion"));
                vacante.setNombre(rs.getString("nombre"));
                vacante.setDetalle(rs.getString("detalle"));
                vacante.setDescripcion(rs.getString("descripcion"));
                list.add(vacante);
            }
            return list;
        } catch (SQLException e) {
            System.out.println("Error VacanteDao.getAll" + e.getMessage());
            return null;
        }
    }

    //Método UPDATE.
    public boolean update(Vacante vacante) {
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM--dd");
        String sql = "UPDATE vacante SET fechaPublicacion=?,nombre=?,detalle=?,descripcion=? WHERE id = ?";
        try {
            PreparedStatement ps = conn.getConnection().prepareStatement(sql);
            ps.setString(1, format.format(vacante.getFechaPublicacion()));
            ps.setString(2, vacante.getNombre());
            ps.setString(3, vacante.getDetalle());
            ps.setString(4, vacante.getDescripcion());
            ps.setInt(5, vacante.getId());
            ps.executeUpdate();
            return true;
        } catch (Exception e) {
            System.out.println("Error VacanteDao.Insert" + e.getMessage());
            return false;
        }

    }

    //Método DELETE
    public int delete(int idVacante) {
        try {
            String sql = "DELETE FROM vacante WHERE id=?";
            PreparedStatement ps = conn.getConnection().prepareStatement(sql);
            ps.setInt(1, idVacante);
            int rows = ps.executeUpdate();
            return rows;
        } catch (Exception e) {
            System.out.println("Error VacanteDao.eliminar: " + e.getMessage());
            return 0;

        }
    }

}
