<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<%@include file="header.jsp"%>
<!DOCTYPE html>
<html> 
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css">
  <link rel="stylesheet" href="https://cdn.datatables.net/1.11.5/css/dataTables.bootstrap4.min.css">
</head> 
   <h1 class="text-center">Información adicional de empleados</h1>
   <br>  
  <br>
  <br> 
<div class="container">
<table id="example" class="table table-striped table-bordered" style="width:100%">
<tr>
<th>ID del empleado</th>
<th>Usuario</th>
<th>Empresa</th>
<th>Nombre</th>
<th>Cédula</th>
<th>Correo electrónico</th>
<th>Cargo</th>
<th>EPS</th>
<th>Privilegio</th>
<th>Teléfono</th>
</tr>
<c:forEach items="${usuario}" var="u">
	<tr>
	<td>${u.getId_empleados()}</td>
	<td>${u.getUsuario()}</td>
	<td>${u.getNombre_empresa()}</td>
	<td>${u.getNombre()}</td>
	<td>${u.getCedula()}</td>
	<td>${u.getCorreo()}</td>
	<td>${u.getCargo()}</td>
	<td>${u.getEPS()}</td>
	<td>${u.getPrivilegio()}</td>
	<td>${u.getTelefono()}</td>
</c:forEach>
</table>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.11.5/js/dataTables.bootstrap4.min.js"></script>
</div>
 <%@include file="footer.jsp"%>
</html>

