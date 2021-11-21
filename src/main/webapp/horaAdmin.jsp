
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
    <script src="alertas.js"></script>
   
        <meta charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="icon" href="media/imagenes/MarkRosterlogo.ico"/>
        <link rel="icon" href="media/imagenes/MarkRosterlogo.png"> 
        <title>Gestión de Usuarios-Administrador</title>
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
                    <a href="horaAdmin.jsp">                    
                       <i class="fa fa-clock fa-x2"></i>
                        <span class="nav-text">
                            <strong><strong>Registrar/Consultar Horario</strong></strong>
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
   <h1 class="text-center">Registra aquí tus horarios</h1>
   <br>
  <div class="container text-center"> 
  <h3 class="text-center">Elige que horario registrar:</h3>
  <br>
  <br>  
<select class="form-select form-select-lg mb-3" aria-label=".form-select-lg example">
  <option selected>Selecciona el momento del día</option>
  <option value="entrada">Inicio de jornada laboral</option>
  <option value="salidaAlmuerzo">Salida para almorzar</option>
  <option value="entradaAlmuerzo">Entrada de almorzar</option>
  <option value="salida">Final de jornada laboral</option>
  <option value="inicioExtras">Inicio de horas extra</option>
  <option value="salidaExtras">Final de horas extra</option>
</select>
<h3 class="text-center">Finalmente, registra tu horario</h3>
<br>
<br>
<a class="btn btn-success" href=# role="button"><i class="fas fa-check fa-4x" title="Confirmar"></i></a>
</div>
<br>
<br>
<h1 class="text-center">Consulta aquí los registros de horario tuyos o del personal que elijas</h1>
<br>
<br>
<div class="container text-center">
<select class="form-select form-select-lg mb-3" aria-label=".form-select-lg example">
  <option selected>Selecciona la empresa</option>
  <option value="entrada">Unloft S.A.S.</option>
  <option value="salidaAlmuerzo">Argoti</option>
  <option value="entradaAlmuerzo">Impakto producciones</option>
</select>
<br>
<br>
<select class="form-select" size="5" multiple aria-label="multiple select example">
  <option selected>selecciona los empleados</option>
  <option value="1">One</option>
  <option value="2">Two</option>
  <option value="3">Three</option>
</select>
<br>
<br>
<h3 class="text-center">Elige el intervalo de tiempo que deseas consultar</h3>
<br>
<br>
<h5 class="text-center">Desde</h5>
<br>
<input class="date-picker" type="datetime-local">
<br>
<br>
<h5 class="text-center">Hasta</h5>
<br>
<input class="date-picker" type="datetime-local">
<br>
<br>
<a class="btn btn-primary" href=# role="button"><i class="fas fa-check fa-4x" title="Consultar"></i></a>
<br>
<br>
</div>
</body>
 <%@include file="footer.jsp" %>
</html>
