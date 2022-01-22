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
        <meta name="viewport" content="width=device-width, initial-scale=1.0">              
        <link rel="icon" href="media/imagenes/MarkRosterlogo.ico"/> 
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
    </head>
    <body>
       <div class="modo" id="modo">
        <i class="fas fa-toggle-on"></i>
    </div>
   <div class="wrapper fadeInDown">
  <div id="formContent">
    <br><br>
    <!-- Icon -->
  <img src="media/imagenes/MarkRosterlogo.png" width="128" height="auto"/><br>
    <h2 class="active"> Iniciar sesión </h2> <br><br>
    <!-- Login Form -->
    <form action="Controlador?accion=login" method="post">
      <input type="text" id="usuario" class="fadeIn first" name="usuario" placeholder="Ingresar usuario" style="margin: 0px"><br><br>
      <input type="password" id="pass" class="fadeIn second" name="pass" placeholder="Ingresar contraseña" style="margin: 0px"><br><br>
      <input type="submit" class="fadeIn third" value="Iniciar sesión">    
     </form>     
      <p>Olvidaste tu contraseña...? Recupérala <a class="underlineHover" href="index.jsp">Aquí</a></p>
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
 </body>
</html>