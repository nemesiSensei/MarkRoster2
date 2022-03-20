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
         <link rel="stylesheet" href="https://cdn.datatables.net/1.11.5/css/dataTables.bootstrap4.min.css">
  <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
  <script src="https://cdn.jsdelivr.net/npm/vanilla-datatables@latest/dist/vanilla-dataTables.min.js" type="text/javascript"></script>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1" name="viewport">
  <meta content="" name="description">
  <meta content="" name="keywords">  
  <link rel="icon" href="media/imagenes/MarkRosterlogo.png">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">  
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,600,700" />
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
  		rel="stylesheet">
  <link href="assets/plugins/global/plugins.bundle.css" rel="stylesheet" type="text/css" />
  <link href="assets/css/style.bundle.css" rel="stylesheet" type="text/css" />
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">  
  <link href="assets/css/style.css" rel="stylesheet">
  <script src="https://kit.fontawesome.com/4a02ae2b25.js" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="index.css"> 
  <meta charset="UTF-8">     
  <meta http-equiv="X-UA-Compatible" content="IE=edge">         
  <link rel="stylesheet" href="dark.css">
</head>
    <header id="kt_body" class="header-fixed header-tablet-and-mobile-fixed aside-fixed"> 
     <div class="d-flex flex-column flex-root">
     <div class="page d-flex flex-row flex-column-fluid">
     <div id="kt_aside" class="aside bg-white" data-kt-drawer="true" data-kt-drawer-name="aside" data-kt-drawer-activate="{default: true, lg: false}" data-kt-drawer-overlay="true" data-kt-drawer-width="{default:'200px', '300px': '250px'}" data-kt-drawer-direction="start" data-kt-drawer-toggle="#kt_aside_toggle">
     
     <div class="aside-logo flex-column-auto pt-9 pb-7 px-9" id="kt_aside_logo">     
			<a href="index.jsp">
			<img src="media/imagenes/MarkRosterlogo.png" width="56" height="auto"/>							
			</a>						
			</div> 
			<div class="aside-menu flex-column-fluid px-3 px-lg-6">						
						<div class="menu menu-column menu-pill menu-title-gray-600 menu-icon-gray-400 menu-state-primary menu-arrow-gray-500 menu-active-bg-primary fw-bold fs-5 my-5 mt-lg-2 mb-lg-0" id="kt_aside_menu" data-kt-menu="true">
							<div class="hover-scroll-y me-n3 pe-3" id="kt_aside_menu_scroll" data-kt-scroll="true" data-kt-scroll-activate="{default: false, lg: true}" data-kt-scroll-height="auto" data-kt-scroll-wrappers="#kt_aside_menu" data-kt-scroll-dependencies="#kt_aside_logo, #kt_aside_footer" data-kt-scroll-offset="20px">
								<div data-kt-menu-trigger="click" class="menu-item menu-accordion mb-1">
									<span class="menu-link">
										<span class="menu-icon">											
											<i class="fas fa-user fa-2x"></i>		
										</span>
                                  <a href="">                           
                        <span class="menu-title">Bienvenido, ${us.nombreusuario}</span>
                        <span class="menu-title">Rol ${us.privilegio}</span>
                    </a> 
                    </span>				
					</div>	
								<div class="menu-item mb-1">
									<a class="menu-link active" href="index.jsp">
										<span class="menu-icon">											
											<i class="fas fa-fingerprint fa-2x"></i>											
										</span>										
										<span class="menu-title">Inicio</span>
									</a>
								</div>						
			<!--importante para restringir vistas y funciones y botones -->                
             <c:if test="${us.privilegio=='Administrador'}">
             <div data-kt-menu-trigger="click" class="menu-item menu-accordion mb-1">
									<span class="menu-link">
										<span class="menu-icon">											
											<i class="fas fa-toolbox fa-2x"></i>										
										</span>		
                   <a href="Controlador?accion=Listarusuarios">                       
                        <span class="menu-title">Opciones Administrativas</span>
                    </a> 
                    </span>				
										</div>      
                </c:if>
										 <c:if test="${us.privilegio=='Administrador'}">
										 <div data-kt-menu-trigger="click" class="menu-item menu-accordion mb-1">
									<span class="menu-link">
										<span class="menu-icon">											
											<i class="fas fa-calendar fa-2x"></i>							
										</span>
                   <a href="UsuarioController?accion=turno">                     
                        <span class="menu-title">Ver listado de horarios</span>
                    </a>  
                    	</span>
								</div>                                            
                </c:if>				
										  <c:if test="${us.privilegio=='Administrador'}">
										  <div data-kt-menu-trigger="click" class="menu-item menu-accordion mb-1">
									<span class="menu-link">
										<span class="menu-icon">
											<i class="fas fa-calendar-check fa-2x"></i>									
										</span>			
                   <a href="UsuarioController?accion=reportedehorarios"> 
                             <span class="menu-title">Reporte de cumplimiento</span>
                    </a>  
                     </span>
									</div>     
                </c:if>									
										<c:if test="${us.privilegio=='Administrador'}">
										<div data-kt-menu-trigger="click" class="menu-item menu-accordion mb-1">
									<span class="menu-link">
										<span class="menu-icon">											
											<i class="fas fa-info fa-2x"></i>							
										</span>			
                   <a href="UsuarioController?accion=listar">                       
                        <span class="menu-title">Información Adicional</span>
                    </a> 
                    </span>
                    	</div>	                               
                </c:if>	
										<c:if test="${us.privilegio=='Usuario'}">
										<div data-kt-menu-trigger="click" class="menu-item menu-accordion mb-1">
									<span class="menu-link">
										<span class="menu-icon">											
											<i class="fas fa-user-gear fa-2x"></i>
											
										</span>
										</span>
                   <a href="Controlador?accion=ListarUnico">
                      <span class="menu-title">Opciones de usuario</span>
                    </a> 
                    </div>
                   </c:if>
                   
                   <div data-kt-menu-trigger="click" class="menu-item menu-accordion mb-1">
									<span class="menu-link">
										<span class="menu-icon">											
											<i class="fas fa-check fa-2x"></i>							
										</span>			
										
                    <a href="horaAdmin.jsp">
                         <span class="menu-title">Registrar Horario</span>                                                                                                                                                                                                                                                                          
                    </a>   
                    </span>
                        </div>           
                
               <div data-kt-menu-trigger="click" class="menu-item menu-accordion mb-1">
									<span class="menu-link">
										<span class="menu-icon">											
											<i class="fas fa-key fa-2x"></i>								
										</span>
                    <a href="cambiarPass.jsp">
                         <span class="menu-title">Cambiar contraseña</span>                                                                                                                                                                                                                                                                          
                    </a>   
                    </span>
                        </div>           
                   
              		<div class="aside-footer flex-column-auto px-6 pb-5" id="kt_aside_footer">
						  <div data-kt-menu-trigger="click" class="menu-item mb-1">
									<span class="menu-link">
										<span class="menu-icon">											
											<i class="fas fa-power-off fa-2x"></i>							
										</span>
                    <a href="Controlador?accion=logout">
                         <span class="menu-title">Cerrar Sesión</span>                                                                                                                                                                                                                                                                          
                    </a>   
                    </span>
                        </div> 
					</div>
               
             
                   <!--fin de header --> 
                   
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
					</div>
					</div>	
					</div>