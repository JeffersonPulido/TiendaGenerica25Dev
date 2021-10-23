package Config;

import java.sql.*;

public class Conexion {
	
	private String bd = "grupo25_equipo6";
	private String url = "jdbc:mariadb://grupo25db2.c47knbsonjdi.us-east-2.rds.amazonaws.com/"+bd;
	private String usuario = "admin";
	private String pass = "Grupo25DB2";
	
	Connection conec = null;
	
	public Connection conectar() {
		try {
			Class.forName("org.mariadb.jdbc.Driver");
			conec = DriverManager.getConnection(url,usuario,pass);
			//JOptionPane.showMessageDialog(null, "Conexion OK....");
		} catch (Exception e) {
			//JOptionPane.showMessageDialog(null, "Error Conexion...."+e);
		}
		return conec;
	}

}