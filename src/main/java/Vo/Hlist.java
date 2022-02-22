package Vo;

public class Hlist {
	private String Horario_entrada_turno,Hora_salida_turno,usuario;
	private int idempleado;

public Hlist(){

}
	
	public Hlist(String horario_entrada_turno, String hora_salida_turno, String usuario, int idempleado) {
		super();
		Horario_entrada_turno = horario_entrada_turno;
		Hora_salida_turno = hora_salida_turno;
		this.usuario = usuario;
		this.idempleado = idempleado;
	}
	public String getHorario_entrada_turno() {
		return Horario_entrada_turno;
	}
	public void setHorario_entrada_turno(String horario_entrada_turno) {
		Horario_entrada_turno = horario_entrada_turno;
	}
	public String getHora_salida_turno() {
		return Hora_salida_turno;
	}
	public void setHora_salida_turno(String hora_salida_turno) {
		Hora_salida_turno = hora_salida_turno;
	}
	public String getUsuario() {
		return usuario;
	}
	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}
	public int getIdempleado() {
		return idempleado;
	}
	public void setIdempleado(int idempleado) {
		this.idempleado = idempleado;
	}
	
}
	
	
