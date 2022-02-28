<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="header.jsp" %>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css">
  <link rel="stylesheet" href="https://cdn.datatables.net/1.11.5/css/dataTables.bootstrap4.min.css">
</head>

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

<table  class="display"  id="usuarios">
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
</div><script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.11.5/js/dataTables.bootstrap4.min.js"></script>



		<script src="cambiarestado.js"></script>
		<script src=' https://code.jquery.com/jquery-3.6.0.min.js'>-</script>
		

</body>
<%@include file="footer.jsp" %>
 </html>