<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>LLegaron los datos panaaa</h1>
<form>
<input type="time" name="horario-entrada" value="${horarios.getHorario_entrada_turno()}">
<input type="time" name="horario-salida" value="${horarios.getHora_salida_turno() }">
</form>
</body>
</html>