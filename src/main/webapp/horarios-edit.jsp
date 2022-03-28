
<%@include file="header.jsp" %>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1>Actualizacion de horarios</h1>
<form action="Controlador?accion=edithorarios" method="post">

<input type="text" name="correo" value="${horarios.getCorrreo()}">
<input type="text" name= "idhorarios" value="${horarios.getIdempleado()}">
<input type="time" name="horario-entrada" value="${horarios.getHorario_entrada_turno()}">
<input type="time" name="horario-salida" value="${horarios.getHora_salida_turno() }">
<input type="submit"  onclick="editar(event,${horarios.getIdempleado()},'Controlador')"class="fadeIn fourth" value="Actualizar">
</form>
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
</html>