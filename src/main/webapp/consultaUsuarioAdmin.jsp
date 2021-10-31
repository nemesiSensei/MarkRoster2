
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="icon" href="media/imagenes/MarkRosterlogo.ico"/>
        <link rel="icon" href="media/imagenes/MarkRosterlogo.png"> 
        <title>Gestión de Usuarios-Administrador</title>
        <script src="https://kit.fontawesome.com/4a02ae2b25.js" crossorigin="anonymous"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" 
        rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" 
        crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" 
        integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" 
        crossorigin="anonymous">
        </script> 
        <script src="https://kit.fontawesome.com/4a02ae2b25.js" crossorigin="anonymous"></script> 
        <link rel="stylesheet" href="estilos1.css">  
    </head>
    <header>
        <a href="menu.jsp"><img src="media/imagenes/btnAtras.png" alt="" class="atras" width="50" height="50"/></a>        
        <img class="logo2" src="media/imagenes/MarkRosterLogo2.png" align="right" alt="50" with="170"> 
    </header> 
   <body>
   <h1 class="text-center"> USERS</h1>
   <br>
  <div class="container text-center"> 
  <a class="btn btn-success" role="button"><i class="fas fa-user-plus fa-2x" title="Nuevo Usuario"></i></a>
  <br>
  <br>


<table  class="table table-dark table-striped">
<tr>
<th>ID</th>

<th> Corrreo</th>
<th> contraseña </th>
<th> privilegio </th>
<th> eliminar </th>
<th> editar </th>
</tr>
<c:forEach items="${usuarios}" var="r">
	<tr>
	<td>${r.getIdempresa() }</td>
	<td>${r.getCorreo()}</td>
	<td>${r.getPass()}</td>
	<td>${r.getPrivilegio()}</td>
	<td> <a class="btn btn-danger" role="button"><i class="fas fa-user-times fa-2x"></i></a></td>
	<td> <a class="btn btn-warning" role="button"><i class="fas fa-user-cog fa-2x"></i></a></td>
	</tr>
</c:forEach>
</table>
</div>		

</body>
   </body>
</html>
