package ModeloDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import Config.Conexion;
import Interfaces.CRUDpro;
import Modelo.Proveedores;

public class ProveedorDAO implements CRUDpro{

	Conexion cn=new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Proveedores p=new Proveedores();
	
	@Override//SELECT * FROM TOTAL
	public List listar() {
		ArrayList<Proveedores>list=new ArrayList<>();
        String sql="select * from proveedores";
        try {
            con=cn.conectar();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
            	Proveedores per=new Proveedores();
                per.setNitproveedor(rs.getInt("nitproveedor"));
                per.setCiudad_proveedor(rs.getString("ciudad_proveedor"));
                per.setDireccion_proveedor(rs.getString("direccion_proveedor"));
                per.setNombre_proveedor(rs.getString("nombre_proveedor"));
                per.setTelefono_proveedor(rs.getString("telefono_proveedor"));
                list.add(per);
            }
        } catch (Exception e) {
        }
        return list;
	}

	@Override //SELECT INDIVIDUAL
	public Proveedores list(int nitproveedor) {
        String sql="select * from proveedores where nitproveedor="+nitproveedor;
        try {
            con=cn.conectar();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){                
                p.setNitproveedor(rs.getInt("nitproveedor"));
                p.setCiudad_proveedor(rs.getString("ciudad_proveedor"));
                p.setDireccion_proveedor(rs.getString("direccion_proveedor"));
                p.setNombre_proveedor(rs.getString("nombre_proveedor"));
                p.setTelefono_proveedor(rs.getString("telefono_proveedor"));
            }
        } catch (Exception e) {
        }
        return p;
	}

	@Override //INSERT 
	public boolean add(Proveedores pro) {
	       String sql="insert into proveedores (nitproveedor, ciudad_proveedor, direccion_proveedor, nombre_proveedor, telefono_proveedor) values ('"+pro.getNitproveedor()+"','"+pro.getCiudad_proveedor()+"','"+pro.getDireccion_proveedor()+"','"+pro.getNombre_proveedor()+"','"+pro.getTelefono_proveedor()+"')";
	        try {
	            con=cn.conectar();
	            ps=con.prepareStatement(sql);
	            ps.executeUpdate();
	        } catch (Exception e) {
	        }
	       return false;
	}

	@Override //UPDATE
	public boolean edit(Proveedores pro) {
        String sql="update proveedores set ciudad_proveedor = '"+pro.getCiudad_proveedor()+"', direccion_proveedor = '"+pro.getDireccion_proveedor()+"', nombre_proveedor = '"+pro.getNombre_proveedor()+"', telefono_proveedor = '"+pro.getTelefono_proveedor()+"' where nitproveedor = "+pro.getNitproveedor();
        try {
            con=cn.conectar();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
	}

	@Override //DELETE
	public boolean eliminar(int nitproveedor) {
        String sql="delete from proveedores where nitproveedor="+nitproveedor;
        try {
            con=cn.conectar();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
	}
	
}
