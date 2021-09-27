package ModeloDAO;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import Config.Conexion;
import Interfaces.CRUD;
import Modelo.Usuario;

public class UsuarioDAO implements CRUD {

	Conexion cn=new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Usuario p=new Usuario();
	
	@Override //SELECT * FROM TOTAL
	public List listar() {
        ArrayList<Usuario>list=new ArrayList<>();
        String sql="select * from usuarios";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
            	Usuario per=new Usuario();
                per.setCedula_usuario(rs.getInt("cedula_usuario"));
                per.setEmail_usuario(rs.getString("email_usuario"));
                per.setNombre_usuario(rs.getString("nombre_usuario"));
                per.setPassword(rs.getString("password"));
                per.setUsuario(rs.getString("usuario"));
                list.add(per);
            }
        } catch (Exception e) {
        }
        return list;
	}

	@Override //SELECT INDIVIDUAL
	public Usuario list(int cedula_usuario) {
        String sql="select * from usuarios where cedula_usuario="+cedula_usuario;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){                
                p.setCedula_usuario(rs.getInt("cedula_usuario"));
                p.setEmail_usuario(rs.getString("email_usuario"));
                p.setNombre_usuario(rs.getString("nombre_usuario"));
                p.setPassword(rs.getString("password"));
                p.setUsuario(rs.getString("usuario"));
            }
        } catch (Exception e) {
        }
        return p;
	}

	@Override //INSERT 
	public boolean add(Usuario user) {
	       String sql="insert into usuarios (cedula_usuario, email_usuario, nombre_usuario, password, usuario) values ('"+user.getCedula_usuario()+"','"+user.getEmail_usuario()+"','"+user.getNombre_usuario()+"','"+user.getPassword()+"','"+user.getUsuario()+"')";
	        try {
	            con=cn.getConnection();
	            ps=con.prepareStatement(sql);
	            ps.executeUpdate();
	        } catch (Exception e) {
	        }
	       return false;
	}

	@Override //UPDATE
	public boolean edit(Usuario user) {
        String sql="update usuarios set email_usuario = '"+user.getEmail_usuario()+"', nombre_usuario = '"+user.getNombre_usuario()+"', password = '"+user.getPassword()+"', usuario = '"+user.getUsuario()+"' where cedula_usuario = "+user.getCedula_usuario();
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
	}

	@Override //DELETE
	public boolean eliminar(int cedula_usuario) {
        String sql="delete from usuarios where cedula_usuario="+cedula_usuario;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
	}

}
