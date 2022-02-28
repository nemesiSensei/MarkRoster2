<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<%@page session="true" %>
<%
response.setHeader("Pragma", "No-cache");
response.setHeader("Cache-control", "no-cache,no-store,must-revalidate");
response.setDateHeader("Expires",6000000);
if(session.getAttribute("us")!=null)
{
%>
<html>
    <head>
    <script src="alertas.js"></script>   
        <meta charset="UTF-8">
        <title>MarkRoster</title>
        <link rel="stylesheet" href="index.css"> 
        <script src="https://kit.fontawesome.com/4a02ae2b25.js" crossorigin="anonymous"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" 
        rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" 
        crossorigin="anonymous">
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <script src="https://cdn.jsdelivr.net/npm/vanilla-datatables@latest/dist/vanilla-dataTables.min.js" type="text/javascript"></script>
        <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="description">
  <meta content="" name="keywords">
  <!-- Favicons -->
  <link rel="icon" href="media/imagenes/MarkRosterlogo.png">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">
  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
<!-- Vendor CSS Files -->
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">
  <script src="https://kit.fontawesome.com/4a02ae2b25.js" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
 <link rel="stylesheet" href="index.css"> 
 <meta charset="UTF-8">     
        <meta http-equiv="X-UA-Compatible" content="IE=edge">         
    <link rel="stylesheet" href="dark.css">
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
                    <a href="">
                        <i class="fa fa-user"></i>
                        <span class="nav-text">
                            <strong>Bienvenido, ${us.nombreusuario}</strong><br>
                            <strong>Rol ${us.privilegio}</strong><br>
                        </span>
                    </a>                  
                </li>
                <br>
                <li>
                    <a href="index.jsp">
                        <i class="fa fa-home"></i>
                        <span class="nav-text">
                            <strong>Inicio</strong>
                        </span>
                    </a>                  
                </li>
                <!--importante para restringir vistas y funciones y botones -->                
             <li><c:if test="${us.privilegio=='Administrador'}">
                   <a href="Controlador?accion=Listarusuarios">
                       <i class="fa fa-tools"></i>
                        <span class="nav-text">
                            <strong>Opciones administrativas</strong>
                        </span>
                    </a>
                </li>
                               
                </c:if>
                 <li><c:if test="${us.privilegio=='Administrador'}">
                   <a href="UsuarioController?accion=turno">
                       <i class="fa fa-tools"></i>
                        <span class="nav-text">
                            <strong>Ver listado de horarios</strong>
                        </span>
                    </a>
                </li>
                               
                </c:if>
                  <li><c:if test="${us.privilegio=='Administrador'}">
                   <a href="UsuarioController?accion=Listarh">
                       <i class="fa fa-tools"></i>
                        <span class="nav-text">
                            <strong>Asignar Horarios</strong>
                        </span>
                    </a>
                </li>
                               
                </c:if>
                 <li><c:if test="${us.privilegio=='Administrador'}">
                   <a href="UsuarioController?accion=listar">
                       <i class="fa fa-user-cog"></i>
                        <span class="nav-text">
                            <strong>Información Adicional</strong>
                        </span>
                    </a>
                </li>                 
                </c:if>
                <li> 
                   <a href="Controlador?accion=ListarUnico">
                       <i class="fa fa-tools"></i>
                        <span class="nav-text">
                            <strong>Opciones de usuario</strong>
                        </span>
                    </a>              
                </li> 
                      
                <li class="has-subnav">
                    <a href="horaAdmin.jsp">
                       <i class="fa fa-clock"></i>
                        <span class="nav-text">
                            <strong><strong>Registrar Horario</strong></strong>
                            </span>                                                                                                                                                                                                                                                                                                                                                                              
                    </a>                   
                </li>  
                
            </ul>
            <li class="has-subnav">
                   <a href="cambiarPass.jsp">
              		<i class="fa fa-key"></i>
                        <span class="nav-text">
                          <strong>Cambiar contraseña</strong>
                        </span>
                    </a>
                </li> 
            <ul class="logout">
                <li>
                   <a href="Controlador?accion=logout">
                         <i class="fa fa-power-off fa-2x"></i>
                        <span class="nav-text">
                          <strong>Cerrar Sesión</strong>
                        </span>
                    </a>
                </li>  
            </ul>
        </nav>        
    </header>
     <%
		}
		else
		{
			request.getRequestDispatcher("iniciarSesion.jsp").forward(request,response);
		}
    %>
    </html>