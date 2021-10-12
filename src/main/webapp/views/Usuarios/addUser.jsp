<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
	    <!-- Required meta tags -->
	    <meta charset="utf-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	    <!-- Bootstrap CSS -->
	    <link rel="stylesheet" href="css/bootstrap.min.css">
	    <link rel="shortcut icon" href="images/icono.ico"> 
	    <script src="https://kit.fontawesome.com/c159e6bc0d.js" crossorigin="anonymous"></script>
        <title>Añadir Usuario || Tienda Supermarket S.A.S.</title>
    </head>
    <body>
        <!--NAV BAR-->

        <div class="container">
            <div class="col-lg-6">
                <h3>Agregar Usuario</h3>
                <form action="Controlador">
                    Cedula Ciudadania:<br>
                    <input class="form-control" type="text" name="txtcedula_usuario" required><br>
                    Correo Electronico: <br>
                    <input class="form-control" type="text" name="txtemail_usuario" required><br>
                    Nombre Completo: <br>
                    <input class="form-control" type="text" name="txtnombre_usuario" required><br>
                    Password: <br>
                    <input class="form-control" type="text" name="txtpassword" required><br>
                    Usuario: <br>
                    <input class="form-control" type="text" name="txtusuario" required><br>
                    <input class="btn btn-primary" type="submit" name="accion" value="Agregar"><hr>
                    <a href="Controlador?accion=listar">Regresar</a><br><br>
                </form>
            </div>
        </div>
    </body>
    
</html>
