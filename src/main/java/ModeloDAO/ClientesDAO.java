package ModeloDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import Config.Conexion;
import Interfaces.CRUDclientes;
import Modelo.Clientes;

public class ClientesDAO implements CRUDclientes {

	Conexion cn=new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Clientes c=new Clientes();
	
    /*========================================VENTAS=============================================*/
    
    public Clientes BuscarCliente(int cedula_cliente){
    	Clientes c = new Clientes();
        String consulta = "SELECT * FROM clientes WHERE cedula_cliente = ?";
        con = cn.conectar();
        try {
            ps = con.prepareStatement(consulta);
            ps.setInt(1, cedula_cliente);
            rs = ps.executeQuery();
            while(rs.next()){
                c.setCedula_cliente(rs.getInt("cedula_cliente"));
                c.setDireccion_cliente(rs.getString("direccion_cliente"));
                c.setEmail_cliente(rs.getString("email_cliente"));
                c.setNombre_cliente(rs.getString("nombre_cliente"));
                c.setTelefono_cliente(rs.getString("telefono_cliente"));
                //System.err.println(""+usuario.getNombre());
              }
        } catch (Exception e) {
        }
        return c;
    }
    
	/*========================================CRUD=============================================*/
	@Override //SELECT * FROM TOTAL
	public List listar() {
        ArrayList<Clientes>list=new ArrayList<>();
        String sql="select * from clientes";
        try {
            con=cn.conectar();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
            	Clientes cli=new Clientes();
                cli.setCedula_cliente(rs.getInt("cedula_cliente"));
                cli.setDireccion_cliente(rs.getString("direccion_cliente"));
                cli.setEmail_cliente(rs.getString("email_cliente"));
                cli.setNombre_cliente(rs.getString("nombre_cliente"));
                cli.setTelefono_cliente(rs.getString("telefono_cliente"));
                list.add(cli);
            }
        } catch (Exception e) {
        }
        return list;
	}

	@Override //SELECT INDIVIDUAL
	public Clientes list(int cedula_cliente) {
        String sql="select * from clientes where cedula_cliente="+cedula_cliente;
        try {
            con=cn.conectar();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){                
                c.setCedula_cliente(rs.getInt("cedula_cliente"));
                c.setDireccion_cliente(rs.getString("direccion_cliente"));
                c.setEmail_cliente(rs.getString("email_cliente"));
                c.setNombre_cliente(rs.getString("nombre_cliente"));
                c.setTelefono_cliente(rs.getString("telefono_cliente"));
            }
        } catch (Exception e) {
        }
        return c;
	}

	@Override //INSERT 
	public boolean add(Clientes cliente) {
	       String sql="insert into clientes (cedula_cliente, direccion_cliente, email_cliente, nombre_cliente, telefono_cliente) values ('"+cliente.getCedula_cliente()+"','"+cliente.getDireccion_cliente()+"','"+cliente.getEmail_cliente()+"','"+cliente.getNombre_cliente()+"','"+cliente.getTelefono_cliente()+"')";
	        try {
	            con=cn.conectar();
	            ps=con.prepareStatement(sql);
	            ps.executeUpdate();
	        } catch (Exception e) {
	        }
	       return false;
	}

	@Override //UPDATE
	public boolean edit(Clientes cliente) {
        String sql="update clientes set direccion_cliente = '"+cliente.getDireccion_cliente()+"', email_cliente = '"+cliente.getEmail_cliente()+"', nombre_cliente = '"+cliente.getNombre_cliente()+"', telefono_cliente = '"+cliente.getTelefono_cliente()+"' where cedula_cliente = "+cliente.getCedula_cliente();
        try {
            con=cn.conectar();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
	}

	@Override //DELETE
	public boolean eliminar(int cedula_cliente) {
        String sql="delete from clientes where cedula_cliente="+cedula_cliente;
        try {
            con=cn.conectar();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
	}

}
