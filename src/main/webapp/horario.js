function horario(e,id,con){
	
	e.preventDefault();
	console.log(id)
	console.log(con)
	var producto=document.getElementById("opciones_horarios").value;
	console.log(producto)
	
	
	
	Swal.fire({
  title: 'Estas seguro que quieres ingresar la hora actual?',
  text: "No se podra cancelar esta accion!",
  icon: 'warning',
  showCancelButton: true,
  confirmButtonColor: '#3085d6',
  cancelButtonColor: '#d33',
  confirmButtonText: 'si, quiero ingresar el horario!'
}).then((result) => {
  if (result.isConfirmed) {
    ruta=con+"Controller?accion=Registrarhorario&id="+id
	window.setTimeout(function(){window.location.href=ruta},2000);
    Swal.fire(
      'Registro enviado.!',
      'Base de datos actualizada.'
      
    )
  }
else {
	 Swal.fire(
      
      'Tarea  cancelada.'
)
 }
})
}