<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- CSS -->
   	    <link rel="shortcut icon" href="images/icono.ico"> 
   	    <link rel="stylesheet" href="css/footer.css">
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
        <title>Tienda Supermarket S.A.S.</title>
    </head>
    <body>

        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <a class="navbar-brand" href="views/Principal.jsp" target="miContenedor">Tienda Supermarket S.A.S.</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <!-- 
                    <li class="nav-item active">
                        <a class="nav-link">Home<span class="sr-only">(current)</span></a>
                    </li>
                     -->
                   	<li class="nav-item">
                        <a class="nav-link" href="Controlador?accion=listar" target="miContenedor"><i class="fas fa-users"></i> Usuarios</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="ControladorClientes?accion=listar" target="miContenedor"><i class="fas fa-user-tie"></i> Clientes</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="ControladorProveedores?accion=listar" target="miContenedor" ><i class="fas fa-boxes"></i> Proveedores</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="ControladorProductos?accion=listar" target="miContenedor"><i class="fas fa-carrot"></i> Productos</a>
                    </li>
                    <li class="nav-item">
                        <!-- <a class="nav-link" href="ControladorV?menu=Principal" target="miContenedor"><i class="fas fa-money-bill-alt"></i> Ventas</a>  -->
                        <a class="nav-link" href="views/Ventas/regVenta.jsp" target="miContenedor"><i class="fas fa-money-bill-alt"></i> Ventas</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="views/reportes.jsp" target="miContenedor"><i class="far fa-file-alt"></i> Reportes</a>
                    </li>
                </ul>
                <div class="btn-group">
                	<a class="btn btn-danger center-block" href="index.jsp"><i class="fas fa-power-off"></i> Cerrar Sesion</a>
                </div>
            </div>
        </nav>
        <%
			if(request.getParameter("men")!=null){
			String mensaje=request.getParameter("men");
			out.print("<script>alert('"+mensaje+"');</script>");
			}
		%>
        <div class="m-3" style="height:540px;">
            <iframe name="miContenedor" style="height:95%; width:100%;" frameBorder="0"; src="views/Principal.jsp" title="Pagina Principal"></iframe>
        </div>
	    <div class="footer-text">
			<a href="#sec-2">©MinTIC2022 Developers</a>
	    </div>
        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
    </body>
</html>
