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
        <meta charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="icon" href="media/imagenes/MarkRosterlogo.ico"/>
        <link rel="icon" href="media/imagenes/MarkRosterlogo.png"> 
        <title>Gesti�n de Usuarios-Administrador</title>
        <link rel="stylesheet" href="index.css"> 
        <script src="https://kit.fontawesome.com/4a02ae2b25.js" crossorigin="anonymous"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" 
        rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" 
        crossorigin="anonymous">        
        <script src="https://kit.fontawesome.com/4a02ae2b25.js" crossorigin="anonymous"></script>          
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <script src="https://cdn.jsdelivr.net/npm/vanilla-datatables@latest/dist/vanilla-dataTables.min.js" type="text/javascript"></script>
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
                    <a href="">
                        <i class="fa fa-user"></i>
                        <span class="nav-text">
                            <strong>Bienvenido, ${us.nombreusuario}</strong><br>
                            <strong>Rol ${us.privilegio}</strong><br>
                        </span>
                    </a>                  
                </li>
                <li>
                    <a href="index.jsp">
                        <i class="fa fa-home"></i>
                        <span class="nav-text">
                            <strong>Inicio</strong>
                        </span>
                    </a>                  
                </li>
                <!--importante para restringir vistas y funciones y botones -->                
                 <li<c:if test="${r.Privilegio!='Administrador'}">hidden</c:if>>
                   <a href="Controlador?accion=Listarusuarios">
                       <i class="fa fa-user"></i>
                        <span class="nav-text">
                            <strong>Opciones administrativas</strong>
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
            <ul class="logout">
                <li>
                   <a href="Controlador?accion=logout">
                         <i class="fa fa-power-off fa-2x"></i>
                        <span class="nav-text">
                          <strong>Cerrar Sesi�n</strong>
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