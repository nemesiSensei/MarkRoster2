<%@include file="header.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<%@include file="header.jsp"%>
<!DOCTYPE html>

<html>
 <link rel="stylesheet" href="dark.css">
   <body> 
   <!-- Button trigger modal -->


<!-- Modal -->
<div class="modal fade" id="usuario" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Actualizacion de perfil</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
       <form   action= "UsuarioController?accion=editunico" method="post">     
      <input type="hidden" id="id" name="id" value="${us.getIdempresa() }">
          <input  type="hidden"  id="privilegio" name="privilegio"value="${us.getPrivilegio()}"><br>
           <label for="usuario">Usuario: </label>
          <input type="text" id="usuario" class="fadeIn first" name="usuario" value="${us.getNombreusuario()}" placeholder="Nombre de Usuario"><br>  
           <label for="usuario">Correo: </label>       
             <input type="text" id="correo" class="fadeIn second" name="correo" value="${us.getCorreo()}"placeholder="Correo electrónico">
             
     
      
          
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
        <button type="submit" class="btn btn-primary">Actualizar</button>
        </form>
      </div>
    </div>
  </div>
</div>
      <div class="modo" id="modo">
        <i class="fas fa-toggle-on"></i>
    </div>   
   <h1 class="text-center">Gestión Personal</h1>
   <br> 
   <div class="container text-center"> 
<table  class="table table-dark table-striped" id="usuarios">
<tr>

<th>Usuario</th>
<th> Corrreo</th>
<th> editar </th>
</tr>
<c:forEach items="${usuarios}" var="r">
	<tr>	
	<td>${r.getNombreusuario() }</td>
	<td>${r.getCorreo()}</td>	
	<td> <a class="btn btn-warning"  data-bs-toggle="modal" data-bs-target="#usuario" role="button"><i class="fas fa-user-cog fa-2x"></i></a></td>
	</tr>
</c:forEach>
</table>
</div>
</body>
  <%@include file="footer.jsp" %>
    <script src="main.js"></script>
</html>