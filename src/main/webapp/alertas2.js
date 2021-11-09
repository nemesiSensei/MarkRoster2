function cambiarestado (e,id,es,con){
	e.preventDefault();
	console.log(id);
	console.log(con);
	console.log(es);
	Swal.fire({
	  title: 'Seguro deseas cambiar el estado?',
	  icon: 'warning',
	  showCancelButton: true,
	  confirmButtonColor: '#3085d6',
	  cancelButtonColor: '#d33',
	  confirmButtonText: 'OK, Cambia su estado!',
	  confirmCancelText:'Cancelar'
	  }).then((result) => {
	  if (result.isConfirmed) {
		
		if(es==true)
		{
		ruta=con+"?accion=cambiarestado&id="+id+"&es=false";
		window.setTimeout(function(){window.location.href=ruta},2000);
		}
		else{
		ruta=con+"?accion=cambiarestado&id="+id+"&es=true";
		window.setTimeout(function(){window.location.href=ruta},2000);
		}
	    Swal.fire({
		  position: 'top-end',
		  icon: 'success',
		  title: 'El registro ha sido cambiado',
		  showConfirmButton: false,
		  timer: 1500
		})
 	 
	}
	else{
		Swal.fire(
	      'Cancelado!',
	      'No se cambiará el estado del registro.',
	      'error'
	    );
	}
})
}