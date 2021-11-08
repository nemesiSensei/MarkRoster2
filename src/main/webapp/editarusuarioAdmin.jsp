<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html> 
<html>
<head>

<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" href="iniciar.css"> 
<script  src="alertas2.js"></script>
<title>Insert title here</title>

</head>
<body>
  <div class="wrapper fadeInDown">
  <div id="formContent">
   <br><br>
    <img src="media/imagenes/MarkRosterlogo.png" width="128" height="auto"/><br>
    <!-- Tabs Titles -->
    <h2 class="active"> Editar usuario </h2>
   

    <!-- Icon -->
  
    <!-- Login Form -->
    <form   action="Controlador?accion=edit" method="post">
      <input type="hidden" id="id" class="fadeIn second" name="id"  value="${usuarios. getIdempresa()  }"  >
         <input type="text" id="privilegio" class="fadeIn second" name="privilegio"  value="${usuarios. getPrivilegio()   }"  >
            <input type="text" id="correo" class="fadeIn second" name="correo" value="${usuarios. getCorreo()   }"   >
               <input type="text" id="usuario" class="fadeIn second" name="usuario" value="${usuarios. getNombreusuario() }">
    
      <input type="submit"  onclick="editar(event,${r.getIdempresa() },'Controlador')"class="fadeIn fourth" value="Actualizar">
    </form>

    <!-- Remind Passowrd -->
   

  </div>
</div>
  
  
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</html>