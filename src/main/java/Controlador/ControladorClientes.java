package Controlador;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Modelo.Clientes;
import ModeloDAO.ClientesDAO;

/**
 * Servlet implementation class ControladorClientes
 */
@WebServlet("/ControladorClientes")
public class ControladorClientes extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	String listar="views/Clientes/clientes.jsp";
    String add="views/Clientes/addClientes.jsp";
    String edit="views/Clientes/updateClientes.jsp";
    Clientes p=new Clientes();
    ClientesDAO dao=new ClientesDAO();
    int cedula_cliente;
	
    public ControladorClientes() {

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
            int cedula_cliente = Integer.parseInt(request.getParameter("txtcedula_cliente"));
            String direccion_cliente = request.getParameter("txtdireccion_cliente");
            String email_cliente = request.getParameter("txtemail_cliente");
            String nombre_cliente = request.getParameter("txtnombre_cliente");
            String telefono_cliente = request.getParameter("txttelefono_cliente");
            p.setCedula_cliente(cedula_cliente);
            p.setDireccion_cliente(direccion_cliente);
            p.setEmail_cliente(email_cliente);
            p.setNombre_cliente(nombre_cliente);
            p.setTelefono_cliente(telefono_cliente);
            dao.add(p);
            acceso=listar;
        }
        else if(action.equalsIgnoreCase("editar")){
            request.setAttribute("idper",request.getParameter("cedula_cliente"));
            acceso=edit;
        }
        else if(action.equalsIgnoreCase("Actualizar")){
        	cedula_cliente=Integer.parseInt(request.getParameter("txtid"));
            String direccion_cliente = request.getParameter("txtdireccion_cliente");
            String email_cliente = request.getParameter("txtemail_cliente");
            String nombre_cliente = request.getParameter("txtnombre_cliente");
            String telefono_cliente = request.getParameter("txttelefono_cliente");
            p.setCedula_cliente(cedula_cliente);
            p.setDireccion_cliente(direccion_cliente);
            p.setEmail_cliente(email_cliente);
            p.setNombre_cliente(nombre_cliente);
            p.setTelefono_cliente(telefono_cliente);
            dao.edit(p);
            acceso=listar;
        }
        else if(action.equalsIgnoreCase("eliminar")){
        	cedula_cliente=Integer.parseInt(request.getParameter("cedula_cliente"));
            p.setCedula_cliente(cedula_cliente);
            dao.eliminar(cedula_cliente);
            acceso=listar;
        }
        RequestDispatcher vista=request.getRequestDispatcher(acceso);
        vista.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
