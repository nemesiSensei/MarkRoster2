function hola  (e,id,con){
	e.preventDefault();
	console.log(id);
	console.log(con);
	
	Swal.fire({
  title: 'Esta seguro que quiere elimnar este usuario??',
  text: "No podra volver atras!!",
  icon: 'warning',
  showCancelButton: true,
  confirmButtonColor: '#3085d6',
  cancelButtonColor: '#d33',
  confirmButtonText: 'Si, quiero eliminarlo!'
}).then((result) => {
  if (result.isConfirmed) {
	ruta=con+"?accion=eliminar&id="+id
	window.setTimeout(function(){window.location.href=ruta},2000);
    Swal.fire(
      'Usuario eliminado!',
      'Base de datos actualizada.',
      
    )
  }
})
}