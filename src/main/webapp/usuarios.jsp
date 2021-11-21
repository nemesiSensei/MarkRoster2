<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="header.jsp"%>
<!DOCTYPE html>
<html>
   <body class="container text-center">     
   <h1 class="text-center">Información adicional de empleados</h1>
   <br>
  <div class="container text-center"> 
  <br>
  <br> 
</div>

<table  class="table table-dark table-striped" id="usuarios">
<tr>
<th>ID_empleados</th>
<th>Usuario</th>

<th> Empresa</th>
<th> Nombre</th>


<th> privilegio </th>
<th> Estado </th>
<th> Empresa</th>
<th> eliminar </th>
<th> editar </th>
</tr>
<c:forEach items="${usuario}" var="u">
	<tr>
	<td>${u.getId_empleados() }</td>
	<td>${u.getUsuario() }</td>
	<td>${u.getNombre_empresa() }</td>
	<td>${u.getNombre() }</td>
	


	

</c:forEach>
	
</table>

		<script src="cambiarestado.js"></script>

</body>
 
</html>
