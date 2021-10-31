<%-- 
    Document   : menu
    Created on : 12/09/2021, 10:41:16 AM
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
        <title>MarkRoster-menú Principal</title>
         <script src="https://kit.fontawesome.com/4a02ae2b25.js" crossorigin="anonymous"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" 
        rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" 
        crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" 
        integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" 
        crossorigin="anonymous">
        </script>  
        </script>  
        <link rel="stylesheet" href="estilos1.css">  
    </head>
    <header>
        <a href="index.jsp"><img src="media/imagenes/btnAtras.png" alt="" class="atras" width="50" height="50"/></a>        
        <img class="logo2" src="media/imagenes/MarkRosterLogo2.png" align="right"> 
    </header>
    <body style="font-family: 'cocogoose'">        
        <br>
        <br>         
        <center> 
            <div class="container">
                <div class="iconoreg">
                <img src="media/imagenes/UsuariosOpen.png" alt=""
              width="580" height="396"/>
                </div>
                <h1 class="title1" ><strong>Menú<br>Principal</strong></h1> 
               <br>
               <br>
               <br>
               
            <div class="container-lg"> 
                <a href="registrarHuella.jsp" class="btn" id="Rhuella">Registrar Huella</a>
                 <br>
                  <br>
                <a href="consultaUsuario.jsp" class="btn" id="consultasUsuario">Consultar Registros</a>
                 <br>
                  <br>
                <a href="Controlador?accion=Listarusuarios" class="btn" id="consultasAdmin">Opciones Administrativas</a>
                 <br>
                  <br>
                <a href="iniciarSesion.jsp" class="btn" id="cerrarSesion">Cerrar Sesión</a>
            </div>
        <br>
        <br>  
        <br>
        <footer>
            
        </footer>
    </center>                    
    </body>
</html>
