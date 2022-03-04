<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="header.jsp" %>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css">
  <link rel="stylesheet" href="https://cdn.datatables.net/1.11.5/css/dataTables.bootstrap4.min.css">
  <script>
        function limpiarCorreo()
        {
           document.getElementById("Ccorreo").value = "";
        }
        </script>
        <script>
function comprobarCorreo()
{
    correo = document.formulario.correo.value;
    ccorreo = document.formulario.ccorreo.value;
    if (correo !== ccorreo)
    {   
       alert("Los correos no coinciden");       
       document.formulario.Ccorreo.focus();
       limpiarCorreo();
    }    
}
</script>
    <script>
        function limpiar()
        {
           document.getElementById("Contraseña2").value = "";
        }
        </script>
    <script>
function comprobarClave()
{
    pass = document.formulario.pass.value;
    Contraseña2 = document.formulario.Contraseña2.value;
    if (pass !== Contraseña2)
    {   
       alert("Las claves no coinciden");       
       document.formulario.Contraseña2.focus();
       limpiar();
    } 
      
    }
</script>
</head>
  <body> 
   <h1 class="text-center">Gestión de usuarios</h1>
   <br>
  <div class="container text-center"> 
  <a class="btn btn-success" role="button" data-bs-toggle="modal" data-bs-target="#usuarios" data-bs-whatever="@mdo"><i class="fas fa-user-plus fa-2x" title="Nuevo Usuario"></i></a>
  <a class="btn btn-danger btn-lg" href="UsuarioController?accion=Reportes" role="button"><i class="far fa-file-pdf"></i></a>
  <div class="modal fade" id="usuarios" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
      <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <h5 class="modal-title" id="exampleModalLabel">Registrar nuevo Usuario</h5>
        <form action="UsuarioController?accion=Agendarhorarios" method="post">
<select name="turno"><br>

<option> Seleccione al empleado</option><br>
<c:forEach items="${usuarios}" var="r">
<option value="${r.getIdempresa()}"> ${r.getNombreusuario() } </option>
</c:forEach>

</select><br>
<label for="Hora-entrada"> selecione la hora de entrada correspondiete</label><br>
<input type="time" name="Hora-entrada"></input><br>
<label for="Hora-salida"> selecione la hora de salida correspondiete</label><br>
<input type="time" name="Hora-salida"></input><br>
<input type="submit" value="Enviar">




</form>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" oncopy="return false" onpaste="return false">
        <div class="container">
  <div id="formContent">
    <br><br>
    <img src="media/imagenes/MarkRosterlogo.png" width="128" height="auto"/><br>
    <!-- Icon -->
  <br>
  <br>
    <!-- Login Form -->
  		
  		
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>        
        <a class="btn btn-success" type="submit" id="registrar" role="button"><i class="fas fa-user-plus fa-2x" title="Registrar Usuario"></i></a>
      </div>
    </div>
  </div>
</div>  
</div>
</div>

<div class="container">
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