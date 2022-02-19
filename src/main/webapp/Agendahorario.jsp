<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="header.jsp" %>
<link rel="stylesheet" href="dark.css">
   <body>    
      <div class="modo" id="modo">
        <i class="fas fa-toggle-on"></i>
    </div> 
   <h1 class="text-center">Gestión de usuarios</h1>
   <br>
  <div class="container text-center"> 
  <a class="btn btn-success" href="registroUsuario.jsp" role="button"><i class="fas fa-user-plus fa-2x" title="Nuevo Usuario"></i></a>
  
  <br> 
</div>
<div class="container text-center">

<form action="">
<select>

<option> Seleccione al empleado</option>
<c:forEach items="${usuarios}" var="r">
<option value="${r.getNombreusuario() }"> ${r.getNombreusuario() } </option>
</c:forEach>
</select>



</form>


	

</div>


</body>
<%@include file="footer.jsp" %>
  <script src="main.js"></script>
 </html>

