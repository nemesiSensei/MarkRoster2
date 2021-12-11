<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="header.jsp" %>
   <body>     
   <h1 class="text-center">Gestión de usuarios</h1>
   <br>
  <div class="container text-center"> 
  <a class="btn btn-success" href="registroUsuario.jsp" role="button"><i class="fas fa-user-plus fa-2x" title="Nuevo Usuario"></i></a>
   <a class="btn btn-danger btn-lg" href="UsuarioController?accion=Reportes" role="button"><i class="far fa-file-pdf"></i></a>
  <br>
  <br> 
</div>
<div class="container text-center">
<table  class="table table-dark table-striped" id="usuarios">
<tr>
<th>ID</th>
<th>Usuario</th>
<th> Corrreo</th>
<th> privilegio </th>
<th> Estado </th>
<th> eliminar </th>
<th> editar </th>
</tr>
<c:forEach items="${usuarios}" var="r">
	<tr>
	<td>${r.getIdempresa()}</td>
	<td>${r.getNombreusuario() }</td>	
	<td>${r.getCorreo()}</td>	
	<td>${r.getPrivilegio()}</td>
	<td><c:if test="${r.isEstado()==false}">
	
		<a class="btn btn-success btn-sm" onclick="cambiarestado(event,${r.getIdempresa()},${r.isEstado()},'Controlador')" role="button"><i class="far fa-thumbs-up fa-2x"></i><strong>    Activar</strong></a>		
	</c:if> <c:if test="${r.isEstado()==true}">
	
	<a class="btn btn-danger btn-sm" onclick="cambiarestado(event,${r.getIdempresa()},${r.isEstado()},'Controlador')" role="button"><i class="far fa-thumbs-down fa-2x"></i><strong>    Inactivar</strong></a>
	</c:if></td>

	<td> <a class="btn btn-danger"  onclick="borrar(event,${r.getIdempresa() },'Controlador')"role="button"><i class="fas fa-user-times fa-2x"></i></a></td>
	<td> <a class="btn btn-warning" href="Controlador?accion=ver&id=${r.getIdempresa() }" role="button"><i class="fas fa-user-cog fa-2x"></i></a></td>
	
	
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
		<script src="cambiarestado.js"></script>

</body>
<%@include file="footer.jsp" %>
 </html>
