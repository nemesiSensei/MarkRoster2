
<%@include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="iniciar.css">
<meta charset="ISO-8859-1">
<title>Actualizar perfil</title>
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
          <input  type="hidden"  id="privilegio" name="privilegio"value="${usuario.getPrivilegio()}"> 
          <input type="text" id="usuario" class="fadeIn first" name="usuario" value="${usuario.getNombreusuario()}" placeholder="Nombre de Usuario">          
             <input type="text" id="correo" class="fadeIn second" name="correo" value="${usuario.getCorreo()}"placeholder="Correo electrónico">
             <input type="text" id="nombre" class="fadeIn third" name="nombre" value="${usuario.getNombre()}" placeholder="Nombre Completo">
           <input type="text" id="cedula" class="fadeIn fourth" name="cedula" value="${u.getCedula()}" placeholder="Documento de identidad">
            <input type="text" id="cargo" class="fadeIn fourth" name="cargo" value="${u.getCargo()}" placeholder="Cargo">
            <input type="text" id="EPS" class="fadeIn fourthh" name="EPS" value="${u.getEPS()}" placeholder="EPS">
            <input type="text" id="telefono" class="fadeIn fourth" name="telefono" value="${usuario.getTelefono()}" placeholder="Número de teléfono">
            
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
