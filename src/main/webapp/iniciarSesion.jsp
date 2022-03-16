<%-- 
    Document   : iniciarSesion
    Created on : 12/09/2021, 10:11:01 AM
    Author     : NEMESIS
--%>

<%@page  contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
    <link rel="stylesheet" href="dark.css">
        <meta charset=UTF-8>     
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>MarkRoster - Iniciar Sesión</title>
         <script src="https://kit.fontawesome.com/4a02ae2b25.js" crossorigin="anonymous"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" 
        rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" 
        crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" 
        integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" 
        crossorigin="anonymous">
        </script>  
        <link rel="stylesheet" href="iniciar.css">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <link rel="icon" href="media/imagenes/MarkRosterlogo.png">
   <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
   <link href="assets/css/style.css" rel="stylesheet">
   <link href="assets/vendor/aos/aos.css" rel="stylesheet">  
    </head>
    <body>   
    <div style="background-image: url('media/imagenes/fondo2.png'); background-attachment: fixed; background-size: cover; background-repeat:no-repeat;  background-position-x:center; background-position-y:center;"> 
   <div class="wrapper fadeInDown">
  <div id="formContent">
    <br><br>
    <!-- Icon -->
  <a href="index.jsp"><img src="media/imagenes/MarkRosterlogo.png" width="128" height="auto"/></a>
  <br>
  <br>
  <br>
    <h2 class="active"><strong>Iniciar sesión</strong></h2><br><br>
    <!-- Login Form -->
    <form action="Controlador?accion=login" method="post">
      <input type="text" id="usuario" class="fadeIn first" name="usuario" placeholder="Ingresar usuario" ><br><br>
      <input type="password" id="pass" class="fadeIn second" name="pass" placeholder="Ingresar contraseña"><br><br>
      <input type="submit" class="fadeIn third" value="Ingresar">    
     </form>     
      <p>Olvidó su contraseña? Recupérela <a class="underlineHover" href="index.jsp">Aquí</a></p>
      <br>
      <div id="formFooter">
      <p>
      <%
      if(request.getParameter("msn")!=null)
      {
    	  out.println(request.getParameter("msn"));
      }
      %>
       </p>
       </div>
       
    </div>
  </div>
    <script src="main.js"></script>
  <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script> 
  </div>
 </body>
 
</html>