<%-- 
    Document   : consultaUsuarioAdmin
    Created on : 20/09/2021, 07:19:03 PM
    Author     : NEMESIS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <link rel="stylesheet" href="estilos1.css">  
    </head>
    <header>
        <a href="menu.jsp"><img src="media/imagenes/btnAtras.png" alt="" class="atras" width="50" height="50"/></a>        
        <img class="logo2" src="media/imagenes/MarkRosterLogo2.png" align="right"> 
    </header> 
    <center>   
        <body style="font-family: 'cocogoose'">        
        <br>
        <br>         
        
            <div class="container">
                <div class="iconoreg">
                <img src="media/imagenes/UsuariosOpen.png" alt=""
              width="580" height="396"/>
                </div>
                <h1 class="title1" ><strong>Gestión de<br>Usuarios</strong></h1> 
               <br>
               <br>
               <br>
               
            <div class="d-grid gap-2 d-md-block"> 
                <a href="registroUsuario.jsp" class="btn">Nuevo Usuario</a>
                <a href="registroUsuario.jsp" class="btn">Editar Existente</a>
                <a href="registroUsuario.jsp" class="btn">Eliminar Usuario</a>
                <a href="consultaUsuarioAdmin.jsp" class="btn">Consultar Registros</a>                             
            </div>
        <br>
        <br>  
        <br>
              <br>
              <h1 class="title1" ><strong>Consulta de<br>Registros</strong></h1>
              <br>
              <br>
              <br>
              <form action="consultar" method="post" name="formulario" id="formulario"> 
                  <label class='fuenteBlanca' title="Si deja en blanco, se mostrarán todos los usuarios"></label><h4><strong>Usuario a Consultar</strong></h4>                   
                  <input class="input" name="inicio" type="text"
                         title="Nombre de Usuario"  autofocus pattern="[A-Za-z0-9]{2,30}" 
                         title="Letras o numeros. Tamaño mínimo: 2. Tamaño máximo: 30"
                         minlength="2" maxlength="30"required><span class="text-danger"></span>
                   <br>
                   <br>   
                  <label class='fuenteBlanca' title="Ingrese primera fecha"></label><h4><strong>Desde</strong></h4>                   
                  <input class="input" name="inicio" type="datetime-local"
                         title="Fecha de inicio de la consulta" required><span class="text-danger"></span>
                   <br>
                   <br>                                           
                       <label class="fuenteBlanca" title="Ingrese segunda fecha"></label><h4><strong>Hasta</strong></h4>                  
                  <input class="input" name="final" type="datetime-local" required><span class="text-danger"></span>
                  <br>
                  <br>
                  
                  <input class="btn" type="submit" name="consultar" id="consultar" value="Consultar"/>
                  <br>
                  <br>
                  <input class="btn" type="reset" value="Cancelar"/>
                  <br> 
                  <br>                               
              </form>
            </div>          
   
<footer class="footer">
</footer>
</body>
      </center>  
   
</html>
