<%-- 
    Document   : registroUsuario
    Created on : 12/09/2021, 10:11:27 AM
    Author     : NEMESIS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="icon" href="media/imagenes/MarkRosterlogo.ico"/>
        <title>Registro de Usuario</title>
        <script src="https://kit.fontawesome.com/4a02ae2b25.js" crossorigin="anonymous"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" 
        rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" 
        crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" 
        integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" 
        crossorigin="anonymous">
        </script>  
        <link rel="stylesheet" href="estilos1.css">    
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
    </head>
    <center>
    <body oncopy="return false" onpaste="return false" style="font-family: 'cocogoose'">
        <a href="index.jsp"><img src="media/imagenes/btnAtras.png" alt="" class="atras" width="50" height="50"/></a>        
        <img class="logo2" src="media/imagenes/MarkRosterLogo2.png" align="right"> 
        <br>
        <br>        
       
        <br>
        <br>        
            <div class="login-info-container">
                <div class="iconoreg">
                <img src="media/imagenes/UsuariosOpen.png" alt=""
              width="520" height="336" alt=""/>
                </div>
                <h1 class="title1" ><strong>Nuevo<br>Usuario</strong></h1> 
               <br>
              <br>
              <br>
              <form action="registrar" method="post" name="formulario" id="formulario">                  
                  <label class='fuenteBlanca' title="Ingrese su Nombre de Usuario"></label><h4><strong>Usuario</strong></h4>                   
                  <input class="input" name="usuario" type="text"
                         required pattern="[A-Za-z0-9]{2,30}" title="Letras. Tamaño mínimo: 2. Tamaño máximo: 30"
                         minlength="2" maxlength="30"  aria-describedby="usuariohelp" required
                         ><span class="text-danger"></span>
                   <br>
                   <br>                                           
                       <label class="fuenteBlanca" title="Ingrese su Correo Electrónico"></label><h4><strong>Correo</strong></h4>                  
                  <input class="input" name="correo" type="email"
                         required pattern="\@[a-z0-9]{10,50}" title="texto@host.com. Tamaño mínimo: 10. Tamaño máximo: 50"
                         minlength="10" maxlength="50"
                         ><span class="text-danger"></span>
                  <br>
                  <br>
                  <label class="fuenteBlanca" title="Confirme su Correo Electrónico"></label><h4><strong>Confirmar Correo</strong></h4>                  
                  <input class="input" name="ccorreo" id="ccorreo" type="email" onchange="comprobarCorreo()" 
                         pattern="\@[a-z0-9]{10,50}" title="texto@host.com. Tamaño mínimo: 10. Tamaño máximo: 50" minlength="10" 
                         maxlength="50" required><span class="text-danger"></span>                    
                  <br>
                  <br>                   
                  <label class="fuenteBlanca" title="Ingrese su Contraseña"></label><h4><strong>Contraseña</strong></h4>                      
                  <input class="input" name="pass" type= "password" 
                         pattern="[A-Za-z0-9]{8,30}" required/>                 
                   <br>
                    <br> 
                    <label class="fuenteBlanca" title="Confirme su Contraseña"></label><h4><strong>Confirmar Contraseña</strong></h4>                 
                  <input class="input" name="Contraseña2" id="Contraseña2" type= "password" pattern="[A-Za-z0-9]{8,30}"
                         onchange="comprobarClave()" required/>                   
                  <br>
                  <br>                
                  </div>                    
                    <label class='fuenteBlanca' title="Elija a que empresa pertenece">
                    </label><h4><strong>A que Empresa pertenece?</strong></h4>                  
                    <div class="content-select">
                        <select name="idempresa" required title="elija su empresa">                                          
                <option value="1" selected >Unloft S.A.S</option>
                <option value="2">Argotty</option>
                <option value="3">Impakto Producciones</option></select>
                        <i></i>
                    </div> 
                  <br>                  
                  </div>                    
                    <label class='fuenteBlanca' title="Establezca su nivel de privilegio">
                    </label><h4><strong>Privilegio</strong></h4>                  
                    <div class="content-select">
                        <select name="privilegio" required title="Establezca su nivel de privilegio">                                          
                <option value="Usuario" selected >Usuario Standard</option>
                <option value="Administrador">Administrador</option>
                </select>
                        <i></i>
                    </div> 
                  <br>
                  <label class='fuenteBlanca' title="Ingrese la MAC del dispositivo inscrito"></label><h4><strong>MAC</strong></h4>                   
                  <input class="input" name="MAC" type="text"
                         required title="Hexadecimal. 2 digitos separados por dos puntos (:)"
                         minlength="17" maxlength="17" required
                         ><span class="text-danger"></span>
                  <br>
                  <br>

                  <input class="checkbox" name="aceptar" type="checkbox"
                         required><strong>ACEPTO</strong> los <a class="span" href="terminosYcondiciones.jsp">
                         términos y condiciones</a> de la aplicación
                  <br>
                  <br>                  
                  <input class="btn" type="submit" name="registrar" id="registrar" value="Registrar" />                
                  <br>
                  <br>
                  <input class="btn" type="reset" value="Cancelar"/>
                  <br> 
                  <br>

                  <p>Ya tienes una cuenta? ... <a class="span" href="iniciarSesion.jsp" >Inicia Sesión</a></p>                  
              </form>
            </div> 
                      
    </body>
    </center> 
    <footer class="footer">
</footer>    
</html>
