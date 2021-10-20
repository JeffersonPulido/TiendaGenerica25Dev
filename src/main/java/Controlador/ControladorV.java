package Controlador;

import java.io.IOException;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Modelo.Clientes;
import Modelo.Productos;
import Modelo.Ventas;
import ModeloDAO.ClientesDAO;
import ModeloDAO.ProductosDAO;
import ModeloDAO.VentaDAO;

@WebServlet("/ControladorV")
public class ControladorV extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ControladorV() {

    }
    
	Clientes usuario = new Clientes();
	ClientesDAO usuarioDAO = new ClientesDAO();
	Productos producto = new Productos();
	ProductosDAO productoDAO = new ProductosDAO();
	Ventas venta = new Ventas();
	int item, codProducto, precio, cantidad;
    String descripcion;
    double subtotal, totalapagar = 0;
    List<Ventas> listaVentas = new ArrayList();
    VentaDAO ventaDAO = new VentaDAO();
    int numfac = 0;
    NumberFormat formatoNumero1;
    String total1;
    
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
	                case "BuscarProducto":
	                    int codigoProducto = Integer.parseInt(request.getParameter("codigoproducto"));
	                    producto = productoDAO.BuscarProductos(codigoProducto);
	                    request.setAttribute("productoseleccionado", producto);
	                    request.setAttribute("cliente", usuario);
	                    break;
	                	/*
	                    for (int i = 0; i < listaVentas.size(); i++) {
	                        totalapagar += listaVentas.get(i).getSubtotal();
	                    }
	                    formatoNumero1 = NumberFormat.getNumberInstance();
	                    total1 = formatoNumero1.format(totalapagar);
	                    request.setAttribute("totalapagar", total1);
	                    request.setAttribute("listaventas", listaVentas);
	                    break;
	                	 */

	                case "AgregarProducto":
	                    totalapagar = 0;
	                    venta = new Ventas();
	                    item++;
	                    codProducto = Integer.parseInt(request.getParameter("codigoproducto"));
	                    descripcion = request.getParameter("nombreproducto");
	                    precio = Integer.parseInt(request.getParameter("precioproducto"));
	                    cantidad = Integer.parseInt(request.getParameter("cantidadproducto"));
	                    subtotal = precio * cantidad;
	                    venta.setCodigo_venta(item);
	                    venta.setNombreproducto(descripcion);
	                    venta.setCantidad_producto(cantidad);
	                    venta.setValor_venta(precio);
	                    venta.setValor_total(subtotal);
	                    venta.setCodigo_producto(codProducto);
	                    listaVentas.add(venta);
	                    System.err.println("error venta");
	                    request.setAttribute("listaventas", listaVentas);
	                    for (int i = 0; i < listaVentas.size(); i++) {
	                        totalapagar += listaVentas.get(i).getValor_total();
	                    }
	                    formatoNumero1 = NumberFormat.getNumberInstance();
	                    total1 = formatoNumero1.format(totalapagar);
	                    request.setAttribute("totalapagar", total1);
	                    break;
/*
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
