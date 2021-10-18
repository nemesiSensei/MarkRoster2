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
        <link rel="stylesheet" href="estilos1.css">
    </head>
    <center>            
    <body oncopy="return false" onpaste="return false" style="font-family: 'cocogoose'">        
     
        <div class="side">
            <img src="media/imagenes/UsuariosOpen.png" alt=""
             class="rounded mx-auto d-block" width="260" height="168" alt=""/>
        </div>
        <div class="side0">
            <img src="media/imagenes/logoUnloft1.png" alt=""
             class="rounded mx-auto d-block" width="147" height="147" alt=""/>
        </div>         
        <div class="side1">
            <img src="media/imagenes/MarkRosterBlack.png" alt=""
           class="rounded mx-auto d-block" width="145" height="140" alt="" />
        </div>         
        <br>
        <br>
        <br>
            <div class="login-info-container">                
              <h1 class="title">Inicio de Sesión</h1>
              <br>                  
              <form  action="iniciar" method="post">                  
                  <label class="label" type="label" title="Ingrese su Nombre de Usuario">
                  </label><h2 class='fuenteBlanca'><strong>Usuario</strong></h2>
                  <br>                                    
                  <input class="input" name="usuario" type="text" autofocus required pattern="[A-Za-z0-9]{2,30}" 
                         title="Letras o numeros. Tamaño mínimo: 2. Tamaño máximo: 30"
                         minlength="2" maxlength="30"
                         ><span class="text-danger"></span>                                                                     
                  <br>
                  <br>
                  <label class='fuenteBlanca' type="label" title="Ingrese su Contraseña"></label><h2><strong>Contraseña</strong></h2>                  
                  <br>                  
                  <input class="input" name="pass" type= "password" 
                        pattern="[A-Za-z0-9]{8,30}" minlength="8" maxlength="30" required/>
                  <br>             
                  <br>
                  <br>
                  <input class="btn" type="submit" value="Iniciar Sesión"/>
                  <br>
                  <br>
                  <input class="btn" type="reset" value="Cancelar"/>
                  <br> 
                  <br>
                 
                  <p>Olvidaste tu contraseña?... Recupérala  <a class="span" href="index.jsp" >Aquí</a></p>
                  <p>Volver a la   <a class="span" href="index.jsp" >Pagina principal</a></p>
              </form>
            </div>      
        
    </body>
    </center> 
</html>