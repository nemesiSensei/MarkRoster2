      <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     <%@include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="iniciar.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<!--Este es el formulario para el editar usuarios unico --> 
 
<div class="wrapper fadeInDown">
  <div id="formContent">
   <br><br>
    <img src="media/imagenes/MarkRosterlogo.png" width="128" height="auto"/><br>
    <!-- Tabs Titles -->
    <h2 class="active"> Actualizar perfil </h2>
    <div class="container text-center">                   
<form   action= "UsuarioController?accion=editunico" method="post">     
          <input  type="hidden"  id="privilegio" class="fadeIn second" name="privilegio"  value="${usuarios. getPrivilegio()}">           
            <input     type="text" id="correo" class="fadeIn second" name="correo" value="${usuarios. getCorreo()}">
               <input type="text" id="usuario" class="fadeIn second" name="usuario" value="${usuarios. getNombreusuario() }">
      <input type="submit"  onclick="editar(event,${r.getIdempresa() },'UsuarioController')"class="fadeIn fourth" value="Actualizar">
      </form>
      </div>
      </div>
       </div>
<!--  Ojo con tocar esta parte mal, o sino el editar para el usuario se jode -->

<br><br> <br><br>

</body>
<%@include file="footer.jsp" %>
</html>
