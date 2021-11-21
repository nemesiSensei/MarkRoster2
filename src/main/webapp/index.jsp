<%-- 
    Document   : index
    Created on : 12/09/2021, 10:48:51 AM
    Author     : NEMESIS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
  <script src="https://kit.fontawesome.com/4a02ae2b25.js" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
 <link rel="stylesheet" href="index.css"> 
 <meta charset="UTF-8">     
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="icon" href="media/imagenes/MarkRosterlogo.png">
        <title>MarkRoster - Inicio</title>
  </head>  
  <header>
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
                   <a href="Controlador?accion=abrirLogin">
                       <i class="fa fa-user"></i>
                        <span class="nav-text">
                            <strong>Login de clientes</strong>
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
  </header>
  <body>               
  
        <section style="margin:0px 0px 0px 56px">
        <img src="media/imagenes/header foto.png" class="img-fluid" alt="Responsive image" width="1920" height="auto"/>
        <br>
        <br>
        <br>
        <div class="container">
        <img class="body" id="markroster" src="media/imagenes/logo2.png" alt="" width="478" height="auto"/>
        <br>
        <br>
        <br>
        <h5>
          Somos una marca dedicada al control de horarios por medios biométricos móviles 
          (usando el lector de huellas dactilares del teléfono móvil), con desarrolladores
          capacitados en diferentes tecnologías (Java, HTML, CSS, MySQL, entre otras) con 
          el ánimo de brindar soluciones eficientes de control de acceso de personal, ya sea 
          corporativo e/o institucional, y de cálculo de horarios para asistencia y control
          de nómina, con interfaces intuitivas y amigables con el usuario, haciendo uso de 
          aplicaciones basadas en web, lo que garantiza su portabilidad y compatibilidad con
          multiples dispositivos, y su uso unipersonal e higiénico.
      </h5>
        <br>
        <br>
        <br>
        <h1 style="color: #309EFF" id="caracteristicas"><strong>Características de MarkRoster</strong></h1>
      <br>
      <br>
      <br>  
      <div class="row">
      <div class="col">
  <div class="col-md-8"><img src="media/imagenes/portabilidad.png" width="200" height="auto"></img></div>
  <br>
  <div class="col-md-8"><h3><strong>PORTABILIDAD</strong></h3>
      <br>
      <h5>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, 
          sed diam nonummy nibh euismod tincidunt ut laoreet dolore 
          magna aliquam erat volutpat. Ut wisi enim ad minim veniam, 
          quis nostrud exerci tation ullam
      </h5></div>
      </div> 
      <br>
      <div class="col">
      <div class="col-md-8"><img src="media/imagenes/eficiencia.png" width="200" height="auto"></img></div>
      <br>
      <div class="col-md-8"><h3><strong>EFICIENCIA</strong></h3>
      <br>
      <h5>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, 
          sed diam nonummy nibh euismod tincidunt ut laoreet dolore 
          magna aliquam erat volutpat. Ut wisi enim ad minim veniam, 
          quis nostrud exerci tation ullam
      </h5>
      </div>
      </div>
      <br>
      <div class="col">
  <div class="col-md-8"><img src="media/imagenes/exactitud.png" width="200" height="auto"></img></div>
  <br>
  <div class="col-md-8"><h3><strong>EXACTITUD</strong></h3>
      <br>
      <h5>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, 
          sed diam nonummy nibh euismod tincidunt ut laoreet dolore 
          magna aliquam erat volutpat. Ut wisi enim ad minim veniam, 
          quis nostrud exerci tation ullam
      </h5></div>
      </div> 
      </div>
      <br>
      <br>
      <br>
      <br>
      <br>
      <br>
      <h1 style="color: #309EFF" id="ventajas"><strong>Ventajas de MarkRoster</strong></h1>
      <br>
      <br>
      <br>
      <div class="row">
      <div class="col-md-6">
      <div class="row">
      <div class="col-md-3"><img src="media/imagenes/item1.png" width="100" height="auto"></img></div>        
      <h5 class="col-md-8" style="text-align: left">
          Lorem ipsum dolor sit amet, consectetuer adipiscing elit, 
          sed diam nonummy nibh euismod tincidunt ut laoreet dolore 
          magna aliquam erat volutpat. Ut wisi enim ad minim veniam, 
          quis nostrud exerci tation ullam
      </h5>        
        </div>         
      </div>
      <div class="col-md-6">
      <div class="row">
      <div class="col-md-3"><img src="media/imagenes/item1.png" width="100" height="auto"></img></div>        
      <h5 class="col-md-8" style="text-align: left">
          Lorem ipsum dolor sit amet, consectetuer adipiscing elit, 
          sed diam nonummy nibh euismod tincidunt ut laoreet dolore 
          magna aliquam erat volutpat. Ut wisi enim ad minim veniam, 
          quis nostrud exerci tation ullam
      </h5>        
        </div>        
      </div>
      </div>
      <br>
      <br>
      <br>
      <div class="row">
      <div class="col-md-6">
      <div class="row">
      <div class="col-md-3"><img src="media/imagenes/item1.png" width="100" height="auto"></img></div>        
      <h5 class="col-md-8" style="text-align: left">
          Lorem ipsum dolor sit amet, consectetuer adipiscing elit, 
          sed diam nonummy nibh euismod tincidunt ut laoreet dolore 
          magna aliquam erat volutpat. Ut wisi enim ad minim veniam, 
          quis nostrud exerci tation ullam
      </h5>        
        </div>         
      </div>
      <div class="col-md-6">
      <div class="row">
      <div class="col-md-3"><img src="media/imagenes/item1.png" width="100" height="auto"></img></div>        
      <h5 class="col-md-8" style="text-align: left">
          Lorem ipsum dolor sit amet, consectetuer adipiscing elit, 
          sed diam nonummy nibh euismod tincidunt ut laoreet dolore 
          magna aliquam erat volutpat. Ut wisi enim ad minim veniam, 
          quis nostrud exerci tation ullam
      </h5>        
        </div>        
      </div>
      </div>
      </div>    
    <br>
    <br>
    <br>
    <br>        
        </body> 
        <footer class="footer-distributed" style="margin:0px 0px 0px 56px">			
			<div class="footer-left">
				<img src="media/imagenes/MarkRosterBlack.png"  width="128" height="auto"></img>
				<p class="footer-links">
					<a href="#" class="link-1">Inicio</a>					
					<a href="#">Nosotros</a>				
					<a href="#">Precios</a>				
					<a href="#">Sobre</a>					
					<a href="#">Terminos y condiciones</a>					
					<a href="#">Contacto</a>
				</p>
				<p class="footer-company-name">Copyright © Valhalla Technologies S.A.S. 2021</p>
			</div>
			<div class="footer-center">
				<div>
					<i class="fa fa-map-marker"></i>
					<p><span>Calle 11c sur #23-18 Este</span> Bogotá, Colombia</p><br>
					<p><span>Calle 77  #107a 16   </span> Bogotá, Colombia</p>
				</div>
				<div>
					<i class="fa fa-phone"></i>
					<p>322 714 7140</p><br>
					<p>320 333 4385</p>
				</div>
				<div>
					<i class="fa fa-envelope"></i>
					<p><a href="mailto:support@company.com">jdjimenez9378@misena.edu.co</a></p><br>
				
				</div>
				</div>
			<div class="footer-right">
				<p class="footer-company-about">
					<span>Sobre la compañía</span>
					Lorem ipsum dolor sit amet, consectateur adispicing elit. Fusce euismod convallis velit, eu auctor lacus vehicula sit amet.
				</p>
				<div class="footer-icons">
					<a href="#"><i class="fa fa-facebook"></i></a>
					<a href="#"><i class="fa fa-twitter"></i></a>
					<a href="#"><i class="fa fa-linkedin"></i></a>
					<a href="#"><i class="fa fa-github"></i></a>
				</div>
			</div>
			
		</footer>
    </html>
