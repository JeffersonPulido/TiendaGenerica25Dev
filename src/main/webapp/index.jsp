
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
	    <!-- Required meta tags -->
	    <meta charset="utf-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	    <link rel="stylesheet" href="css/owl.carousel.min.css">
	    <!-- Bootstrap CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
	    <!-- Style -->
	    <link rel="shortcut icon" href="images/icono.ico"> 
        <link rel="stylesheet" href="css/estilos.css">
        <title>Tienda Supermarket S.A.S.</title>
    </head>
    <body>
        <br>
        <br>
        <div class="container">
            <center>
				<h1>Bienvenidos a Tiendas Supermarket S.A.S.</h1><hr>
				<h3><a href="views/login.jsp" style="text-decoration: none;">Inicia sesion</a> para acceder a los modulos de gestion de la tienda.</h3>   <br>
				<img src="images/sp3.gif" width=65%>    
            </center>
            
        </div>
    </body>
                    <%
			if(request.getParameter("men")!=null){
			String mensaje=request.getParameter("men");
			out.print("<script>alert('"+mensaje+"');</script>");
			}
		%>
    <div class="footer-text">
		<a href="#sec-2">©MinTIC2022 Developers</a>
    </div>
</html>
