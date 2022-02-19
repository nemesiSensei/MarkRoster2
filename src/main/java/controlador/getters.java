package controlador;

import java.sql.Timestamp;

public class getters {

	java.util.Date dt = new java.util.Date();

	java.text.SimpleDateFormat sdf = 
	     new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

	String currentTime = sdf.format(dt);

	private String currentime;
	


	
	



	public getters(int idempresa, String nombreusuario, String usuario, String pass, String correo, String privilegio,
			boolean estado, String currentime) {

		super();
		this.idempresa = idempresa;
		this.Nombreusuario = nombreusuario;
		this.usuario = usuario;
		this.pass = pass;
		this.correo = correo;
		this.privilegio = privilegio;
		this.estado = estado;
		this.currentime = currentime;
	}



	public int getIdempresa() {
		return idempresa;
	}



	public void setIdempresa(int idempresa) {
		this.idempresa = idempresa;
	}



	public String getNombreusuario() {
		return Nombreusuario;
	}



	public void setNombreusuario(String nombreusuario) {
		Nombreusuario = nombreusuario;
	}



	public String getUsuario() {
		return usuario;
	}



	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}



	public String getPass() {
		return pass;
	}



	public void setPass(String pass) {
		this.pass = pass;
	}



	public String getCorreo() {
		return correo;
	}



	public void setCorreo(String correo) {
		this.correo = correo;
	}



	public String getPrivilegio() {
		return privilegio;
	}



	public void setPrivilegio(String privilegio) {
		this.privilegio = privilegio;
	}



	public boolean isEstado() {
		return estado;
	}
	


	public void setEstado(boolean estado) {
		this.estado = estado;
	}



	private int idempresa;
	 private String Nombreusuario,usuario,pass,correo,privilegio;
	 private boolean estado;
	 
	

public getters(){

}
}
