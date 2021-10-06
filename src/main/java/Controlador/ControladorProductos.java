package Controlador;


import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;


import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import javax.swing.JOptionPane;

import ModeloDAO.DAOProductos;


@WebServlet("/ControladorProductos")
@MultipartConfig
public class ControladorProductos extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ControladorProductos() {
        super();
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
							response.sendRedirect("views/Productos/upProductos.jsp?men=Productos insertados correctamente..");
						} else {
							response.sendRedirect("views/Productos/upProductos.jsp?men=Error al registrar productos..");
						}
					} else {
						response.sendRedirect("views/Productos/upProductos.jsp?men=Formato de archivo no valido");
					}
					
					
				} catch (Exception e) {
					JOptionPane.showMessageDialog(null, "Error de archivo" + e);
				}
			}

		}

	}
