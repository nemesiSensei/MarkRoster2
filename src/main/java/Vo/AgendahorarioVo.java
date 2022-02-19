package Vo;

public class AgendahorarioVo {
	private int idturno;
	private String  Horario_entrada_turno,Hora_salida_turno;
	
	public AgendahorarioVo(){
		
	}

	public AgendahorarioVo(int idturno, String horario_entrada_turno, String hora_salida_turno) {
		super();
		this.idturno = idturno;
		Horario_entrada_turno = horario_entrada_turno;
		Hora_salida_turno = hora_salida_turno;
	}

	public int getIdturno() {
		return idturno;
	}

	public void setIdturno(int idturno) {
		this.idturno = idturno;
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
	
	

}
