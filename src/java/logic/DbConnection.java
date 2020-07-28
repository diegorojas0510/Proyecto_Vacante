package logic;

/**
 *
 * @author diego
 */
import java.sql.*;
public class DbConnection {
    
    static String bd ="mydb";
    static String login ="root";
    static String password ="root";
    static String url ="jdbc:mysql://localhost/"+ bd;
    
    Connection conn = null; //VAriable que guarda la conexión.
    
    public DbConnection(){
        try {
            Class.forName("com.mysql.jdbc.Driver");//Obtenemos el Driver para mysql
            conn=DriverManager.getConnection(url, login, password);
            if (conn != null) {
                System.out.println("Connnection database ["+ conn +"] OK");
            }
        } catch (ClassNotFoundException | SQLException e) {
            System.out.println("Exepción conexión:  " + e.getMessage());
        }
    }
    
    public Connection getConnection(){
        return conn;
    }
    
    public void disconnect(){
        System.out.println("Clossing database: [" + conn + "] OK");
        if (conn !=null) {
            try {
                conn.close();
            } catch (Exception e) {
                System.out.println(e);
            }
            
        }
    }
}
