package controlador;

public class getters {
	int idempresa;
	String Nombreusuario;
	int Estado;
	

	public String getNombreusuario() {
		return Nombreusuario;
	}
	public void setNombreusuario(String nombreusuario) {
		Nombreusuario = nombreusuario;
	}
	public int getEstado() {
		return Estado;
	}
	public void setEstado(int estado) {
		Estado = estado;
	}
	public getters(int idempresa, String usuario, String pass, String correo, String privilegio, String mAC, int id_empleados, String Nombreusuario,int Estado) {
		super();
		this.idempresa = idempresa;
		this.usuario = usuario;
		this.pass = pass;
		this.correo = correo;
		this.privilegio = privilegio;
		
		MAC = mAC;
	}
	public int getIdempresa() {
		return idempresa;
	}
	public void setIdempresa(int idempresa) {
		this.idempresa = idempresa;
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
	String usuario,pass,correo,privilegio,MAC;
	public getters() {
		
		
	}
	


}
