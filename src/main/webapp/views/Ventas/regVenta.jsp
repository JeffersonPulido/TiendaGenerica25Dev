<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<!-- Required meta tags -->
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<!-- Bootstrap CSS -->
		<link rel="stylesheet" href="../../css/bootstrap.min.css">
		<link rel="stylesheet" href="../../css/ventas.css">
		<link rel="shortcut icon" href="images/icono.ico">
		<script src="https://kit.fontawesome.com/c159e6bc0d.js" crossorigin="anonymous"></script>
		<title>Registrar Venta || Tienda Supermarket S.A.S.</title>
		<style>
		@media print {
			.seccion1, .btn, .columna {
				display: none;
			}
		}
	</style>
	</head>
	<body>
	<%!
		String 	cedulaCliente="", nombreCliente="", codigo1="", codigo2="", codigo3="",
					nombrePd1="", nombrePd2="", nombrePd3="",
					codigoV="",
					estado="";
			int 	cant1, cant2, cant3,
					precioPd1, precioPd2, precioPd3,
					ivaPd1, ivaPd2, ivaPd3, totalIva,
			    	valorT1, valorT2, valorT3, totalVenta, totalPagar;
	%>

	<%
		if(request.getParameter("cedulaCliente")!=null){
			cedulaCliente = request.getParameter("cedulaCliente");
			nombreCliente = request.getParameter("nombreCliente");
			estado= "disabled";
		}
	%>
	
	<%
		if(request.getParameter("codigo1")!=null){
			codigo1 = request.getParameter("codigo1");
			nombrePd1 = request.getParameter("nombrePd1");
			precioPd1 = Integer.parseInt(request.getParameter("precioPd1"));
			ivaPd1 = Integer.parseInt(request.getParameter("ivaPd1"));
		}
	%>
	
	<%
		if(request.getParameter("codigo2")!=null){
			codigo2 = request.getParameter("codigo2");
			nombrePd2 = request.getParameter("nombrePd2");
			precioPd2 = Integer.parseInt(request.getParameter("precioPd2"));
			ivaPd2 = Integer.parseInt(request.getParameter("ivaPd2"));
		}
	%>
	
	<%
		if(request.getParameter("codigo3")!=null){
			codigo3 = request.getParameter("codigo3");
			nombrePd3 = request.getParameter("nombrePd3");
			precioPd3 = Integer.parseInt(request.getParameter("precioPd3"));
			ivaPd3 = Integer.parseInt(request.getParameter("ivaPd3"));		
		}
	%>
	
	<%
		if(request.getParameter("totalVenta")!=null){
			cant1 = Integer.parseInt(request.getParameter("cant1"));
			valorT1 = Integer.parseInt(request.getParameter("valorT1"));
			cant2 = Integer.parseInt(request.getParameter("cant2"));
			valorT2 = Integer.parseInt(request.getParameter("valorT2"));
			cant3 = Integer.parseInt(request.getParameter("cant3"));
			valorT3 = Integer.parseInt(request.getParameter("valorT3"));
			totalVenta = Integer.parseInt(request.getParameter("totalVenta"));
			totalIva = Integer.parseInt(request.getParameter("totalIva"));
			totalPagar = Integer.parseInt(request.getParameter("totalPagar"));
			codigoV = request.getParameter("codigoV");
		}
	%>
	
	<%
		if(request.getParameter("mensaje")!=null){
			String mensaje = request.getParameter("mensaje");
			out.print("<script>alert('"+mensaje+"');</script>");
		}
		if(request.getParameter("men")!=null){
			cedulaCliente=""; 
			nombreCliente=""; 
			codigo1=""; 
			codigo2=""; 
			codigo3="";
			nombrePd1=""; 
			nombrePd2=""; 
			nombrePd3="";
			codigoV="";
			estado="";
			
			cant1=0; 
			cant2=0; 
			cant3=0;			
			precioPd1=0; 
			precioPd2=0;
			precioPd3=0;
			ivaPd1=0;
			ivaPd2=0;
			ivaPd3=0;
			totalIva=0;
			valorT1=0;
			valorT2=0;
			valorT3=0;
			totalVenta=0; 
			totalPagar=0;
		}
	
	%>

      	<form class="formulario2" action="../../ControladorV" method="post"> 

      		<div class="card ">
				<h4 class="card-header"><b>Datos Cliente</b></h4>
				<div class="card-body">
					<div class="row">
							<div class="col-md-12 d-flex form-group">
								<input class="form-control" type="text" name="cedulaCliente" value="<%=cedulaCliente%>" <%=estado%> required placeholder="Cedula Cliente">
            					<input type="hidden" name="cCliente" value="<%=cedulaCliente%>">
            					<input class="btn btn-outline-dark" type="submit" name="consultarCliente" value="Consultar">
            					<input class="form-control" type="text" name="nombreCliente" value="<%=nombreCliente%>" disabled>
           					</div>
					</div>
				</div>
				<div class="card-footer">
					<input class="form-control" type="text" name="consecutivoVenta" value="N° Factura: <%=codigoV%>" disabled>
				</div>
			</div>
			
      		<div class="card ">
				<h4 class="card-header"><b>Datos Productos</b></h4>
				<div class="card-body">
					<div class="row">
						<div class="col-md-12 d-flex form-group">
							<table>
					      		<thead>
					      			<tr>
					      				<th><label>Código Producto:</label></th>
					      				<th><label></label></th>
					      				<th><label>Nombre Producto:</label></th>
					      				<th><label>Cantidad:</label></th>
					      				<th><label>Valor Total:</label></th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>
								            <input class="Use" type="text" name="codigo1" value="<%=codigo1%>" placeholder="Codigo del Producto 1">
								            <input class="Use" type="text" name="codigo2" value="<%=codigo2%>" placeholder="Codigo del Producto 2">
								            <input class="Use	" type="text" name="codigo3" value="<%=codigo3%>" placeholder="Codigo del Producto 3">
					      				</td>
						      			<td>
						      				<input class="btn btn-outline-dark" type="submit" name="consultarPd1" value="Consultar">
								            <input class="btn btn-outline-dark" type="submit" name="consultarPd2" value="Consultar">
								            <input class="btn btn-outline-dark" type="submit" name="consultarPd3" value="Consultar">
						      			</td>
						      			<td>
						      				<input class="Used" type="text" name="nombrePd1" value="<%=nombrePd1%>" placeholder="Nombre del Producto 1" disabled>
								            <input class="Used" type="text" name="nombrePd2" value="<%=nombrePd2%>" placeholder="Nombre del Producto 2" disabled>
								            <input class="Used" type="text" name="nombrePd3" value="<%=nombrePd3%>" placeholder="Nombre del Producto 3" disabled>
						      			</td>
						      			<td>
						      				<input class="Use" type="text" name="cant1" value="<%=cant1%>">
								            <input class="Use" type="text" name="cant2" value="<%=cant2%>">
								            <input class="Use" type="text" name="cant3" value="<%=cant3%>">
					      				</td>
						      			<td>
						      				<input class="Used" type="text" name="valorT1" value="$ <%=valorT1%>" disabled>
								            <input type="hidden" name="precio1" value="<%=precioPd1%>">
								            <input type="hidden" name="iva1" value="<%=ivaPd1%>">
								            
								            <input class="Used" type="text" name="valorT2" value="$ <%=valorT2%>" disabled>
								            <input type="hidden" name="precio2" value="<%=precioPd2%>">
								            <input type="hidden" name="iva2" value="<%=ivaPd2%>">
								            
								            <input class="Used" type="text" name="valorT3" value="$ <%=valorT3%>" disabled>
								            <input type="hidden" name="precio3" value="<%=precioPd3%>">
								            <input type="hidden" name="iva3" value="<%=ivaPd3%>">
						      			</td>
						      			<td></td>
						      			<td></td>
						      			<td></td>
					      			</tr>
					      		</tbody>	
					      	</table>
						</div>
					</div>
				</div>
				<div class="card-footer d-flex">
					<label class="">Venta </label>
					<input class="form-control" type="text" name="totalVenta" value="$ <%=totalVenta%>" disabled>
					<label class="">IVA </label>
		            <input class="form-control" type="text" name="totalIVA" value="$ <%=totalIva%>" disabled>
		            <label class="">Total </label> 
		            <input class="form-control" type="text" name="totalPagar" value="$ <%=totalPagar%>" disabled>
		            <input class="btn btn-danger" type="submit" name="limpiar" value="limpiar">
	            	<input class="btn btn-success" type="submit" name="confirmar" value="Confirmar">
				</div>
			</div>
       	</form>
	</body>
</html>