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
	    <!-- Style -->
	    <link rel="shortcut icon" href="images/icono.ico"> 
	    <script src="https://kit.fontawesome.com/c159e6bc0d.js" crossorigin="anonymous"></script>
        <title>Añadir Proveedor || Tienda Supermarket S.A.S.</title>
    </head>
    <body>

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
