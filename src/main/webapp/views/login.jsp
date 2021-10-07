<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="shortcut icon" href="../images/icono.ico"> 
        <title>Log In || Supermarket SAS</title>
        <link rel="stylesheet" type="text/css" href="../css/login1.css">
	    <script src="https://kit.fontawesome.com/c159e6bc0d.js" crossorigin="anonymous"></script>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">    </head>
    <body>
        <div class="container" id="container">
			<div class="form-container sign-in-container">
                <form class="formulario" method="post" action="../Login">
					<h1>Iniciar Sesion</h1><br><br><br><br><br><br>
					<input name="user" type="text" placeholder="Ingresa tu usuario..." /><br><br>
					<input name="password" type="password" placeholder="Ingresa tu contraseña..." />
					<a href="#" class="a">Olvidaste tu contraseña?</a>
					<input class="btn btn-success btn-block" type="submit" name="accion" value="Ingresar">
				</form>			
			</div>
			<div class="overlay-container">
				<div class="overlay">
					<div class="overlay-panel overlay-right">
						<img alt="Logo" src="../images/back.jpeg" width="70%" style="border-radius:20px;">
						<a class="a" href="../index.jsp">Volver</a>
					</div>
				</div>
			</div>
		</div>
        <%
			if(request.getParameter("men")!=null){
			String mensaje=request.getParameter("men");
			out.print("<script>alert('"+mensaje+"');</script>");
			}
		%>
	</body>
</html>