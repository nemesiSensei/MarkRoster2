<%@include file="header.jsp" %>
<script>
        function limpiarCorreo()
        {
           document.getElementById("Ccorreo").value = "";
        }
        </script>
        <script>
function comprobarCorreo()
{
    correo = document.formulario.correo.value;
    ccorreo = document.formulario.ccorreo.value;
    if (correo !== ccorreo)
    {   
       alert("Los correos no coinciden");       
       document.formulario.Ccorreo.focus();
       limpiarCorreo();
    }    
}
</script>
    <script>
        function limpiar()
        {
           document.getElementById("Contraseña2").value = "";
        }
        </script>
    <script>
function comprobarClave()
{
    pass = document.formulario.pass.value;
    Contraseña2 = document.formulario.Contraseña2.value;
    if (pass !== Contraseña2)
    {   
       alert("Las claves no coinciden");       
       document.formulario.Contraseña2.focus();
       limpiar();
    } 
      
    }
</script>
 <script>
                function verificar(){
                	const correo = document.getElementById("correo").value;
                	$.ajax({
                		url:"UsuarioController?accion=validarcorreo",
                		data:{
                			correo:correo
                		},
                		success: function (result){
                			$("#verificar").html(result);
                		}
                	})
                    
                }
                function verificarusuario(){
                	const usuario = document.getElementById("usuario").value;
                	$.ajax({
                		url:"UsuarioController?accion=validarusuario",
                		data:{
                				usuario:usuario
                		},
                		success: function (result){
                			$("#verificarusuario").html(result);
                		}
                	})
                    
                }
               
                </script> 
   <div class="modal fade" id="horarios" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Asignacion de horarios</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
      <form action="UsuarioController?accion=Agendarhorarios" method="post">
<select name="turno" class="form-control">
<option selected disabled> Seleccione el empleado</option>
<c:forEach items="${usuarios}" var="r">
<option value="${r.getIdempresa()}"> ${r.getNombreusuario() } </option>
</c:forEach>
</select><br>
<label for="Hora-entrada"> selecione la hora de entrada correspondiete</label><br>
<input type="time" name="Hora-entrada"  class="form-control"></input><br>
<label for="Hora-salida"> selecione la hora de salida correspondiete</label><br>
<input type="time" name="Hora-salida"  class="form-control"></input><br>
</form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
        <button type="submit" class="btn btn-success">Guardar</button>
      </div>
    </div>
  </div>
</div>
<div class="row">
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                        <div class="page-header">
                            <h2 class="pageheader-title">Gestión de Horarios</h2>
                            <p class="pageheader-text"></p> 
<a class="btn btn-success" role="button" data-bs-toggle="modal" data-bs-target="#horarios" data-bs-whatever="@mdo"><i class="fas fa-clock fa-2x" title="Definir Horario"></i><i class="fas fa-plus"></i></a>
  <a class="btn btn-danger" href="UsuarioController?accion=Reportes" role="button"><i class="far fa-file-pdf fa-2x" title="Generar Reporte"></i></a>
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
          <th>ID</th>
	<th>Usuario</th>
	<th>Correo</th>
	<th>Horario de entrada </th>
	<th>Horario de salida </th>
	<th>Editar </th>
	<th>Eliminar </th>
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${horarios}" var="r">
	<tr>
	<td>${r.getIdempleado()}</td>
	<td>${r.getUsuario()}</td>
	<td> ${r.getCorrreo()}</td>
	<td>${r.getHorario_entrada_turno()}</td>
	<td>${r.getHora_salida_turno()}</td>
	<td> <a class="btn btn-info" href="Controlador?accion=actualizarhorarios&id=${r.getIdempleado()}&correo=${r.getCorrreo()}" role="button"><i class="fa fa-pencil"></i></a></td>
	<td> <a class="btn btn-danger"  role="button"><i class="fas fa-user-times"></i></a></td>
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
</body>
<%@include file="footer.jsp" %>
 </div>
</div>
</html>