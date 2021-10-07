<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
        <title>A�adir Proveedor || Tienda Supermarket S.A.S.</title>
    </head>
    <body>
        <!--NAV BAR-->
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
	                <li><a href="views/Productos/upProductos.jsp" class="nav-link">Productos</a></li>
	                <li><a href="#blog-section" class="nav-link">Ventas</a></li>
	                <li><a href="views/reportes.jsp" class="nav-link">Reportes</a></li>
	                <li><a href="login.jsp"><i class="fas fa-power-off"></i> Salir</a></li>
	              </ul>
	            </nav>
	          </div>
	          <div class="toggle-button d-inline-block d-lg-none"><a href="#" class="site-menu-toggle py-5 js-menu-toggle text-black"><span class="icon-menu h3"></span></a></div>
	        </div>
	      </div>
	    </header>
        <div class="container">
            <div class="col-lg-6">
                <h3>Agregar Proveedor</h3>
                <form action="ControladorProveedores">
                    Nit:<br>
                    <input class="form-control" type="text" name="txtnitproveedor" required><br>
                    Ciudad: <br>
                    <input class="form-control" type="text" name="txtciudad_proveedor" required><br>
                    Direccion: <br>
                    <input class="form-control" type="text" name="txtdireccion_proveedor" required><br>
                    Nombre Completo: <br>
                    <input class="form-control" type="text" name="txtnombre_proveedor" required><br>
                    Telefono: <br>
                    <input class="form-control" type="text" name="txttelefono_proveedor" required><br>
                    <input class="btn btn-primary" type="submit" name="accion" value="Agregar"><hr>
                    <a href="ControladorProveedores?accion=listar">Regresar</a><br><br>
                </form>
            </div>
        </div>
    </body>
    
</html>
