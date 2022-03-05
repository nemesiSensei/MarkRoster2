<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
    
<!DOCTYPE html> 
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" href="iniciar.css"> 
<link rel="stylesheet" href="dark.css">
<script  src="alertas2.js"></script>
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<link rel="icon" href="media/imagenes/MarkRosterlogo.png">
<title>MarkRoster-Editar Usuario</title>
</head>
<body>
<!-- Modal -->
<div class="modal fade" id="usuarios" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <h2 class="active"> Editar usuario </h2> 
    <form   action= "Controlador?accion=edit" method="post">
      <input  type="hidden" id="id" class="fadeIn second" name="id"  value="${usuarios. getIdempresa()}">
            <input type="text" id="correo" class="fadeIn second" name="correo" value="${usuarios. getCorreo()}">
               <input type="text" id="usuario" class="fadeIn third" name="usuario" value="${usuarios. getNombreusuario()}">
             
               <input type="submit"  onclick="editar(event,${r.getIdempresa() },'Controlador')"class="fadeIn fourth" value="Actualizar">      
</form>
  </div>
        
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>
   <div class="modo" id="modo">
        <i class="fas fa-toggle-on"></i>
    </div>
  <div class="wrapper fadeInDown">
  <div id="formContent">
   <br><br>
    <img src="media/imagenes/MarkRosterlogo.png" width="128" height="auto"/><br>    
    <h2 class="active"> Editar usuario </h2> 
    <form   action= "Controlador?accion=edit" method="post">
      <input  type="hidden" id="id" class="fadeIn second" name="id"  value="${usuarios. getIdempresa()}">
            <input type="text" id="correo" class="fadeIn second" name="correo" value="${usuarios. getCorreo()}">
               <input type="text" id="usuario" class="fadeIn third" name="usuario" value="${usuarios. getNombreusuario()}">
             
               <input type="submit"  onclick="editar(event,${r.getIdempresa() },'Controlador')"class="fadeIn fourth" value="Actualizar">      
</form>
  </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
  <script src="alertas2.js"></script>
    <script src="main.js"></script>
 
</html>