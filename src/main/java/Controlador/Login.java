package Controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public Login() {

    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if (request.getParameter("enviar")!=null) {
			String usuario, password;
			usuario = request.getParameter("user");
			password = request.getParameter("password");
			if (usuario.equals("Admin") && password.equals("123456")) {
				response.sendRedirect("views/home.jsp?men=Bienvenido Administrador");
			}else {
				response.sendRedirect("views/login.jsp?men=Datos Incorrectos");
			}
		}
	}

}
