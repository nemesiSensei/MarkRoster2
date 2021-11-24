<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     <%@include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form   action= "UsuarioController?accion=editunico" method="post">
     
          <input  type="text"  id="privilegio" class="fadeIn second" name="privilegio"  value="${usuarios. getPrivilegio()   }" >
           
            <input     type="text" id="correo" class="fadeIn second" name="correo" value="${usuarios. getCorreo()   }"   >
               <input type="text" id="usuario" class="fadeIn second" name="usuario" value="${usuarios. getNombreusuario() }">
    

      <input type="submit"  onclick="editar(event,${r.getIdempresa() },'UsuarioController')"class="fadeIn fourth" value="Actualizar">




</body>
</html>