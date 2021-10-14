package Controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Modelo.Clientes;
import ModeloDAO.ClientesDAO;

@WebServlet("/ControladorV")
public class ControladorV extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ControladorV() {

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
	                /*
	                case "BuscarProducto":
	                    int codigoProducto = Integer.parseInt(request.getParameter("codigoproducto"));
	                    producto = productoDAO.ConsultaPorCodigo(codigoProducto);
	                    request.setAttribute("productoseleccionado", producto);
	                    request.setAttribute("cliente", usuario);
	                    for (int i = 0; i < listaVentas.size(); i++) {
	                        totalapagar += listaVentas.get(i).getSubtotal();
	                    }
	                    formatoNumero1 = NumberFormat.getNumberInstance();
	                    total1 = formatoNumero1.format(totalapagar);
	                    request.setAttribute("totalapagar", total1);
	                    request.setAttribute("listaventas", listaVentas);
	                    break;

	                case "AgregarProducto":
	                    totalapagar = 0;
	                    venta = new Venta();
	                    item++;
	                    codProducto = Integer.parseInt(request.getParameter("codigoproducto"));
	                    descripcion = request.getParameter("nombreproducto");
	                    precio = Integer.parseInt(request.getParameter("precioproducto"));
	                    cantidad = Integer.parseInt(request.getParameter("cantidadproducto"));
	                    subtotal = precio * cantidad;
	                    venta.setItem(item);
	                    venta.setDescripcionProducto(descripcion);
	                    venta.setCantidad(cantidad);
	                    venta.setPrecio(precio);
	                    venta.setSubtotal(subtotal);
	                    venta.setIdProducto(codProducto);
	                    listaVentas.add(venta);
	                    System.err.println("error venta");
	                    request.setAttribute("listaventas", listaVentas);
	                    for (int i = 0; i < listaVentas.size(); i++) {
	                        totalapagar += listaVentas.get(i).getSubtotal();
	                    }
	                    formatoNumero1 = NumberFormat.getNumberInstance();
	                    total1 = formatoNumero1.format(totalapagar);
	                    request.setAttribute("totalapagar", total1);
	                    break;
	                    
	                case "GenerarVenta":
	                    venta.setIdCliente(usuario.getId());
	                    venta.setIdEmpleado(1);
	                    venta.setNumeroComprobante("" + numfac);
	                    venta.setFecha("2020-10-21");
	                    venta.setMonto(totalapagar);
	                    venta.setEstado("1");
	                    ventaDAO.RegistrarVenta(venta);
	                    int idv = ventaDAO.ObtenerMaximoIdVentas();
	                    for (int i = 0; i < listaVentas.size(); i++) {
	                        venta = new Venta();
	                        venta.setIdVenta(idv);
	                        venta.setIdProducto(listaVentas.get(i).getIdProducto());
	                        venta.setCantidad(listaVentas.get(i).getCantidad());
	                        venta.setPrecio(listaVentas.get(i).getPrecio());
	                        ventaDAO.GuardarDetalleVenta(venta);
	                    }

	                    break;
	                */
	                default:
	                /*
	                    String factura = ventaDAO.ObtenerNumeroDeFactura();
	                    System.err.println("nume factura" + factura);
	                    if (factura == null) {
	                        factura = "1";
	                    } else {
	                        numfac = Integer.parseInt(factura) + 1;
	                    }

	                    request.setAttribute("numerofactura", numfac);
	                */
	            }
	            request.getRequestDispatcher("views/Ventas/regVenta.jsp").forward(request, response);
	        }
		
	}
	


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		
       
	}

}
