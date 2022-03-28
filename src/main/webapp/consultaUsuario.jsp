<%@include file="header.jsp"%>
<!DOCTYPE html>
<html> 
<div class="modal fade" id="usuario" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Actualizacion de perfil</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
       <form   action= "UsuarioController?accion=editunico" method="post">     
      <input type="hidden" id="id" name="id" value="${us.getIdempresa() }">
          <input  type="hidden"  id="privilegio" name="privilegio"value="${us.getPrivilegio()}"><br>
           <label for="usuario">Usuario: </label>
          <input type="text" id="usuario" class="form-control" name="usuario" value="${us.getNombreusuario()}" placeholder="Nombre de Usuario"><br>  
           <label for="usuario">Correo: </label>       
             <input type="text" id="correo" class="form-control" name="correo" value="${us.getCorreo()}"placeholder="Correo electrónico">
              </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
        <button type="submit" class="btn btn-success">Actualizar</button>       
      </div>
    </div>
  </div>
</div> 
				<div class="row">
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                        <div class="page-header">
                            <h2 class="pageheader-title">Gestión Personal</h2>
                            <p class="pageheader-text"></p>                            
                        </div>
                    </div>
                </div>
<div class="row">
<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
<div class="card">
<h5 class="card-header">Control de Usuario</h5>
<div class="card-body">
<div class="table-responsive">
<table class="table table-striped table-bordered first" id="usuarios">
 <thead> 
<tr>
<th>Usuario</th>
<th> Corrreo</th>
<th> editar </th>
</tr>
</thead>
 <tbody>
<c:forEach items="${usuarios}" var="r">
	<tr>	
	<td>${r.getNombreusuario() }</td>
	<td>${r.getCorreo()}</td>	
	<td class="text-center"> <a class="btn btn-warning"  data-bs-toggle="modal" data-bs-target="#usuario" role="button"><i class="fa fa-user-cog fa-2x"></i></a></td>
	</tr>
</c:forEach>
</tbody>
</table>
 </div>
</div>
</div>
</div>
</div>
</body>
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
  </div>
</div>    
</html>