
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset=UTF-8>     
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">              
        <link rel="icon" href="media/imagenes/MarkRosterlogo.ico"/> 
        <title>MarkRoster - Iniciar Sesión</title>      
          <title>MarkRoster - Iniciar Sesión</title>      
         <script src="https://kit.fontawesome.com/4a02ae2b25.js" crossorigin="anonymous"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" 
        rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" 
        crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" 
        integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" 
        crossorigin="anonymous">
        </script>  
<<<<<<< HEAD
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
         <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="https://getbootstrap.com/docs/4.0/dist/css/bootstrap.min.css" rel="stylesheet"/>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    
      
=======
         <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
>>>>>>> ee567a5
        <link rel="stylesheet" href="iniciar.css">
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
    <body oncopy="return false" onpaste="return false">
   
   <div class="wrapper fadeInDown">
  <div id="formContent">
    <br><br>
    <img src="media/imagenes/MarkRosterlogo.png" width="128" height="auto"/><br>
    <h2 class="active"> Registra un nuevo Usuario </h2> 
    <div class="wrapper fadeInDown">
  <div id="formContent">
    <!-- Tabs Titles -->
    <h2 class="active"> Sign In </h2>
    <h2 class="inactive underlineHover">Sign Up </h2>

    <!-- Icon -->
    <div class="fadeIn first">
      <img src="http://danielzawadzki.com/codepen/01/icon.svg" id="icon" alt="User Icon" />
      
    </div>

    <!-- Login Form -->
<<<<<<< HEAD
    <form>
      <input type="text" id="login" class="fadeIn second" name="login" placeholder="login">
      <input type="text" id="password" class="fadeIn third" name="login" placeholder="password">
      <input type="submit" class="fadeIn fourth" value="Log In">
      
    </form>

    <!-- Remind Passowrd -->
    <div id="formFooter">
      <a class="underlineHover" href="#">Forgot Password?</a>
      
    </div>

  </div>
</div>
    <!-- Icon -->
  
    
 </body>
=======
    <form   action="registrar" method="post" name="formulario" id="formulario">
      <input type="text" name="usuario" id="usuario" class="fadeIn second" placeholder="Ingresa usuario" required pattern="[A-Za-z0-9]{2,30}" title="Letras. Tamaño mínimo: 2. Tamaño máximo: 30"
                         minlength="2" maxlength="30"  aria-describedby="usuariohelp" required
                         ><span class="text-danger"></span>
      <input type="text" name="correo" id="correo" class="fadeIn second" placeholder="Ingresa tu correo" required pattern="\@[a-z0-9]{10,50}" title="texto@host.com. Tamaño mínimo: 10. Tamaño máximo: 50"
                         minlength="10" maxlength="50"
                         ><span class="text-danger"></span>
      <input type="text" name="ccorreo" id="ccorreo" class="fadeIn second" placeholder="Confirma tu correo" onchange="comprobarCorreo()" pattern="\@[a-z0-9]{10,50}" title="texto@host.com. Tamaño mínimo: 10. Tamaño máximo: 50"
                         minlength="10" maxlength="50"
                         ><span class="text-danger"></span>
      <input type="password" id="pass" class="fadeIn third" name="pass" placeholder="Ingresa tu contraseña" pattern="[A-Za-z0-9]{8,30}" required/>
      <input type="password" id="Contraseña2" class="fadeIn third" name="Contraseña2" placeholder="Confirma tu contraseña" pattern="[A-Za-z0-9]{8,30}" onchange="comprobarClave()" required/>
      <div style="margin: 35px">
                        <select class="form-control" name="idempresa" required title="elije tu empresa" style="padding: 15px 32px">
                <option value="0" selected >Selecciona tu empresa...</option>                                                 
                <option value="1">Unloft S.A.S</option>
                <option value="2">Argotty</option>
                <option value="3">Impakto Producciones</option></select>
                        <i></i>
                    </div> 
      <div style="margin: 35px">
                        <select name="privilegio" class="form-control" required title="Establece el privilegio" style="padding: 15px 32px">
                <option value="0" selected >Selecciona tu nivel de privilegio...</option>                                                 
                <option value="Usuario">Usuario standard</option>
                <option value="Administrador">Administrador</option>
                </select>
                        <i></i>
                    </div> 
                 
                  <br>
                  <br>                  
    
       
     
      
      
       
       
  
    
      <input class="checkbox" name="aceptar" type="checkbox"
                         required><strong>  ACEPTO</strong> los 
                         <button type="button" class="enlace" data-toggle="modal" data-target="#exampleModal" role="link">
                         terminos y condiciones 
                      </button>
                        <p>Ya tienes una cuenta? ... <a class="span" href="iniciarSesion.jsp" >Inicia Sesión</a></p> 
                        <div id="formFooter">
      <p>Vuelve a la  <a class="underlineHover" href="index.jsp">Página principal</a></p>
         <input type="submit" class="fadeIn fourth" name="registrar" id="registrar" value="Registrar usuario">
       <input type="reset" class="fadeIn fourth" value="Cancelar">
    
    </div>
                      <!-- Modal -->
                      <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                          <div class="modal-content">
                              
                            <div class="modal-header">
                              <h5 class="modal-title" id="exampleModalLabel">Terminos y condiciones </h5>
                              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                              </button>
                            </div>
                            <div class="modal-body">
                            Lorem ipsum dolor sit amet consectetur adipisicing elit. 
          Ipsum quae ex nesciunt voluptatibus quo atque architecto beatae,
           eaque iure sapiente amet officia fugiat quibusdam minima ducimus repellat in, quasi ipsa.
                              ...
                            </div>
                            <div class="modal-footer">
                              <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                              
                            </div>
                          </div>
                        </div>
                      </div>
                            </div>
                           
    <!-- Remind Passowrd -->
  
  </div>
 


<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
 </body>
</html>
>>>>>>> ee567a5
