<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="css/owl.carousel.min.css">
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- Style -->
<link rel="stylesheet" href="css/footer.css">
<link rel="shortcut icon" href="images/icono.ico">
<script src="https://kit.fontawesome.com/c159e6bc0d.js"
	crossorigin="anonymous"></script>
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
	<div class="row">
		<div class="col-md-5 seccion1 ">
			<div class="card ">
				<h5 class="card-header">Datos Cliente</h5>
				<div class="card-body">
					<form method="post" action="ControladorV?menu=Ventas">
						<div class="row">
							<div class="col-md-12 d-flex form-group">
								<input type="number" name="documentocliente"
									class="form-control" placeholder="Documento Cliente"
									value="${cliente.getCedula_cliente()}"> <input
									type="submit" name="accion" value="BuscarCliente"
									class="btn btn-outline-dark">
							</div>
							<div class="col-md-12 d-flex">
								<input type="text" name="nombrecliente" class="form-control"
									placeholder="Nombre Cliente"
									value="${cliente.getNombre_cliente()}" disabled>
							</div>
						</div>
						<div class="row"></div>

					</form>
				</div>
			</div>
			<div class="card">
				<h5 class="card-header">Datos producto</h5>
				<div class="card-body">
					<form action="ControladorV?menu=Ventas" method="post">
						<div class="row">
							<div class="col-md-12 d-flex form-group">
								<input type="number" name="codigoproducto" class="form-control"
									placeholder="Codigo Producto"
									value="${productoseleccionado.getCodigo_producto()}"> <input
									type="submit" name="accion" value="BuscarProducto"
									class="btn btn-outline-dark">
							</div>
							<div class="col-md-12 d-flex form-group">
								<input type="text" name="nombreproducto" class="form-control"
									placeholder="Nombre Producto"
									value="${productoseleccionado.getNombre_producto()}" disabled>
							</div>
							<div class="col-md-4 d-flex form-group">
								<input type="text" name="ivaproducto" class="form-control"
									placeholder="0 %"
									value="IVA ${productoseleccionado.getIvacompra()} %" disabled>
							</div>
							<div class="col-md-4 d-flex form-group">
								<input type="text" name="precioproducto" class="form-control"
									placeholder="$ 0"
									value="$ ${productoseleccionado.getPrecio_venta()}" disabled>
							</div>
							<div class="col-md-4 d-flex form-group">
								<input type="number" value="1" name="cantidadproducto"
									class="form-control" placeholder="Cantidad" min="1">
							</div>
						</div>
						<input type="submit" name="accion" value="AgregarProducto"
							class="btn btn-outline-primary col text-center">
					</form>
				</div>
			</div>
		</div>
		<div class="col-md-7">
			<div class="card">
				<div class="card-header">
					<div class="form-group row">
						<label class="col-sm-2 col-form-label">N° Factura</label> <input
							class="form-control col-md-4" type="text" name="txtnumerofactura"
							value="1" disabled>
					</div>

				</div>
				<div class="card-body">
					<table class="table">
						<thead class="thead-dark">
							<tr>
								<th scope="col">#</th>
								<th scope="col">Producto</th>
								<th scope="col">Precio</th>
								<th scope="col">Cantidad</th>
								<th scope="col">Total</th>
								<th scope="col" class="columna">Acciones</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="lista" items="${listaventas}">
								<tr>
									<th scope="row" style="width: 30px;">${lista.getCodigo_venta()}</th>
									<td style="width: 30px;">${lista.getCodigo_producto()}</td>
									<td>$ ${lista.getPrecio()}</td>
									<td style="width: 30px;">${lista.getCantidad_producto()}</td>
									<td>$ ${lista.getValor_venta()}</td>
									<td class="columna">
										<a class="btn btn-danger">Eliminar</a>
										<a class="btn btn-warning">Editar</a>
									</td>
								</tr>
							</c:forEach>

							<!-- DATOS QUEMADOS -->
							<!-- 
                    <c:forEach var="lista" items="${listaventas}">
                        <tr>
                            <th scope="row" style="width: 30px;">1</th>
                            <td style="width: 30px;">Melocotones</td>
                            <td>$ 30351</td>
                            <td style="width: 30px;">1</td>
                            <td>$ 30351</td>
                            <td class="columna">
                                <a class="btn btn-danger"><i class="fas fa-trash-alt"></i></a>
                                <a class="btn btn-warning"><i class="fas fa-pen"></i></a>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row" style="width: 30px;">2</th>
                            <td style="width: 30px;">Manzanas</td>
                            <td>$ 21549</td>
                            <td style="width: 30px;">2</td>
                            <td>$ 43098</td>
                            <td class="columna">
                                <a class="btn btn-danger"><i class="fas fa-trash-alt"></i></a>
                                <a class="btn btn-warning"><i class="fas fa-pen"></i></a>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row" style="width: 30px;">3</th>
                            <td style="width: 30px;">Platanos</td>
                            <td>$ 35320</td>
                            <td style="width: 30px;">3</td>
                            <td>$ 105960</td>
                            <td class="columna">
                                <a class="btn btn-danger"><i class="fas fa-trash-alt"></i></a>
                                <a class="btn btn-warning"><i class="fas fa-pen"></i></a>
                            </td>
                        </tr>
                        </c:forEach>
                     -->

						</tbody>
					</table>
				</div>
				<div class="card-footer d-flex">
					<div class="col-md-8 text-center">
						<a class="btn btn-success" onclick="print()"
							href="Controlador?menu=Ventas&accion=GenerarVenta">Generar
							Venta</a>
						<!-- <a class="btn btn-danger" href="Controlador?menu=Ventas&accion=NuevaVenta">Nueva Venta</a>  -->
					</div>
					<div class="col-md-4">
						<input type="text" name="txttotalapagar" class="form-control"
							placeholder="$ 0" disabled="disabled" value="$ 179409">
					</div>
				</div>

			</div>

		</div>
	</div>

</body>
</html>