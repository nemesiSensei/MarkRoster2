<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<%@include file="header.jsp"%>
<!DOCTYPE html>
<html> 
   <h1 class="text-center">Información adicional de empleados</h1>
   <br>  
  <br>
  <br> 
<div class="container">
<table id="example" class="table table-striped">
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
</div>
 <%@include file="footer.jsp"%>
</html>

