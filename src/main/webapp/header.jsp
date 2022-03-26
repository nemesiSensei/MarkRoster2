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
 <script src="https://kit.fontawesome.com/4a02ae2b25.js" crossorigin="anonymous"></script>
  <script src="alertas.js"></script>   
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge"> 
  <title>MarkRoster</title>
  <link rel="stylesheet" href="assets/vendor/bootstrap/css/bootstrap.min.css">  
   <link href="assets/vendor/fonts/circular-std/style.css" rel="stylesheet">
   <link rel="stylesheet" href="assets/libs/css/style.css">
   <link rel="stylesheet" href="assets/vendor/fonts/fontawesome/css/fontawesome-all.css">
   <link rel="stylesheet" type="text/css" href="assets/vendor/datatables/css/dataTables.bootstrap4.css">
   <link rel="stylesheet" type="text/css" href="assets/vendor/datatables/css/buttons.bootstrap4.css">
   <link rel="stylesheet" type="text/css" href="assets/vendor/datatables/css/select.bootstrap4.css">
   <link rel="stylesheet" type="text/css" href="assets/vendor/datatables/css/fixedHeader.bootstrap4.css">  
</head>
    <body> 
    <!-- main wrapper -->
          <div class="dashboard-main-wrapper">
           <!-- navbar -->
           <div class="dashboard-header">
            <nav class="navbar navbar-expand-lg bg-white fixed-top">
            <a href="index.jsp">
			<img src="media/imagenes/logo3.png" width="230" height="auto"/>							
			</a>	            
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
				<div class="collapse navbar-collapse " id="navbarSupportedContent">
					 <ul class="navbar-nav ml-auto navbar-right-top">
					 <li class="nav-item dropdown nav-user">
                            <a class="nav-link nav-user-img" href="#" id="navbarDropdownMenuLink2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img src="media/imagenes/item1.png" alt="" class="user-avatar-md rounded-circle"></a>
                            <div class="dropdown-menu dropdown-menu-right nav-user-dropdown" aria-labelledby="navbarDropdownMenuLink2">
                                <div class="nav-user-info">
                                    <h5 class="mb-0 text-white nav-user-name">Bienvenid@, ${us.nombreusuario}</h5>
                                    <span class="status"></span><span class="ml-2">Rol: ${us.privilegio}</span>
                                </div>
                                <a class="dropdown-item" href="Controlador?accion=listarUnico"><i class="fas fa-user mr-2"></i>Perfil</a>                                
                                <a class="dropdown-item" href="Controlador?accion=logout"><i class="fas fa-power-off mr-2"></i>Cerrar Sesión</a>
                            </div>
                        </li>
                    </ul>
                 </div>
            </nav> 			
			</div> 
			<div class="nav-left-sidebar sidebar" style="background-color: #69bee8;">
            <div class="menu-list">
                <nav class="navbar navbar-expand-lg navbar-light">
                <a class="d-xl-none d-lg-none" href="#">Menú de Opciones</a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                	<div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav flex-column">
                            <li class="nav-divider">
                                Menu
                            </li>
                	<li class="nav-item">
                                <a class="nav-link active" href="index.jsp"><i class="fa fa-fw fa-fingerprint"></i>Inicio</a>                                
                            </li>
                            <li class="nav-item">
                             <c:if test="${us.privilegio=='Administrador'}">
                                <a class="nav-link active" href="Controlador?accion=Listarusuarios"><i class="fa fa-fw fa-tools"></i>Opciones</a> 
                                  </c:if>							                               
                            </li>
                            <li class="nav-item ">
                             <c:if test="${us.privilegio=='Administrador'}">
                                <a class="nav-link active" href="UsuarioController?accion=turno"><i class="fa fa-fw fa-calendar-alt"></i>Listado de horarios</a> 
                                  </c:if>							                               
                            </li>
                             <li class="nav-item ">
                             <c:if test="${us.privilegio=='Administrador'}">
                                <a class="nav-link active" href="UsuarioController?accion=reportedehorarios"><i class="fa fa-fw fa-book"></i>Reportes</a> 
                                  </c:if>							                               
                            </li>
                             <li class="nav-item ">
                             <c:if test="${us.privilegio=='Administrador'}">
                                <a class="nav-link active" href="UsuarioController?accion=listar"><i class="fa fa-fw fa-info-circle"></i>Información</a> 
                                  </c:if>							                               
                            </li>
                             <li class="nav-item ">
                             <c:if test="${us.privilegio=='Usuario'}">
                                <a class="nav-link active" href="Controlador?accion=ListarUnico"><i class="fa fa-fw fa-check-circle"></i>Opciones</a> 
                                  </c:if>							                               
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link active" href="horaAdmin.jsp"><i class="fa fa-fw fa-calendar-check"></i>Registrar Horario</a>                                
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link active" href="cambiarPass.jsp"><i class="fa fa-fw fa-key"></i>Cambiar clave</a>                                
                            </li>   
                             </ul>                        
					</div> 
					 </nav>
     <%
		}
		else
		{
			request.getRequestDispatcher("iniciarSesion.jsp").forward(request,response);
		}
    %>
    </div>
					</div>
					</div> 		
					 <div class="dashboard-wrapper">
					  <div class="container-fluid  dashboard-content">
					