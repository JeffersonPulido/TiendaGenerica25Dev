<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="shortcut icon" href="../images/icono.ico"> 
        <title>Log In || Supermarket SAS</title>
        <link rel="stylesheet" type="text/css" href="../css/login.css">
    </head>
    <body>
        <div class="contenedor-general">
            <div class="cont-formulario">
                <form class="formulario" method="post" action="../Login">
                    <h1 class="titulo">Tiendas Supermarket</h1><hr><br>
                    <h2 class="subtitulo">Inicio de sesion</h2><br>
                    <label>Usuario:</label><br>
                    <input type="text" class="input-user" name="user" placeholder="Ingrese su usuario..."><br><br>
                    <label>Contraseña:</label><br>
                    <input type="password" class="input-password" name="password" placeholder="Ingrese su contraseña..."><br><br>
                    <button type="submit" class="botonC" name="enviar">Ingresar</button><br><br>
                    <a class="link">¿No tienes cuenta aun?, Registrate!</a>
                </form>
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