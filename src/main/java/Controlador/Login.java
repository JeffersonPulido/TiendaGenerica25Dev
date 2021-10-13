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
        if (accion.equalsIgnoreCase("Ingresar")) {
        	String documento = request.getParameter("user");
            String pass = request.getParameter("password");
            u = lg.Validar(documento, pass);
            System.out.print("dato"+u.getNombre_usuario());
            if(u.getNombre_usuario()!= null){
                System.out.print("dato1"+u.getNombre_usuario());
                request.setAttribute("usuario", u);
                request.getRequestDispatcher("views/home.jsp?men=Bienvenido!").forward(request, response);
                

            }else{
                request.getRequestDispatcher("index.jsp?men=Datos Erroneos!").forward(request, response);
            }
            

        }else{
            request.getRequestDispatcher("index.jsp?men=Datos Erroneos!").forward(request, response);
        }

	}

}