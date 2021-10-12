
<%@page import="Modelo.Productos"%>
<%@page import="ModeloDAO.ProductosDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
	    <!-- Required meta tags -->
	    <meta charset="utf-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	    <!-- Bootstrap CSS -->
	    <link rel="stylesheet" href="css/bootstrap.min.css">
	    <!-- Style -->
	    <link rel="shortcut icon" href="images/icono.ico"> 
	    <script src="https://kit.fontawesome.com/c159e6bc0d.js" crossorigin="anonymous"></script>
        <title>Modificar Producto || Tienda Supermarket S.A.S.</title>
    </head>
    <body>

        <div class="container">
            <div class="col-lg-6">
            <%
            	ProductosDAO dao=new ProductosDAO();
	            int codigo_producto=Integer.parseInt((String)request.getAttribute("idper"));
	            Productos p=(Productos)dao.list(codigo_producto);
       		%>
            <h3>Modificar Producto</h3>
            <form action="ControladorProductos">
                Codigo:<br>
                <input class="form-control" type="text" name="txtcodigo_producto" value="<%= p.getCodigo_producto()%>" disabled><br>
                <input class="form-control" type="hidden" name="txtid" value="<%= p.getCodigo_producto()%>">
                Nombre: <br>
                <input class="form-control" type="text" name="txtnombre_producto" value="<%= p.getNombre_producto()%>" required><br>
                NIT Proveedor: <br>
                <input class="form-control" type="text" name="txtnitproveedor" value="<%= p.getNitproveedor()%>" required><br>
                Precio Compra: <br>
                <input class="form-control" type="text" name="txtprecio_compra" value="<%= p.getPrecio_compra()%>" required><br>
                IVA: <br>
                <input class="form-control" type="text" name="txtivacompra" value="<%= p.getIvacompra()%>" required><br>
				Precio Venta: <br>
                <input class="form-control" type="text" name="txtprecio_venta" value="<%= p.getPrecio_venta()%>" required><br>
                <input class="btn btn-primary" type="submit" name="accion" value="Actualizar"> <hr>
                <a href="ControladorProductos?accion=listar">Regresar</a><br><br>
            </form>
          </div>
          
        </div>
    </body>
</html>