<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">
    <head>
	    <!-- Required meta tags -->
	    <meta charset="utf-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	    <!-- Bootstrap CSS -->
	    <link rel="stylesheet" href="../../css/bootstrap.min.css">
	    <!-- Style -->
	    <link rel="shortcut icon" href="../../images/icono.ico"> 
	    <script src="https://kit.fontawesome.com/c159e6bc0d.js" crossorigin="anonymous"></script>
        <title>Productos || Tienda Supermarket S.A.S.</title>
    </head>
  <body>
	<br>
    <!--CONTENT-->
        <div class="container">
            <h1>Productos</h1>
            <hr>
            <h3>Cargue de archivos CSV para agregar productos</h3><br>
			<form action="../../ControladorProductos" method="post" enctype="multipart/form-data">
				<div>
					<label>Archivo</label>
					<input type="file" name="archivo" required> 
				</div>
				<br>
				<input class="buttons" type="submit" name="cargar" value="Cargar Archivo" required>
			</form>               
        </div>

        <%
			if(request.getParameter("men")!=null){
			String mensaje=request.getParameter("men");
			out.print("<script>alert('"+mensaje+"');</script>");
			}
		%>
  </body>
</html>