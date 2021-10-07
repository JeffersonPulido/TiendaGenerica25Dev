
<%@page import="Modelo.Productos"%>
<%@page import="ModeloDAO.ProductosDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
	    <!-- Required meta tags -->
	    <meta charset="utf-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	    <link rel="stylesheet" href="css/owl.carousel.min.css">
	    <!-- Bootstrap CSS -->
	    <link rel="stylesheet" href="css/bootstrap.min.css">
	    <!-- Style -->
	    <link rel="stylesheet" href="css/estilos.css">
	    <link rel="stylesheet" href="css/style.css">
	    <link rel="shortcut icon" href="images/icono.ico"> 
	    <script src="https://kit.fontawesome.com/c159e6bc0d.js" crossorigin="anonymous"></script>
        <title>Modificar Producto || Tienda Supermarket S.A.S.</title>
    </head>
    <body>
   	    <header class="site-navbar js-sticky-header site-navbar-target" role="banner">
	      <div class="container">
	        <div class="row align-items-center position-relative">
	          <div class="site-logo">
	            <a href="home.jsp" class="text-black"><span class="text-primary"></span><img src="images/LOGO.jpg" style="width: 20%;"></a>
	          </div>
	          <div class="col-12">
	            <nav class="site-navigation text-right ml-auto " role="navigation">
	              <ul class="site-menu main-menu js-clone-nav ml-auto d-none d-lg-block">
	                <li><a href="Controlador?accion=listar" class="nav-link">Usuarios</a></li>
	                <li><a href="ControladorClientes?accion=listar" class="nav-link">Clientes</a></li>
	                <li><a href="ControladorProveedores?accion=listar" class="nav-link">Proveedores</a></li>
	                <li><a href="ControladorProductos?accion=listar" class="nav-link">Productos</a></li>
	                <li><a href="#blog-section" class="nav-link">Ventas</a></li>
	                <li><a href="views/reportes.jsp" class="nav-link">Reportes</a></li>
	                <li><a href="views/login.jsp"><i class="fas fa-power-off"></i> Salir</a></li>
	              </ul>
	            </nav>
	          </div>
	          <div class="toggle-button d-inline-block d-lg-none"><a href="#" class="site-menu-toggle py-5 js-menu-toggle text-black"><span class="icon-menu h3"></span></a></div>
	        </div>
	      </div>
	    </header>
        <div class="container">
            <div class="col-lg-6">
            <%
            	ProductosDAO dao=new ProductosDAO();
	            int codigo_producto=Integer.parseInt((String)request.getAttribute("idper"));
	            Productos p=(Productos)dao.list(codigo_producto);
       		%>
            <h1>Modificar Producto</h1>
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