<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="header.jsp" %>
<link rel="stylesheet" href="dark.css">
   <body>    
      <div class="modo" id="modo">
        <i class="fas fa-toggle-on"></i>
    </div> 
   <h1 class="text-center">Asignación de horarios</h1>
   <br>
  <div class="container text-center"> 
  <a class="btn btn-success" href="registroUsuario.jsp" role="button"><i class="fas fa-user-plus fa-2x" title="Nuevo Usuario"></i></a>
  
  <br> 
</div>

<div class="container text-center">

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


	

</div>


</body>
<%@include file="footer.jsp" %>
  <script src="main.js"></script>
 </html>

