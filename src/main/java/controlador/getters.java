package controlador;

public class getters {
<<<<<<< HEAD
	int idempresa;
	String Nombreusuario;
	boolean Estado;
	


	public boolean getEstado() {
		return Estado;
	}
	public void setEstado(boolean estado) {
		Estado = estado;
	}
	public getters(int idempresa, String usuario, String pass, String correo, String privilegio, String mAC, int id_empleados, String Nombreusuario,boolean Estado) {
=======
	 public getters(int idempresa, String nombreusuario, String usuario, String pass, String correo, String privilegio,
			boolean estado) {
>>>>>>> registro
		super();
		this.idempresa = idempresa;
		Nombreusuario = nombreusuario;
		this.usuario = usuario;
		this.pass = pass;
		this.correo = correo;
		this.privilegio = privilegio;
		this.estado = estado;
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
