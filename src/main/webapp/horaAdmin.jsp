
<%@include file="header.jsp" %>
   <body>     
   <h1 class="text-center">Registra aquí tus horarios</h1>
   <br>
  <div class="container text-center"> 
  <h3 class="text-center">Elige que horario registrar:</h3>
  <br>
  <br>  
 

  <form method="post" action="">
  
<select class="form-select "  name="opciones_horarios" id="opciones_horarios">
  <option selected >Selecciona el momento del día</option>
  <option value="horaentrada_laboral" >Inicio de jornada laboral</option>
  <option value="salidaAlmuerzo">Salida para almorzar</option>
  <option value="entradaAlmuerzo">Entrada de almorzar</option>
  <option value="salida_laboral">Final de jornada laboral</option>
 <script>
   var fechahora = new Date();
 </script>
   



  
</select>

	
<h3 class="text-center">Finalmente, registra tu horario</h3>

<br>
<br>
<input type="hidden" name="usuario" id="usuario" value="${us.getNombreusuario()}">
<input type="hidden" name="correo" id="correo" value="${us.getCorreo()}">
<a class="btn btn-success btn-sm" onclick="horario(event,${us.getIdempresa()},'Usuario',)" role="button"><i class="far fa-thumbs-up fa-2x"></i><strong> Ingresar</strong></a>	
</form>
</div>
<br>
<br>
<h1 class="text-center">Consulta aquí los registros de horario tuyos o del personal que elijas</h1>
<br>
<br>
<div class="container text-center">
<select class="form-select form-select-lg mb-3" aria-label=".form-select-lg example" >
  <option selected>Selecciona la empresa</option>
  <option value="entrada">Unloft S.A.S.</option>
  <option value="salidaAlmuerzo">Argoti</option>
  <option value="entradaAlmuerzo">Impakto producciones</option>
</select>
<br>
<br>
<select class="form-select" size="5" multiple aria-label="multiple select example">
  <option selected>selecciona los empleados</option>
  <option value="1">One</option>
  <option value="2">Two</option>
  <option value="3">Three</option>
</select>
<br>
<br>
<h3 class="text-center">Elige el intervalo de tiempo que deseas consultar</h3>
<br>
<br>
<h5 class="text-center">Desde</h5>
<br>
<input class="date-picker" type="datetime-local">
<br>
<br>
<h5 class="text-center">Hasta</h5>
<br>
<input class="date-picker" type="datetime-local">
<br>
<br>
<a class="btn btn-primary" href=# role="button"><i class="fas fa-check fa-4x" title="Consultar"></i></a>
<br>
<br>
</div>
</body>
  <script src="main.js"></script>
   <script src="horario.js"></script>
 <%@include file="footer.jsp" %>
 
</html>
