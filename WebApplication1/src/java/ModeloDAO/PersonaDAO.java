
package ModeloDAO;

import Config.Conexion;
import Interfaces.CRUD;
import Modelo.Persona;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class PersonaDAO implements CRUD {
    //Instanciamos
    Conexion cn=new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Persona p= new Persona();
    
    @Override
    public List Listar() {
       ArrayList<Persona>List= new ArrayList<>();
       String sql= "select * from Persona";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()) {
                //Instanciamos nuevamente
                Persona per= new Persona();
                per.setId(rs.getInt("Id"));
                per.setDni(rs.getString("DNI"));
                per.setDni(rs.getString("Nombres"));
                //Añadimos
                List.add(per);
            }
        } catch (Exception e) {
        } return List;
    }

    @Override
    public Persona list(int id) {
      String sql= "select * from Persona where Id="+id;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()) {
              
                p.setId(rs.getInt("Id"));
                p.setDni(rs.getString("DNI"));
                p.setDni(rs.getString("Nombres"));
              
            }
        } catch (Exception e) {
        } return p;    
    }

    @Override
    public boolean add(Persona per) {
    String sql="insert into persona(DNI, Nombres)values('"+per.getDni()+"','"+per.getNombres()+"')'";
            try{
                con=cn.getConnection();
                ps=con.prepareStatement(sql);
                ps.executeUpdate();
                }catch (Exception e){
   
            }
        return false;   
    }

    @Override
    public boolean edit(Persona per) {
    String sql="update persona set DNI='"+per.getDni()+"',Nombres='"+per.getNombres()+"'where Id='"+per.getId();
    try{
        con=cn.getConnection();
        ps=con.prepareStatement(sql);
        ps.executeUpdate();
    }  catch (Exception e){
        
    }
    return false ;       
    }

    @Override
    public boolean eliminar(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
