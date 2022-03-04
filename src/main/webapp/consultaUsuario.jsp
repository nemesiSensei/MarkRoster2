<%@include file="header.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<%@include file="header.jsp"%>
<!DOCTYPE html>

<html>
 <link rel="stylesheet" href="dark.css">
   <body>  
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
	<td> <a class="btn btn-warning" href="Controlador?accion=ver&id=${r.getIdempresa() }" role="button"><i class="fas fa-user-cog fa-2x"></i></a></td>
	</tr>
</c:forEach>
</table>
</div>
</body>
  <%@include file="footer.jsp" %>
    <script src="main.js"></script>
</html>