
<%@page import="Modelo.Proveedores"%>
<%@page import="ModeloDAO.ProveedorDAO"%>
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
        <title>Modificar Proveedor || Tienda Supermarket S.A.S.</title>
    </head>
    <body>

        <div class="container">
            <div class="col-lg-6">
            <%
            	ProveedorDAO dao=new ProveedorDAO();
	            int nitproveedor=Integer.parseInt((String)request.getAttribute("idper"));
	            Proveedores p=(Proveedores)dao.list(nitproveedor);
       		%>
            <h3>Modificar Proveedor</h3>
            <form action="ControladorProveedores">
                Nit:<br>
                <input class="form-control" type="text" name="txtnitproveedor" value="<%= p.getNitproveedor()%>" disabled><br>
                <input class="form-control" type="hidden" name="txtid" value="<%= p.getNitproveedor()%>">
                Ciudad: <br>
                <input class="form-control" type="text" name="txtciudad_proveedor" value="<%= p.getCiudad_proveedor()%>" required><br>
                Direccion: <br>
                <input class="form-control" type="text" name="txtdireccion_proveedor" value="<%= p.getDireccion_proveedor()%>" required><br>
                Nombre Completo: <br>
                <input class="form-control" type="text" name="txtnombre_proveedor" value="<%= p.getNombre_proveedor()%>" required><br>
                Telefono: <br>
                <input class="form-control" type="text" name="txttelefono_proveedor" value="<%= p.getTelefono_proveedor()%>" required><br>

                <input class="btn btn-primary" type="submit" name="accion" value="Actualizar"> <hr>
                <a href="ControladorProveedores?accion=listar">Regresar</a><br><br>
            </form>
          </div>
          
        </div>
    </body>
</html>