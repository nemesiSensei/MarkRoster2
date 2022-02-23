<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<%@include file="header.jsp" %>
<meta charset="ISO-8859-1">
<title>Horarios asignados a empleados</title>
</head>
<body>
  <div class="container text-center">
 
<table  class="table table-dark table-striped" id="usuarios">
<tr>
<th>ID</th>
<th>Usuario</th>
<th>Horario de entrada </th>
<th>Horario de salida </th>
<th>Editar </th>
<th>Eliminar </th>

</tr>
<c:forEach items="${horarios}" var="r">
	<tr>
	<td>${r.getIdempleado()}</td>
	<td>${r.getUsuario()}</td>
	<td>${r.getHorario_entrada_turno()}</td>
	<td>${r.getHora_salida_turno()}</td>
	<td> <a class="btn btn-warning" href="Controlador?accion=actualizarhorarios&id=${r.getIdempleado()}" role="button"><i class="fas fa-user-cog fa-2x"></i></a></td>
	<td> <a class="btn btn-danger"  role="button"><i class="fas fa-user-times fa-2x"></i></a></td>
	
	
	
	
</tr>
</c:forEach>
</table>
 </div>
<script>
var myTable = document.querySelector("#usuarios");
var dataTable = new DataTable("#usuarios", {
	perPage:5,
	labels: { 
	    placeholder: "Buscar usuario...",
	    perPage: "{select} Registros en pagina ",
	    noRows: "No se encuentra el usuario",
	    info: "Mostrando {start}  al  {end} de   {rows} filas",
	}
});

</script>



</body>
</html>