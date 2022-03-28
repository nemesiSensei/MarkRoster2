
<%@include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="dark.css">
<link rel="stylesheet" href="iniciar.css">
<meta charset="ISO-8859-1">
<title>Actualizar perfil</title>
</head>
<body>

   <div class="modo" id="modo">
        <i class="fas fa-toggle-on"></i>
    </div>
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
          <input type="text" id="usuario" class="fadeIn first" name="usuario" value="${usuarios.getNombreusuario()}" placeholder="Nombre de Usuario">          
             <input type="text" id="correo" class="fadeIn second" name="correo" value="${usuarios.getCorreo()}"placeholder="Correo electrónico">
             
      <input type="submit"  onclick="editar(event,${r.getIdempresa() },'UsuarioController')"class="fadeIn fourth" value="Actualizar">
      </form>
      </div>
      </div>
       </div>
<!--  Ojo con tocar esta parte mal, o sino el editar para el usuario se jode -->

<br><br> <br><br>

</body>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
	<script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>
	<script src="https://cdn.datatables.net/1.11.5/js/dataTables.bootstrap4.min.js"></script>
  	<script src="cambiarestado.js"></script>
	<script src="prueba.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
	<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
  	<script src="alertas2.js"></script>  
    <script src="main.js"></script>  
<%@include file="footer.jsp" %>
  <script src="main.js"></script>
</html>
