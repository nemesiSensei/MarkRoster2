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
<div class="row">
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                        <div class="page-header">
                            <h2 class="pageheader-title">Reporte de cumplimiento</h2>
                            <p class="pageheader-text"></p>
  <a class="btn btn-danger" href="UsuarioController?accion=Reportes" role="button"><i class="far fa-file-pdf fa-2x"></i></a>                             
                        </div>
                    </div>
                </div>
<div class="row">
<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
<div class="card">
<h5 class="card-header">Control de Horarios</h5>
<div class="card-body">
<div class="table-responsive">
<table class="table table-striped table-bordered first" id="usuarios">
 <thead> 
        <tr>
          <th>Usuario</th>
             <th>Hora de ingreso</th>
               <th>Tiempo</th>
              <th>Cumplimiento</th>
              <th>Fin de jornada laboral</th>
               <th>Cumplimiento</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${reporte}" var="r">
	<tr>
	<td>${r. getUsuario() }</td>
	<td>${r. getHorario_entrada()}</td>
	<td>${r. getDiferencia() }</td>
	<td>${r. getDescripcion_horaentrada()}</td>
	<td>${r. getHorario_salida()}</td>
	<td>${r. getDescripcion_horasalida()}</td>
</tr>
</c:forEach>        
            </tbody>
</table>
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
</body>
<%@include file="footer.jsp" %>
</div>
</div>
</html>
