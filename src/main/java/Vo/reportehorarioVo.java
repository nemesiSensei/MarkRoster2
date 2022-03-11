package Vo;

public class reportehorarioVo {
private String usuario,horario_entrada,descripcion_horaentrada,descripcion_horasalida,horario_salida,diferencia; 
public reportehorarioVo(){

}
public String getUsuario() {
	return usuario;
}
public void setUsuario(String usuario) {
	this.usuario = usuario;
}
public String getHorario_entrada() {
	return horario_entrada;
}
public void setHorario_entrada(String horario_entrada) {
	this.horario_entrada = horario_entrada;
}
public String getDescripcion_horaentrada() {
	return descripcion_horaentrada;
}
public void setDescripcion_horaentrada(String descripcion_horaentrada) {
	this.descripcion_horaentrada = descripcion_horaentrada;
}
public String getDescripcion_horasalida() {
	return descripcion_horasalida;
}
public void setDescripcion_horasalida(String descripcion_horasalida) {
	this.descripcion_horasalida = descripcion_horasalida;
}
public String getHorario_salida() {
	return horario_salida;
}
public void setHorario_salida(String horario_salida) {
	this.horario_salida = horario_salida;
}
public String getDiferencia() {
	return diferencia;
}
public void setDiferencia(String diferencia) {
	this.diferencia = diferencia;
}
public reportehorarioVo(String usuario, String horario_entrada, String descripcion_horaentrada,
		String descripcion_horasalida, String horario_salida, String diferencia) {
	super();
	this.usuario = usuario;
	this.horario_entrada = horario_entrada;
	this.descripcion_horaentrada = descripcion_horaentrada;
	this.descripcion_horasalida = descripcion_horasalida;
	this.horario_salida = horario_salida;
	this.diferencia = diferencia;
}


}
