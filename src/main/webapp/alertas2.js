function editar (e,id,con){
	e.preventDefault();
	console.log(id);
	console.log(con);
	
	Swal.fire({
  title: 'Esta seguro que quiere cambiar los datos del usuario??',
  text: "Recuerde que los cambios son reversibles",
  icon: 'warning',
  showCancelButton: true,
  confirmButtonColor: '#3085d6',
  cancelButtonColor: '#d33',
  confirmButtonText: 'Si, quiero actualizar los datos!'
}).then((result) => {
  if (result.isConfirmed) {
	ruta=con+"?accion=edit"
	window.setTimeout(function(){window.location.href=ruta},2000);
    Swal.fire(
      'Usuario actualizado!',
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