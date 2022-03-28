<%@include file="header.jsp"%>
<!DOCTYPE html>
<html> 
<div class="row">
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                        <div class="page-header">
                            <h2 class="pageheader-title">Información adicional de empleados</h2>
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
<th>ID del empleado</th>
<th>Usuario</th>
<th>Empresa</th>
<th>Nombre</th>
<th>Cédula</th>
<th>Correo electrónico</th>
<th>Cargo</th>
<th>EPS</th>
<th>Privilegio</th>
<th>Teléfono</th>
</tr>
</thead>
<tbody>
<c:forEach items="${usuario}" var="u">
	<tr>
	<td>${u.getId_empleados()}</td>
	<td>${u.getUsuario()}</td>
	<td>${u.getNombre_empresa()}</td>
	<td>${u.getNombre()}</td>
	<td>${u.getCedula()}</td>
	<td>${u.getCorreo()}</td>
	<td>${u.getCargo()}</td>
	<td>${u.getEPS()}</td>
	<td>${u.getPrivilegio()}</td>
	<td>${u.getTelefono()}</td>
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
 <%@include file="footer.jsp"%>
  </div>
</div>
</html>

