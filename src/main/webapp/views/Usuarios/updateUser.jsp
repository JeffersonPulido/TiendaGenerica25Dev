
<%@page import="Modelo.Usuario"%>
<%@page import="ModeloDAO.UsuarioDAO"%>
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
        <title>Modificar Usuario || Tienda Supermarket S.A.S.</title>
    </head>
    <body>

        <div class="container">
            <div class="col-lg-6">
            <%
	            UsuarioDAO dao=new UsuarioDAO();
	            int cedula_usuario=Integer.parseInt((String)request.getAttribute("idper"));
	            Usuario p=(Usuario)dao.list(cedula_usuario);
       		%>
            <h3>Modificar Usuario</h3>
            <form action="Controlador">
                Cedula Ciudadania:<br>
                <input class="form-control" type="text" name="txtcedula_ciudadania" value="<%= p.getCedula_usuario()%>" disabled><br>
                <input class="form-control" type="hidden" name="txtid" value="<%= p.getCedula_usuario()%>">
                Correo Electronico: <br>
                <input class="form-control" type="text" name="txtemail_usuario" value="<%= p.getEmail_usuario()%>" required><br>
                Nombre Completo: <br>
                <input class="form-control" type="text" name="txtnombre_usuario" value="<%= p.getNombre_usuario()%>" required><br>
                Contraseña: <br>
                <input class="form-control" type="text" name="txtpassword" value="<%= p.getPassword()%>" required><br>
                Usuario: <br>
                <input class="form-control" type="text" name="txtusuario" value="<%= p.getUsuario()%>" required><br>

                <input class="btn btn-primary" type="submit" name="accion" value="Actualizar"> <hr>
                <a href="Controlador?accion=listar">Regresar</a><br><br>
            </form>
          </div>
          
        </div>
    </body>
</html>