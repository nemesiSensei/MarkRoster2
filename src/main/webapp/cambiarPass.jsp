

<%@page  contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset=UTF-8>     
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">              
        <link rel="icon" href="media/imagenes/MarkRosterlogo.ico"/> 
        <title>MarkRoster - Cambiar Contraseña</title>
         <script src="https://kit.fontawesome.com/4a02ae2b25.js" crossorigin="anonymous"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" 
        rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" 
        crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" 
        integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" 
        crossorigin="anonymous">
        </script>  
        <link rel="stylesheet" href="iniciar.css">
    </head>
    
    <body>
    
   <div class="wrapper fadeInDown">
  <div id="formContent">
    <br><br>
    <!-- Icon -->
  <img src="media/imagenes/MarkRosterlogo.png" width="128" height="auto"/><br>
    <h2 class="active"> Cambiar contraseña </h2> <br><br>
    <!-- Login Form -->
    <form action="Controlador?accion=changePass" method="post">
      <input type="hidden" id="id"  name="id" value="${us.idempresa}"><br><br>
      <input type="hidden" id="passU" name="passU" value="${us.pass}"><br><br>
      <input type="password" id="passAnt" class="fadeIn first" name="passAnt" placeholder="Ingresa contraseña actual" onchange="verifyPass()" style="margin: 0px" ><br><br>
      <input type="password" id="passNew" class="fadeIn second" name="passNew" placeholder="Ingresa nueva contraseña" style="margin: 0px"><br><br>
      <input type="password" id="passCon" class="fadeIn third" name="passCon" placeholder="Confirma nueva contraseña" style="margin: 0px"><br><br>
      <input type="submit" class="fadeIn third" value="Cambiar contraseña">
    </form>
    <!-- Remind Passowrd -->
    <div id="formFooter">
      
      <p>
      <%
      if(request.getParameter("msn")!=null)
      {
    	  out.println(request.getParameter("msn"));
      }
      %>
      </p>
      <p>Olvidaste tu contraseña...? Recupérala <a class="underlineHover" href="index.jsp">Aquí</a></p>
      <br>
    </div>
  </div>
</div>
<script>
function verifyPass()
{
	const passUs = document.getElementById("passU");
	const passAnt = document.getElementById("passAnt");
	if(passUs.value==passAnt.value)
		{
		alert("contraseña confirmada");
		}
	else
		{
		alert("contraseña errónea");
		pasaAnt.focus();
		passAnt.value="";
		}
	}
</script>
 </body>
</html>