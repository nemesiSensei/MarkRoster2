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
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
	<script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>
	<script src="https://cdn.datatables.net/1.11.5/js/dataTables.bootstrap4.min.js"></script>
  	<script src="cambiarestado.js"></script>
	<script src="prueba.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
	<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
  	<script src="alertas2.js"></script>  
    <script src="main.js"></script>  
 <%@include file="footer.jsp" %>