<%-- 
    Document   : iniciarSesion
    Created on : 12/09/2021, 10:11:01 AM
    Author     : NEMESIS
--%>

<%@page  contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset=UTF-8>     
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">              
        <link rel="icon" href="media/imagenes/MarkRosterlogo.ico"/> 
        <title>MarkRoster - Iniciar Sesión</title>
      
         <script src="https://kit.fontawesome.com/4a02ae2b25.js" crossorigin="anonymous"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" 
        rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" 
        crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" 
        integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" 
        crossorigin="anonymous">
        </script>  
        <link rel="stylesheet" href="iniciar.css">
    </head>
    <body>
   
   <div class="wrapper fadeInDown">
  <div id="formContent">
    <!-- Tabs Titles -->
    <h2 class="active"> Iniciar sesión </h2>
   

    <!-- Icon -->
  
    <!-- Login Form -->
    <form   action="iniciar" method="post">
      <input type="text" id="usuario" class="fadeIn second" name="usuario" placeholder="Ingresar usuario">
      <input type="password" id="pass" class="fadeIn third" name="pass" placeholder="Ingresar contraseña">
      <input type="submit" class="fadeIn fourth" value="Iniciar sesión">
    </form>

    <!-- Remind Passowrd -->
    <div id="formFooter">
      <p>Olvidaste tu contraseña...? Recupérala <a class="underlineHover" href="index.jsp">Aquí</a></p>
    </div>

  </div>
</div>
 </body>
</html>