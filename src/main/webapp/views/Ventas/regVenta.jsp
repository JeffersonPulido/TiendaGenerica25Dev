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
        <title>Registrar Venta || Tienda Supermarket S.A.S.</title>
        <style>
            @media print{
                .seccion1, .btn, .columna{
                    display:none;
                }
            }
        </style>
    </head>
	<body>
        <!--NAV BAR-->
	    <header class="site-navbar js-sticky-header site-navbar-target" role="banner">
	      <div class="container">
	        <div class="row align-items-center position-relative">
	          <div class="site-logo">
	            <a href="views/home.jsp" class="text-black"><span class="text-primary"></span><img src="images/LOGO.jpg" style="width: 20%;"></a>
	          </div>
	          <div class="col-12">
	            <nav class="site-navigation text-right ml-auto " role="navigation">
	              <ul class="site-menu main-menu js-clone-nav ml-auto d-none d-lg-block">
	                <li><a href="Controlador?accion=listar" class="nav-link">Usuarios</a></li>
	                <li><a href="ControladorClientes?accion=listar" class="nav-link">Clientes</a></li>
	                <li><a href="ControladorProveedores?accion=listar" class="nav-link">Proveedores</a></li>
	                <li><a href="ControladorProductos?accion=listar" class="nav-link">Productos</a></li>
	                <li><a href="ControladorVentas?menu=Principal" class="nav-link">Ventas</a></li>
	                <li><a href="reportes.jsp" class="nav-link">Reportes</a></li>
	                <li><a href="login.jsp"><i class="fas fa-power-off"></i> Salir</a></li>
	              </ul>
	            </nav>
	          </div>
	          <div class="toggle-button d-inline-block d-lg-none"><a href="#" class="site-menu-toggle py-5 js-menu-toggle text-black"><span class="icon-menu h3"></span></a></div>
	        </div>
	      </div>
	    </header><hr>
		<div class="row">
            <div class="col-md-5 seccion1 ">
                <div class="card ">
                    <h5 class="card-header">Datos Cliente</h5>
                    <div class="card-body">
                        <form method="post" action="ControladorVentas?menu=Ventas">
                            <div class="row">
                                <div class="col-md-4 d-flex">
                                    <input type="number" name="documentocliente" class="form-control" placeholder="Documento cliente" value="${cliente.getCedula_cliente()}">
                                    <input type="submit" name="accion" value="BuscarCliente" class="btn btn-outline-dark">
                                </div>
                                <div class="col-md-8 d-flex">
                                    <input type="text" name="nombrecliente" class="form-control" placeholder="Nombre cliente" value="${cliente.getNombre_cliente()}">
                                </div>
                            </div>
                            <div class="row"></div>

                        </form>
                    </div>
                </div>
                <div class="card">
                    <h5 class="card-header">Datos producto</h5>
                    <div class="card-body">
                        <form action="Controlador?menu=Ventas" method="post">
                            <div class="row">
                                <div class="col-md-12 d-flex form-group">
                                    <input type="number" name="codigoproducto" class="form-control" placeholder="Codigo Producto">
                                    <input type="submit" name="accion" value="BuscarProducto" class="btn btn-outline-dark">
                                </div>
                                <div class="col-md-12 d-flex form-group">
                                    <input type="text" name="nombreproducto" class="form-control" placeholder="Nombre Producto">
                                </div>
                                <div class="col-md-6 d-flex form-group">
                                    <input type="text" name="precioproducto" class="form-control" placeholder="$ 0">
                                </div>
                                <div class="col-md-6 d-flex form-group">
                                    <input type="number" value="1" name="cantidadproducto" class="form-control" placeholder="Cantidad">
                                </div>
                            </div>
                            <input type="submit" name="accion" value="AgregarProducto" class="btn btn-outline-primary col text-center">
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-md-7">
                <div class="card">
                    <div class="card-header">
                        <div class="form-group row">
                             <label class="col-sm-2 col-form-label">Factura</label>
                        <input class="form-control col-md-4" type="text" name="txtnumerofactura">
                        </div>
                       
                    </div>
                    <div class="card-body">
                         <table class="table">
                    <thead class="thead-light">
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Codigo</th>
                            <th scope="col">Producto</th>
                            <th scope="col">Precio</th>
                            <th scope="col">Cantidad</th>
                            <th scope="col">Total</th>
                            <th scope="col" class="columna">Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                       <c:forEach var="lista" items="${listaventas}">
                        <tr>
                            <th scope="row" style="width: 30px;">${lista.getItem()}</th>
                            <td style="width: 30px;">${lista.getIdProducto()}</td>
                            <td style="width: 350px;">${lista.getDescripcionProducto()}</td>
                            <td>$ ${lista.getPrecio()}</td>
                            <td style="width: 30px;">${lista.getCantidad()}</td>
                            <td>$ ${lista.getSubtotal()}</td>
                            <td class="columna">
                                <a class="btn btn-danger">Eliminar</a>
                                <a class="btn btn-warning">Editar</a>
                            </td>
                        </tr>
                        </c:forEach>
                  	</tbody>
                </table>
                    </div>
                    <div class="card-footer d-flex">
                        <div class="col-md-8 text-center">
                            <a class="btn btn-success" onclick="print()" href="Controlador?menu=Ventas&accion=GenerarVenta">Generar Venta</a>
                            <!-- <a class="btn btn-danger" href="Controlador?menu=Ventas&accion=NuevaVenta">Nueva Venta</a>  -->
                        </div>
                        <div class="col-md-4">
                            <input type=text" name="txttotalapagar" class="form-control" placeholder="$ 0" disabled="disabled">
                         </div>
                    </div>
                    
                </div>

            </div>
        </div>

	</body>
</html>