<%@include file="header.jsp" %>
     <div class="row">
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                        <div class="page-header">
                            <h2 class="pageheader-title">Registra aquí tus horarios</h2>
                            <p class="pageheader-text"></p>                                                       
                        </div>
                    </div>
                </div>
                <div class="row">
<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
<div class="card">
<h5 class="card-header">Elige que horario registrar:</h5>
<div class="card-body">
  <form method="post" action="">
<select class="form-control "  name="opciones_horarios" id="opciones_horarios">
  <option selected disabled>Selecciona el momento del día</option>
  <option value="horaentrada_laboral" >Inicio de jornada laboral</option>
  <option value="salidaAlmuerzo">Salida para almorzar</option>
  <option value="entradaAlmuerzo">Entrada de almorzar</option>
  <option value="salida_laboral">Final de jornada laboral</option> 
</select><br>
<h3 class="text-center">Registra tu horario</h3>
<br>
<input type="hidden" name="usuario" id="usuario" value="${us.getNombreusuario()}">
<input type="hidden" name="correo" id="correo" value="${us.getCorreo()}">
<div class="text-center">
<a class="btn btn-success tect-center" onclick="horario(event,${us.getIdempresa()},'Usuario',)" role="button"><i class="far fa-thumbs-up fa-2x"></i><strong> Ingresar</strong></a>	
</div>
</form>
 </div>
</div>
</div>
</div>
<script>
   var fechahora = new Date();
 </script>
</body>
  <script src="main.js"></script>
   <script src="horario.js"></script>
 <%@include file="footer.jsp" %>
 <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>     
 </div>
</div>
</html>
