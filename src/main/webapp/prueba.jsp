<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css">
  <link rel="stylesheet" href="https://cdn.datatables.net/1.11.5/css/dataTables.bootstrap4.min.css">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="header.jsp" %>


  <meta name="viewport content="width=device-width, initial-scale=1.0">
  <title>Hola</title>
</head>
<body>
<div class="container">
  <table id="example" class="table table-striped table-bordered" style="width:100%">
    <thead>
        <tr>
            <th> Usuario</th>
            <th>Correo</th>
            <th>Privilegio</th>
            <th>Estado</th>
            <th>Eliminar</th>
            <th>Editar</th>
        </tr>
    </thead>
    <tbody>
        
        <c:forEach items="${usuarios}" var="r">
        <tr>
        
          <td>${r.getNombreusuario() }</td>
            <td>${r.getCorreo()}</td>
            	<td>${r.getPrivilegio()}</td>
            
          <td><c:if test="${r.isEstado()==false}">
	
		<a class="btn btn-success btn-sm" onclick="cambiarestado(event,${r.getIdempresa()},${r.isEstado()},'Controlador')" role="button"><i class="far fa-thumbs-up fa-2x"></i><strong>    Activar</strong></a>		
	</c:if> <c:if test="${r.isEstado()==true}">
	
	<a class="btn btn-danger btn-sm" onclick="cambiarestado(event,${r.getIdempresa()},${r.isEstado()},'Controlador')" role="button"><i class="far fa-thumbs-down fa-2x"></i><strong>    Inactivar</strong></a>
	</c:if></td>

	<td> <a class="btn btn-danger"  onclick="borrar(event,${r.getIdempresa() },'Controlador')"role="button"><i class="fas fa-user-times fa-2x"></i></a></td>
	<td> <a class="btn btn-warning" href="Controlador?accion=ver&id=${r.getIdempresa() }" role="button"><i class="fas fa-user-cog fa-2x"></i></a></td>
	
        </c:forEach>
          
        </tr>
       
       
            </tbody>
</table>
</div>

  
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.11.5/js/dataTables.bootstrap4.min.js"></script>
  <script src="cambiarestado.js"></script>

<script src="prueba.js"></script>
<%@include file="header.jsp" %>

</body>
</html>