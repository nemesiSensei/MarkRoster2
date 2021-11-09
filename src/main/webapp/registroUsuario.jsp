<%-- 
    Document   : registroUsuario
    Created on : 12/09/2021, 10:11:27 AM
    Author     : NEMESIS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset=UTF-8>     
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
          <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
          
        <meta name="viewport" content="width=device-width, initial-scale=1.0">              
        <link rel="icon" href="media/imagenes/MarkRosterlogo.ico"/> 
        <title>MarkRoster - Iniciar Sesión</title>      
         <script src="https://kit.fontawesome.com/4a02ae2b25.js" crossorigin="anonymous"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" 
        rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" 
        crossorigin="anonymous">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
         <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="https://getbootstrap.com/docs/4.0/dist/css/bootstrap.min.css" rel="stylesheet"/>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
      
        <link rel="stylesheet" href="iniciar.css">
      <body>
      <img src="media/imagenes/MarkRosterlogo.png" width="128" height="auto"/><br>
    <h2 class="active"> Registra un nuevo Usuario </h2> 
    <!-- Icon -->
  
    <!-- Login Form -->
    <form   action="registrar" method="post" name="formulario" id="formulario">
      <input type="text" name="usuario" id="usuario" class="fadeIn second" placeholder="Ingresa usuario" required pattern="[A-Za-z0-9]{2,30}" title="Letras. Tamaño mínimo: 2. Tamaño máximo: 30"
                         minlength="2" maxlength="30"  aria-describedby="usuariohelp" required
                         ><span class="text-danger"></span>
       <button type="button" class="enlace" data-toggle="modal" data-target="#exampleModal" role="link">
      Ver terminos y condiciones 
    </button>
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
          <p>Segun ley bajo la cual nos basamos, usted podra </p>
            ...
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            <button type="button" class="btn btn-primary">Save changes</button>
          </div>
        </div>
      </div>
    </div>
 </body>