<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="header.jsp"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="dark.css">
   <body>     
      <div class="modo" id="modo">
        <i class="fas fa-toggle-on"></i>
    </div>
   <h1 class="text-center">Información adicional de empleados</h1>
   <br>
  <div class="container text-center"> 
  <br>
  <br> 
</div>
<div class="container text-center">
<table  class="table table-dark table-striped" id="usuario">
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
<script>
var myTable = document.querySelector("#usuario");
var dataTable = new DataTable("#usuario", {
	perPage:5,
	labels: { 
	    placeholder: "Buscar usuario...",
	    perPage: "{select} Registros en pagina ",
	    noRows: "No se encuentra el usuario",
	    info: "Mostrando {start}  al  {end} de   {rows} filas",
	}
});

</script>
		<script src="cambiarestado.js"></script>

</body>
 <%@include file="footer.jsp"%>
  <script src="main.js"></script>
</html>

