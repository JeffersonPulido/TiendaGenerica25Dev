package Controlador;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Modelo.Proveedores;
import ModeloDAO.ProveedorDAO;


@WebServlet("/ControladorProveedores")
public class ControladorProveedores extends HttpServlet {
	private static final long serialVersionUID = 1L;

    String listar="views/Proveedores/proveedores.jsp";
    String add="views/Proveedores/addProveedores.jsp";
    String edit="views/Proveedores/updateProveedores.jsp";
    Proveedores p=new Proveedores();
    ProveedorDAO dao=new ProveedorDAO();
    int nitproveedor;
	

    public ControladorProveedores() {

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
            int nitproveedor = Integer.parseInt(request.getParameter("txtnitproveedor"));
            String ciudad_proveedor = request.getParameter("txtciudad_proveedor");
            String direccion_proveedor = request.getParameter("txtdireccion_proveedor");
            String nombre_proveedor = request.getParameter("txtnombre_proveedor");
            String telefono_proveedor = request.getParameter("txttelefono_proveedor");
            p.setNitproveedor(nitproveedor);
            p.setCiudad_proveedor(ciudad_proveedor);
            p.setDireccion_proveedor(direccion_proveedor);
            p.setNombre_proveedor(nombre_proveedor);
            p.setTelefono_proveedor(telefono_proveedor);
            dao.add(p);
            acceso=listar;
        }
        else if(action.equalsIgnoreCase("editar")){
            request.setAttribute("idper",request.getParameter("nitproveedor"));
            acceso=edit;
        }
        else if(action.equalsIgnoreCase("Actualizar")){
        	nitproveedor=Integer.parseInt(request.getParameter("txtid"));
            String ciudad_proveedor = request.getParameter("txtciudad_proveedor");
            String direccion_proveedor = request.getParameter("txtdireccion_proveedor");
            String nombre_proveedor = request.getParameter("txtnombre_proveedor");
            String telefono_proveedor = request.getParameter("txttelefono_proveedor");
            p.setNitproveedor(nitproveedor);
            p.setCiudad_proveedor(ciudad_proveedor);
            p.setDireccion_proveedor(direccion_proveedor);
            p.setNombre_proveedor(nombre_proveedor);
            p.setTelefono_proveedor(telefono_proveedor);
            dao.edit(p);
            acceso=listar;
        }
        else if(action.equalsIgnoreCase("eliminar")){
        	nitproveedor=Integer.parseInt(request.getParameter("nitproveedor"));
            p.setNitproveedor(nitproveedor);
            dao.eliminar(nitproveedor);
            acceso=listar;
        }
        RequestDispatcher vista=request.getRequestDispatcher(acceso);
        vista.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
