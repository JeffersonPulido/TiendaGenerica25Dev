package Controlador;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//import javax.swing.JOptionPane;

import Modelo.Usuario;
import ModeloDAO.LoginDAO;

@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	LoginDAO lg = new LoginDAO();
	Usuario u = new Usuario();
	int r;
	
    public Login() {
    	
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String accion = request.getParameter("accion");
		if (accion.equals("Ingresar")) {
			String user, pass;
			user = request.getParameter("user");
			pass = request.getParameter("password");
			u.setUsuario(user);
			u.setPassword(pass);
			r = lg.validacion(u);
			if (r==1) {
				response.sendRedirect("views/home.jsp?men=Bienvenido!");
			}else {
				response.sendRedirect("views/login.jsp?men=Usuario o contraseña errados, intente de nuevo");
			}
			//admininicial
			//admin123456

			
			/*
			if (user.equals("admininicial") && pass.equals("admin123456")) {
				response.sendRedirect("views/home.jsp?men=Bienvenido Administrador");
			}else {
				response.sendRedirect("views/login.jsp?men=Usuario o contraseña errados, intente de nuevo");
			}
			*/
		}

	}

}
