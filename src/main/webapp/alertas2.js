function editar (e,id,con){
	e.preventDefault();
	console.log(id);
	console.log(con);
	
	Swal.fire({
<<<<<<< HEAD
  title: 'Esta seguro que quiere cambiar los datos del usuario??',
  text: "Recuerde que los cambios son reversibles",
=======
  title: 'Esta seguro que quiere elimnar este usuario??',
  text: "No podra volver atras!!",
>>>>>>> registro
  icon: 'warning',
  showCancelButton: true,
  confirmButtonColor: '#3085d6',
  cancelButtonColor: '#d33',
<<<<<<< HEAD
  confirmButtonText: 'Si, quiero actualizar los datos!'
}).then((result) => {
  if (result.isConfirmed) {
	ruta=con+"?accion=edit"
	window.setTimeout(function(){window.location.href=ruta},2000);
    Swal.fire(
      'Usuario actualizado!',
=======
  confirmButtonText: 'Si, quiero eliminarlo!'
}).then((result) => {
  if (result.isConfirmed) {
	ruta=con+"?accion=edit&id="+id
	window.setTimeout(function(){window.location.href=ruta},3000);
    Swal.fire(
      'Usuario eliminado!',
>>>>>>> registro
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