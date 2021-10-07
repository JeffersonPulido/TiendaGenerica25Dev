package Controlador;


import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import javax.swing.JOptionPane;

import Modelo.Productos;
import ModeloDAO.ProductosDAO;
import ModeloDAO.DAOProductos;


@WebServlet("/ControladorProductos")
@MultipartConfig
public class ControladorProductos extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    String listar="views/Productos/productos.jsp";
    String edit="views/Productos/updateProductos.jsp";
    Productos p=new Productos();
    ProductosDAO dao=new ProductosDAO();
    int codigo_producto;
	
    public ControladorProductos() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String acceso="";
        String action=request.getParameter("accion");
        if(action.equalsIgnoreCase("listar")){
            acceso=listar; 
        }
        else if(action.equalsIgnoreCase("editar")){
            request.setAttribute("idper",request.getParameter("codigo_producto"));
            acceso=edit;
        }
        else if(action.equalsIgnoreCase("Actualizar")){
        	codigo_producto=Integer.parseInt(request.getParameter("txtid"));
            String nombre_producto = request.getParameter("txtnombre_producto");
            int nitproveedor = Integer.parseInt(request.getParameter("txtnitproveedor"));
            double precio_compra = Double.parseDouble(request.getParameter("txtprecio_compra"));
            double ivacompra = Double.parseDouble(request.getParameter("txtivacompra"));
            double precio_venta = Double.parseDouble(request.getParameter("txtprecio_venta"));
            p.setCodigo_producto(codigo_producto);
            p.setNombre_producto(nombre_producto);;
            p.setNitproveedor(nitproveedor);
            p.setPrecio_compra(precio_compra);
            p.setIvacompra(ivacompra);
            p.setPrecio_venta(precio_venta);
            dao.edit(p);
            acceso=listar;
        }
        else if(action.equalsIgnoreCase("eliminar")){
        	codigo_producto=Integer.parseInt(request.getParameter("codigo_producto"));
            p.setCodigo_producto(codigo_producto);
            dao.eliminar(codigo_producto);
            acceso=listar;
        }
        RequestDispatcher vista=request.getRequestDispatcher(acceso);
        vista.forward(request, response);
	}

    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			DAOProductos prod= new DAOProductos();

			if (request.getParameter("cargar") != null) {
				Part archivo = request.getPart("archivo");

				String url = "C:/Users/Jefferson-PC/eclipse-workspace/TiendaGenerica/src/main/webapp/views/Productos/media/";
				try {
					InputStream file = archivo.getInputStream();
					File copia = new File(url + "productos.csv");
					
					String fileName = archivo.getSubmittedFileName();
					String fe = "";
					int i = fileName.lastIndexOf('.');
					if (i > 0) {
					    fe = fileName.substring(i+1);
					}
					
					if("csv".equals(fe)) {
						FileOutputStream escribir = new FileOutputStream(copia);
						int num = file.read();
						while (num != -1) {
							escribir.write(num);
							num = file.read();
						}
						escribir.close();
						file.close();
						
						if (prod.Cargar_Productos(url + "productos.csv")) {
							response.sendRedirect("ControladorProductos?accion=listar");
						} else {
							response.sendRedirect("views/Productos/upProductos.jsp?men=Error al registrar productos..");
						}
					} else {
						response.sendRedirect("views/Productos/upProductos.jsp?men=Error: formato de archivo invalido");
					}
					
					
				} catch (Exception e) {
					JOptionPane.showMessageDialog(null, "Error de archivo" + e);
				}
			}

		}

	}
