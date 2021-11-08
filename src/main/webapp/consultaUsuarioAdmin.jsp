
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
   <body class="container text-center">     
   <h1 class="text-center">Gestión de usuarios</h1>
   <br>
  <div class="container text-center"> 
  <a class="btn btn-success" href="registroUsuario.jsp" role="button"><i class="fas fa-user-plus fa-2x" title="Nuevo Usuario"></i></a>
  <br>
  <br> 
</div>
<table  class="table table-dark table-striped" id="usuarios">
<tr>
<th>ID</th>
<th>Usuario</th>

<th> Corrreo</th>

<th> privilegio </th>
<th> Estado </th>
<th> eliminar </th>
<th> editar </th>
</tr>
<c:forEach items="${usuarios}" var="r">
	<tr>
	<td>${r.getIdempresa() }</td>
	<td>${r.getNombreusuario() }</td>
	
	<td>${r.getCorreo()}</td>
	
	<td>${r.getPrivilegio()}</td>
	<td><c:if test="${r.getEstado()==0}">
	<button type="button" class="btn btn-danger">Inactivo</button>
	</c:if> <c:if test="${r.getEstado()>0}">
	<button type="button" class="btn btn-success">Activo</button>
	</c:if></td>
	<td> <a class="btn btn-danger"  onclick="borrar(event,${r.getIdempresa() },'Controlador')"role="button"><i class="fas fa-user-times fa-2x"></i></a></td>
	<td> <a class="btn btn-warning" href="Controlador?accion=ver&id=${r.getIdempresa() }" role="button"><i class="fas fa-user-cog fa-2x"></i></a></td>
	</tr>
</c:forEach>
</table>
<script>
var myTable = document.querySelector("#usuarios");
var dataTable = new DataTable("#usuarios", {
	perPage:5,
	labels: {
	    placeholder: "Buscar usuario...",
	    perPage: "{select} Registros en pagina ",
	    noRows: "No se encuentra el usuario",
	    info: "Mostrando {start}  al  {end} de   {rows} filas",
	}
});

</script>
		

</body>
 
</html>
