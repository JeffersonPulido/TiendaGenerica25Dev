
<%@page import="Modelo.Clientes"%>
<%@page import="ModeloDAO.ClientesDAO"%>
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
        <title>Modificar Cliente || Tienda Supermarket S.A.S.</title>
    </head>
    <body>

        <div class="container">
            <div class="col-lg-6">
            <%
	            ClientesDAO dao=new ClientesDAO();
	            int cedula_cliente=Integer.parseInt((String)request.getAttribute("idper"));
	            Clientes p=(Clientes)dao.list(cedula_cliente);
       		%>
            <h3>Modificar Cliente</h3>
            <form action="ControladorClientes">
                Cedula Ciudadania:<br>
                <input class="form-control" type="text" name="txtcedula_cliente" value="<%= p.getCedula_cliente()%>" disabled><br>
                <input class="form-control" type="hidden" name="txtid" value="<%= p.getCedula_cliente()%>">
                Direccion: <br>
                <input class="form-control" type="text" name="txtdireccion_cliente" value="<%= p.getDireccion_cliente()%>" required><br>
                Correo Electronico: <br>
                <input class="form-control" type="text" name="txtemail_cliente" value="<%= p.getEmail_cliente()%>" required><br>
                Nombre Completo: <br>
                <input class="form-control" type="text" name="txtnombre_cliente" value="<%= p.getNombre_cliente()%>" required><br>
                Telefono: <br>
                <input class="form-control" type="text" name="txttelefono_cliente" value="<%= p.getTelefono_cliente()%>" required><br>

                <input class="btn btn-primary" type="submit" name="accion" value="Actualizar"> <hr>
                <a href="ControladorClientes?accion=listar">Regresar</a><br><br>
            </form>
          </div>
          
        </div>
    </body>
</html>