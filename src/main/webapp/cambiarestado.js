function cambiarestado (e,id,es,con){
	e.preventDefault();
	console.log(id);
	console.log(con);
	console.log(es);
	
	Swal.fire({
  title: 'Esta seguro  que desea actualizar este usuario??',
 
  icon: 'warning',
  showCancelButton: true,
  confirmButtonColor: '#3085d6',
  cancelButtonColor: '#d33',
  confirmButtonText: 'ok, cambia el usuario!'
}).then((result) => {
  if (result.isConfirmed) {
	if(es==true){
	ruta=con+"?accion=cambiarestado&id="+id+"&es=false";
	window.setTimeout(function(){window.location.href=ruta},2000);
    Swal.fire(
      'Usuario Actualizado!',
      'Base de datos actualizada.'
      
    )
}
  }
else {
	ruta=con+"?accion=cambiarestado&id="+id+"&es=true";
	window.setTimeout(function(){window.location.href=ruta},2000);
	 Swal.fire(
      
      'Usuario actualizado.'

)

	
}




})


	
}