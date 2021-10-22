package ModeloDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.swing.JOptionPane;

import Config.Conexion;
import Interfaces.CRUDproductos;
import Modelo.Clientes;
import Modelo.Productos;
import Modelo.ProductosDTO;
import Modelo.Proveedores;

public class ProductosDAO implements CRUDproductos {

	Conexion cn=new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Productos p=new Productos();
    
	
    /*========================================VENTAS=============================================*/
    
	public ProductosDTO consultarProductoV(String codigo) {
		ProductosDTO pdDTO = null;
		try {
			String consultar = "SELECT codigo_producto, nombre_producto, precio_venta, ivacompra FROM productos WHERE codigo_producto=?";
            con=cn.conectar();
			ps = con.prepareStatement(consultar);
			ps.setString(1, codigo);
			rs = ps.executeQuery();
			while(rs.next()) {
				pdDTO = new ProductosDTO(rs.getString(1), rs.getString(2), rs.getInt(3), rs.getInt(4));
			}
		} catch (SQLException sqle) {
			JOptionPane.showMessageDialog(null, "Error al consultar el producto en DAO. ");
		}
		return pdDTO;
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
