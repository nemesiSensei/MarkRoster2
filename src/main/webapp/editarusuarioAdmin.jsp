<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
    
<!DOCTYPE html> 
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" href="iniciar.css"> 
<script  src="alertas2.js"></script>
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<link rel="icon" href="media/imagenes/MarkRosterlogo.png">
<title>MarkRoster-Editar Usuario</title>
</head>
<body>
  <div class="wrapper fadeInDown">
  <div id="formContent">
   <br><br>
    <img src="media/imagenes/MarkRosterlogo.png" width="128" height="auto"/><br>    
    <h2 class="active"> Editar usuario </h2> 
    <form   action= "Controlador?accion=edit" method="post">
      <input  type="hidden" id="id" class="fadeIn second" name="id"  value="${usuarios. getIdempresa()}">
            <input type="text" id="correo" class="fadeIn second" name="correo" value="${usuarios. getCorreo()}">
               <input type="text" id="usuario" class="fadeIn third" name="usuario" value="${usuarios. getNombreusuario()}">
               <br>               
                <select  name="privilegio" class="form-select fadeIn first" required title="Establece el privilegio" style="width:380px; margin-left:35px;padding:15px">
                <option  >${usuarios. getPrivilegio()}</option>                                                 
                <option value="Usuario">Usuario </option>
                <option value="Administrador">Administrador</option>
                </select>
                <br>
               <input type="submit"  onclick="editar(event,${r.getIdempresa() },'Controlador')"class="fadeIn fourth" value="Actualizar">      
</form>
  </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
  <script src="alertas2.js"></script>
 
</html>