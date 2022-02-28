function horario(e,id,con){
	let date = new Date();
	var usuario=document.getElementById("usuario").value;
		console.log(usuario);
let  hora = date.getHours() + ':' + date.getMinutes();
	
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
    ruta=con+"Controller?accion=Registrarhorario&id="+id+"&producto="+producto;
	
	window.setTimeout(function(){window.location.href=ruta},5000);
    Swal.fire(
      'Registro enviado.!',
	
	usuario  + '   La  hora registrada  fue: '+hora,
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