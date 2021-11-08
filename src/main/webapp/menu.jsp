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
   
        <link rel="stylesheet" href="index.css">  
    </head>
    <header>
        <a href="index.jsp"><img src="media/imagenes/btnAtras.png" alt="" class="atras" width="50" height="50"/></a>        
        <img class="logo2" src="media/imagenes/MarkRosterLogo2.png" align="right"> 
    </header>
    <body style="font-family: 'cocogoose'">        
<div class="area"></div><nav class="main-menu">       
            <ul>
            	<li>
                    <a href="index.jsp">
                        <img src="media/imagenes/MarkRosterlogo.png" width="56" height="auto"/>
					<br><br><br> 
                    </a>                  
                </li>
                <li>
                    <a href="index.jsp">
                        <i class="fa fa-home fa-2x"></i>
                        <span class="nav-text">
                            <strong>Inicio</strong>
                        </span>
                    </a>                  
                </li>
                 <li>
                   <a href="Controlador?accion=Listarusuarios">
                       <i class="fa fa-user"></i>
                        <span class="nav-text">
                            <strong>Opciones administrativas</strong>
                        </span>
                    </a>
                </li>     
                <li class="has-subnav">
                    <a href="#markroster">
                        <i class="fa fa-fingerprint"></i>
                        <span class="nav-text">
                            <strong>MarkRoster</strong>
                            
                        </span>
                    </a>                    
                </li>
                <li class="has-subnav">
                    <a href="#caracteristicas">
                       <i class="fa fa-list fa-2x"></i>
                        <span class="nav-text">
                            <strong>Características</strong>
                        </span>
                    </a>                    
                </li>
                <li class="has-subnav">
                    <a href="#ventajas">
                       <i class="fa fa-bar-chart-o fa-2x"></i>
                        <span class="nav-text">
                            <strong>Ventajas</strong>
                        </                                                                                                                                                                                                                                                                                                                                                                                                                                                                       span>
                    </a>                   
                </li>
                <li>
                    <a href="#contacto">
                    <i class="fa fa-handshake"></i>                        
                        <span class="nav-text">
                            <strong>Contacto</strong>
                        </span>
                    </a>
                </li>
                <li>
                    <a href="#soporte">
                        <i class="fa fa-tools"></i>
                        <span class="nav-text">
                           <strong>Soporte</strong>
                        </span>
                    </a>
                </li>                          
                <li>
                    <a href="#">
                       <i class="fa fa-info fa-2x"></i>
                        <span class="nav-text">
                            <strong>Documentación</strong>
                        </span>
                    </a>
                </li>
            </ul>
            <ul class="logout">
                <li>
                   <a href="#">
                         <i class="fa fa-power-off fa-2x"></i>
                        <span class="nav-text">
                          <strong>Cerrar Sesión</strong>
                        </span>
                    </a>
                </li>  
            </ul>
        </nav>
    </body>
</html>
