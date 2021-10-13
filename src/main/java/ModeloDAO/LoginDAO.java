package ModeloDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

import Config.Conexion;
//import Interfaces.validar;
import Modelo.Usuario;

public class LoginDAO{
	
	Connection con;
	Conexion cn = new Conexion();
	PreparedStatement ps;
	ResultSet rs;
	int r=0;

	public Usuario Validar(String documento, String password) {
        Usuario usuario = new Usuario();
        String consulta = "SELECT * FROM usuarios WHERE usuario = ? AND password = ?";
        con = cn.conectar();
        try {
            ps = con.prepareStatement(consulta);
            ps.setString(1, documento);
            ps.setString(2, password);
            rs = ps.executeQuery();
            rs.next();
            do {
                usuario.setCedula_usuario(rs.getInt("cedula_usuario"));
                usuario.setEmail_usuario(rs.getString("email_usuario"));
                usuario.setNombre_usuario(rs.getString("nombre_usuario"));
                usuario.setPassword(rs.getString("password"));
                usuario.setUsuario(rs.getString("usuario"));
            } while (rs.next());
        } catch (SQLException ex) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return usuario;
    }

}
