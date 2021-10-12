package ModeloDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import Config.Conexion;
import Interfaces.CRUDproductos;
import Modelo.Productos;
import Modelo.Proveedores;

public class ProductosDAO implements CRUDproductos {

	Conexion cn=new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Productos p=new Productos();
    /*=============================VENTAS=====================================*/
    
    public Productos listarId(int id) {
    	Productos pr = new Productos();
    	String sql = "select * from productos where codigo_producto="+id;
    	try {
			con = cn.conectar();
			ps=con.prepareStatement(sql);
			rs=ps.executeQuery();
			while (rs.next()) {
				pr.setCodigo_producto(rs.getInt(1));
				pr.setNombre_producto(rs.getString(2));
				pr.setNitproveedor(rs.getInt(3));
				pr.setPrecio_compra(rs.getDouble(4));
				pr.setIvacompra(rs.getDouble(5));
				pr.setPrecio_venta(rs.getDouble(6));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return pr;
    	
    	
    }
    
    /*=============================CRUD=====================================*/
	@Override//SELECT * FROM TOTAL
	public List listar() {
		ArrayList<Productos>list=new ArrayList<>();
        String sql="select * from productos";
        try {
            con=cn.conectar();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
            	Productos per=new Productos();
                per.setCodigo_producto(rs.getInt("codigo_producto"));
                per.setNombre_producto(rs.getString("nombre_producto"));
                per.setNitproveedor(rs.getInt("nitproveedor"));
                per.setPrecio_compra(rs.getDouble("precio_compra"));
                per.setIvacompra(rs.getDouble("ivacompra"));
                per.setPrecio_venta(rs.getDouble("precio_venta"));
                list.add(per);
            }
        } catch (Exception e) {
        }
        return list;
	}

	@Override //SELECT INDIVIDUAL
	public Productos list(int codigo_producto) {
		String sql="select * from productos where codigo_producto="+codigo_producto;
        try {
            con=cn.conectar();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){                
                p.setCodigo_producto(rs.getInt("codigo_producto"));
                p.setNombre_producto(rs.getString("nombre_producto"));
                p.setNitproveedor(rs.getInt("nitproveedor"));
                p.setPrecio_compra(rs.getDouble("precio_compra"));
                p.setIvacompra(rs.getDouble("ivacompra"));
                p.setPrecio_venta(rs.getDouble("precio_venta"));
            }
        } catch (Exception e) {
        }
        return p;
	}

	@Override //UPDATE
	public boolean edit(Productos productos) {
        String sql="update productos set nombre_producto = '"+productos.getNombre_producto()+"', nitproveedor = '"+productos.getNitproveedor()+"', precio_compra = '"+productos.getPrecio_compra()+"', ivacompra = '"+productos.getIvacompra()+"', precio_venta = '"+productos.getPrecio_venta()+"' where codigo_producto = "+productos.getCodigo_producto();
        try {
            con=cn.conectar();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
	}

	@Override //DELETE
	public boolean eliminar(int codigo_producto) {
        String sql="delete from productos where codigo_producto="+codigo_producto;
        try {
            con=cn.conectar();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
	}
	
}
