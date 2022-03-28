<%@include file="header.jsp" %>
<!DOCTYPE html>
<body>
<div class="container">
<div class="card text-center">
<h5 class="card-header">Editar Usuario</h5>
<div class="card-body">
  <div class="wrapper fadeInDown">
  <div id="formContent">
   <br><br>
    <img src="media/imagenes/MarkRosterlogo.png" width="128" height="auto"/><br><br>
    <form   action= "Controlador?accion=edit" method="post">
      <input  type="hidden" id="id" class="fadeIn second" name="id"  value="${usuarios. getIdempresa()}">
      <label >E-mail</label>
            <input type="text" id="correo" class="fadeIn second form-control" name="correo" value="${usuarios. getCorreo()}"><br>
            <label >Usuario</label>
               <input type="text" id="usuario" class="fadeIn third form-control" name="usuario" value="${usuarios. getNombreusuario()}"><br>
               <label >Privilegio</label>
               <select name="privilegio" class="form-control" required title="Establece el privilegio" >
                <option value="0" selected disabled >Selecciona el nivel de privilegio...</option>                                                 
                <option value="Usuario">Usuario standard</option>
                <option value="Administrador">Administrador</option>
                </select>  <br>          
               <input type="submit"  onclick="editar(event,${r.getIdempresa() },'Controlador')"class="fadeIn fourth btn btn-success" value="Actualizar">      
</form>
 </div>
</div>
</div>
</div>
</div>
 <%@include file="footer.jsp" %>