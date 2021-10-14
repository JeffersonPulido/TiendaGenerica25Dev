<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Productos"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.ProductosDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Style -->
    <link rel="shortcut icon" href="images/icono.ico"> 
    <script src="https://kit.fontawesome.com/c159e6bc0d.js" crossorigin="anonymous"></script>
    
	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>

    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.datatables.net/1.10.23/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.23/js/dataTables.bootstrap.min.js"></script>
    <link href="https://cdn.datatables.net/1.10.23/css/dataTables.bootstrap.min.css"/>
    <title>Productos || Supermarket SAS</title>
        
    <script>
        $(document).ready(function() {
            $('#TablaDat').DataTable({
                "paging": true,
                "buttons": true,
                "lengthMenu": [[5, 10, 25, -1], [5, 10, 25, "TODOS"]],
                "paginate": true,
                "language": {"url": "https://cdn.datatables.net/plug-ins/1.10.22/i18n/Spanish.json"}
                    
            });
        } );
    </script>
  </head>
  <body>

    <!--CONTENT-->
            <div class="container">
            <h1>Productos</h1>
            <a class="btn btn-success" href="views/Productos/upProductos.jsp"><i class="fas fa-plus-circle"></i> Agregar archivo plano</a>
            <hr>
            <br>
                            
            <table class="table table-reponsive table-striped table-hover text-center table-bordered" id="TablaDat" >
               <thead>
                  <tr>
                      <th>CODIGO</th>
                      <th>NOMBRE</th>
                      <th>NIT PROVEEDOR</th>
                      <th>PRECIO COMPRA</th>
                      <th>IVA</th>
                      <th>PRECIO VENTA</th>
                      <th>ACCIONES</th>
                  </tr>
               </thead>
                <tbody>
                    <tr>
                    	<%
                    		ProductosDAO dao=new ProductosDAO();
		                    List<Productos>list=dao.listar();
		                    Iterator<Productos>iter=list.iterator();
		                    Productos per=null;
		                    while(iter.hasNext()){
	                       per=iter.next();
                		%>
                        <td><%= per.getCodigo_producto()%></td>
                        <td><%= per.getNombre_producto()%></td>
                        <td><%= per.getNitproveedor()%></td>
                        <td><%= per.getPrecio_compra()%></td>
                        <td><%= per.getIvacompra()%></td>
                        <td><%= per.getPrecio_venta()%></td>
                        <td>
                            <a class="btn btn-warning" href="ControladorProductos?accion=editar&codigo_producto=<%= per.getCodigo_producto()%>"><i class="fas fa-edit"></i></a>
                            <a class="btn btn-danger" href="ControladorProductos?accion=eliminar&codigo_producto=<%= per.getCodigo_producto()%>"><i class="fas fa-minus-circle"></i></a>
                        </td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
        </div>
                <%
			if(request.getParameter("men")!=null){
			String mensaje=request.getParameter("men");
			out.print("<script>alert('"+mensaje+"');</script>");
			}
		%>

  </body>
</html>