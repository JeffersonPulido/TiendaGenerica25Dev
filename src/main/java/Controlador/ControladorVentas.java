package Controlador;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Modelo.Clientes;
import Modelo.Productos;
import ModeloDAO.ClientesDAO;
import ModeloDAO.ProductosDAO;

@WebServlet("/ControladorVentas")
public class ControladorVentas extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ControladorVentas() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    Clientes usuario = new Clientes();
    ClientesDAO usuarioDAO = new ClientesDAO();
    
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String menu = request.getParameter("menu");
        String accion = request.getParameter("accion");
        if (menu.equals("Principal")) {
            request.getRequestDispatcher("views/Ventas/regVenta.jsp").forward(request, response);
        }
        if (menu.equals("Ventas")) {
            switch (accion) {
                case "BuscarCliente":
                    int documentoCliente = Integer.parseInt(request.getParameter("documentocliente"));
                    usuario = usuarioDAO.BuscarCliente(documentoCliente);
                    request.setAttribute("cliente", usuario);
                    break;
                default:
            }
            request.getRequestDispatcher("regVenta.jsp").forward(request, response);
        }
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
