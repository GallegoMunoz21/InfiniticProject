<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Creacion de Proveedor</title>
</head>
<body>
<div class="row">
 	<!-- Seccion 1 -->
 		<div class="card col-md-4">
 			<div class="card-body">
 				<h5 class="card-title">Proveedor</h5>
 				<h6 class="card-subtitle mb-2 text-muted">En este panel podras gestionar los datos de los proveedores del sistema</h6>
<div>
<form class="form-sign" method="get" action="Controlador">
 						<div class="form-group">
 							<input type="hidden" name="menu" value="Proveedores">
 							<input type="hidden" name="txtid" value="${proveedorSeleccionado.get_id()}">
 							<label>Nombre:</label>
 							<input maxlength="50" type="text" name="txtnombre" title="Este campo es obligatorio" required pattern="[a-zA-Z]+" class="form-control" value="${proveedorSeleccionado.getNombre_proveedor()}">
 						</div>
 						<div class="form-group">
 							<label>Email:</label>
 							<input maxlength="50" type="email" name="txtemail" title="Este campo es obligatorio" required class="form-control" value="${proveedorSeleccionado.getEmail_proveedor()}">
 						</div>
 						<div class="form-group">
 							<label>Ciudad:</label>
 							<input maxlength="50" type="text" name="txtciudad" title="Este campo es obligatorio" required pattern="[a-zA-Z]+" class="form-control" value="${proveedorSeleccionado.getCiudad_proveedor()}">
 						</div>
 						<div class="form-group">
 							<label>Telefono:</label>
 							<input maxlength="20" type="password" name="txttelefono" title="Este campo es obligatorio" required pattern="[0-9]+" class="form-control" value="${proveedorSeleccionado.getTelefono_proveedor()}">
 						</div>
 						<div class="form-group">
 							<label>Nit:</label>
 							<input maxlength="50" type="text" name="txtnit" title="Este campo es obligatorio" required pattern="[a-zA-Z0-9]+" class="form-control" value="${proveedorSeleccionado.getNit_proveedor()}">
 						</div>
 						<div class="form-group">
 							<label>Direccion:</label>
 							<input maxlength="50" type="text" name="txtdireccion" title="Este campo es obligatorio" required pattern="[a-zA-Z0-9]+" class="form-control" value="${proveedorSeleccionado.getDireccion_proveedor()}">
 						</div>
 							<input type="submit" class="btn btn-primary" name="accion" value="Agregar">
 							<input type="submit" class="btn btn-success" name="accion" value="Actualizar">
 					</form>
 				</div>
 			</div>
		</div>
 		<!-- Seccion 2 -->
 		<div class="col-md-8">
 			<table class="table">
 				<thead class="thead-dark">
 					<tr>
 						<th scope="col">Nombre</th>
 						<th scope="col">Email</th>
 						<th scope="col">Ciudad</th>
 						<th scope="col">Telefono</th>
 						<th scope="col">Nit</th>
 						<th scope="col">Direccion</th>
 					</tr>
 				</thead>
 				<tbody>
 					<c:forEach var="lista" items="${listaProveedores}">
 						<tr>
 							<td>${lista.getNombre_proveedor()}</td>
 							<td>${lista.getEmail_proveedor()}</td>
 							<td>${lista.getCiudad_proveedor()}</td>
 							<td>${lista.getTelefono_proveedor()}</td>
 							<td>${lista.getNit_proveedor()}</td>
 							<td>${lista.getDireccion_proveedor()}</td>
 							<td>
 								<a class="btn btn-warning" href="Controlador?menu=Usuarios&accion=Cargar&id=${lista.getCedula_proveedor()}">Editar</a>
 								<a class="btn btn-danger" href="Controlador?menu=Usuarios&accion=Eliminar&id=${lista.get_id()}">Eliminar</a>
 							</td>
 						</tr>
 					</c:forEach>
 				</tbody>
 			</table>
 		</div>
</div>
</body>
</html>
