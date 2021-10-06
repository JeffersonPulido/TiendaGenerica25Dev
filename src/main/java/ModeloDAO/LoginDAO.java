package ModeloDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import Config.Conexion;
import Interfaces.validar;
import Modelo.Usuario;

public class LoginDAO implements validar{
	
	Connection con;
	Conexion cn = new Conexion();
	PreparedStatement ps;
	ResultSet rs;
	int r=0;
	
	@Override
	public int validacion(Usuario user) {
		String sql = "select * from usuarios where usuario = ? and password = ?";
		try {
			con=cn.getConnection();
			ps=con.prepareStatement(sql);
			ps.setString(1, user.getUsuario());
			ps.setString(2, user.getPassword());
			rs=ps.executeQuery();
			while (rs.next()) {
				r =  r+1;
				user.setUsuario(rs.getString("usuario"));
				user.setPassword(rs.getString("password"));
			}
			if (r==1) {
				return r = 1;
			}else {
				return r = 0;
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return r;
	}

}
