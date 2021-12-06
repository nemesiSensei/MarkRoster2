package controlador;

public class horarioVo {
	private getters idempleados;
	private String fechainicio,fechafin,fechaentrada,fechasalida,opciones;
	
	

	public getters getIdempleados() {
		return idempleados;
	}





	public void setIdempleados(getters idempleados) {
		this.idempleados = idempleados;
	}





	public String getFechainicio() {
		return fechainicio;
	}





	public void setFechainicio(String fechainicio) {
		this.fechainicio = fechainicio;
	}





	public String getFechafin() {
		return fechafin;
	}





	public void setFechafin(String fechafin) {
		this.fechafin = fechafin;
	}





	public String getFechaentrada() {
		return fechaentrada;
	}





	public void setFechaentrada(String fechaentrada) {
		this.fechaentrada = fechaentrada;
	}





	public String getFechasalida() {
		return fechasalida;
	}





	public void setFechasalida(String fechasalida) {
		this.fechasalida = fechasalida;
	}




	


	public horarioVo(getters idempleados, String fechainicio, String fechafin, String fechaentrada,
			String fechasalida, String opciones) {
		super();
		this.idempleados = idempleados;
		this.fechainicio = fechainicio;
		this.fechafin = fechafin;
		this.fechaentrada = fechaentrada;
		this.fechasalida = fechasalida;
		this.opciones =opciones;
		
	}





	public String getOpciones() {
		return opciones;
	}





	public void setOpciones(String opciones) {
		this.opciones = opciones;
	}





	public horarioVo() {
		
	}






	

}
