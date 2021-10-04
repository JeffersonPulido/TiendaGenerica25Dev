package Controlador;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Modelo.Usuario;
import ModeloDAO.UsuarioDAO;


@WebServlet("/Controlador")
public class Controlador extends HttpServlet {
	private static final long serialVersionUID = 1L;

    String listar="views/Usuarios/users.jsp";
    String add="views/Usuarios/addUser.jsp";
    String edit="views/Usuarios/updateUser.jsp";
    Usuario p=new Usuario();
    UsuarioDAO dao=new UsuarioDAO();
    int cedula_usuario;
	
    public Controlador() {

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String acceso="";
        String action=request.getParameter("accion");
        if(action.equalsIgnoreCase("listar")){
            acceso=listar;            
        }else if(action.equalsIgnoreCase("add")){
            acceso=add;
        }
        else if(action.equalsIgnoreCase("Agregar")){
            int cedula_usuario = Integer.parseInt(request.getParameter("txtcedula_usuario"));
            String email_usuario = request.getParameter("txtemail_usuario");
            String nombre_usuario = request.getParameter("txtnombre_usuario");
            String password = request.getParameter("txtpassword");
            String usuario = request.getParameter("txtusuario");
            p.setCedula_usuario(cedula_usuario);
            p.setEmail_usuario(email_usuario);
            p.setNombre_usuario(nombre_usuario);
            p.setPassword(password);
            p.setUsuario(usuario);
            dao.add(p);
            acceso=listar;
        }
        else if(action.equalsIgnoreCase("editar")){
            request.setAttribute("idper",request.getParameter("cedula_usuario"));
            acceso=edit;
        }
        else if(action.equalsIgnoreCase("Actualizar")){
        	cedula_usuario=Integer.parseInt(request.getParameter("txtid"));
            String email_usuario = request.getParameter("txtemail_usuario");
            String nombre_usuario = request.getParameter("txtnombre_usuario");
            String password = request.getParameter("txtpassword");
            String usuario = request.getParameter("txtusuario");
            p.setCedula_usuario(cedula_usuario);
            p.setEmail_usuario(email_usuario);
            p.setNombre_usuario(nombre_usuario);
            p.setPassword(password);
            p.setUsuario(usuario);
            dao.edit(p);
            acceso=listar;
        }
        else if(action.equalsIgnoreCase("eliminar")){
        	cedula_usuario=Integer.parseInt(request.getParameter("cedula_usuario"));
            p.setCedula_usuario(cedula_usuario);
            dao.eliminar(cedula_usuario);
            acceso=listar;
        }
        RequestDispatcher vista=request.getRequestDispatcher(acceso);
        vista.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
