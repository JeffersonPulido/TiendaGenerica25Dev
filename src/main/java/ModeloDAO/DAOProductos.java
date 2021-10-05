package ModeloDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.swing.JOptionPane;

import Config.Conexion;


public class DAOProductos {
	Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
	
	public boolean Cargar_Libros(String Ruta) {
		
		boolean resul=false;
		
		try {
			String sql="load data infile '"+Ruta+"' into table productos fields terminated by ',' lines terminated by '\r\n'";
			ps=con.prepareStatement(sql);
			resul=ps.executeUpdate()>0;
		}catch(SQLException ex) {
			JOptionPane.showMessageDialog(null,"Error al Cargar productos:   "+ex);
		}
		
		return resul;
	}
}
