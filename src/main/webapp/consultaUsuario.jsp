
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
    <script src="alertas.js"></script>   
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="icon" href="media/imagenes/MarkRosterlogo.ico"/>
        <link rel="icon" href="media/imagenes/MarkRosterlogo.png"> 
        <title>Gestión de Usuarios-Standard</title>
        <link rel="stylesheet" href="index.css"> 
        <script src="https://kit.fontawesome.com/4a02ae2b25.js" crossorigin="anonymous"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" 
        rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" 
        crossorigin="anonymous">        
        <script src="https://kit.fontawesome.com/4a02ae2b25.js" crossorigin="anonymous"></script>          
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>        
    </head>
    <header>
    <a href="index.jsp"><img src="media/imagenes/btnAtras.png" alt="" width="50" height="auto"/></a>
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
                   <a href="Controlador?accion=ListarUnico">
                       <i class="fa fa-user"></i>
                        <span class="nav-text">
                            <strong>Opciones de usuario</strong>
                        </span>
                    </a>
                </li> 
                <li class="has-subnav">
                    <a href="horaUsuario.jsp">
                       <i class="fa fa-clock fa-x2"></i>
                        <span class="nav-text">
                            <strong><strong>Registrar Horario</strong></strong>
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
   <body class="container text-center">     
   <h1 class="text-center">Gestión Personal</h1>
   <br>  
<table  class="table table-dark table-striped" id="usuarios">
<tr>
<th>ID</th>
<th>Usuario</th>
<th> Corrreo</th>
<th> editar </th>
</tr>
<c:forEach items="${usuarios}" var="r">
	<tr>
	<td>${r.getIdempresa() }</td>
	<td>${r.getNombreusuario() }</td>
	<td>${r.getCorreo()}</td>	
	<td> <a class="btn btn-warning" href="Controlador?accion=ver&id=${r.getIdempresa() }" role="button"><i class="fas fa-user-cog fa-2x"></i></a></td>
	</tr>
</c:forEach>
</table>
</body>
 <footer class="footer-distributed" style="align:bottom">			
			<div class="footer-left">
				<img src="media/imagenes/MarkRosterBlack.png"  width="128" height="auto"></img>
				<p class="footer-links">
					<a href="#" class="link-1">Inicio</a>					
					<a href="#">Nosotros</a>				
					<a href="#">Portafolio</a>				
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