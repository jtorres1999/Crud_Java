
package Config;

import java.sql.Connection;
import java.sql.DriverManager;


public class Conexion {
 Connection con;
    public Conexion() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bd_registro","jesus","Aa012345678");
        } catch (Exception e) {
            System.out.println("Error:" +e);
        }
        
        
}  
    public Connection getConnection(){
        return con;
    }
}