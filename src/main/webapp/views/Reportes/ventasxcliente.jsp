<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Bootstrap CSS -->
<!-- Style -->
<link rel="shortcut icon" href="../../images/icono.ico">
<script src="https://kit.fontawesome.com/c159e6bc0d.js"
	crossorigin="anonymous"></script>

<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />

<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script
	src="https://cdn.datatables.net/1.10.23/js/jquery.dataTables.min.js"></script>
<script
	src="https://cdn.datatables.net/1.10.23/js/dataTables.bootstrap.min.js"></script>
<link
	href="https://cdn.datatables.net/1.10.23/css/dataTables.bootstrap.min.css" />
<script>
	$(document)
			.ready(
					function() {
						$('#TablaDat')
								.DataTable(
										{
											"paging" : true,
											"buttons" : true,
											"lengthMenu" : [ [ 5, 10, 25, -1 ],
													[ 5, 10, 25, "TODOS" ] ],
											"paginate" : true,
											"language" : {
												"url" : "https://cdn.datatables.net/plug-ins/1.10.22/i18n/Spanish.json"
											}

										});
					});
</script>
</head>
<body>

	<br>
	<div class="container">
		<h1>Total de Ventas por Cliente</h1>
		<br>

		<table class="table table-reponsive table-striped table-hover text-center table-bordered" id="TablaDat">
			<thead>
				<tr>
					<th>CEDULA CIUDADANIA</th>
					<th>NOMBRE USUARIO</th>
					<th>VALOR TOTAL VENTAS</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>1000518891</td>
					<td>Agroinsumos JP</td>
					<td>$ 179409</td>
				</tr>
				<tr>
					<td>1000159211</td>
					<td>Luisa Manrique</td>
					<td>$ 195329</td>
				</tr>
				<tr>
					<td>1000518891</td>
					<td>Agroinsumos JP</td>
					<td>$ 1850</td>
				</tr>
			</tbody>
		</table>
			<div class="card-footer d-flex">
				<div class="col-md-4 text-center">
					<b>Total Ventas</b>
					<input type="text" name="txttotalapagar" class="form-control" placeholder="$ 0" disabled="disabled" value="$ 376588">
				</div>
			</div>
	</div>
		

</body>
</html>