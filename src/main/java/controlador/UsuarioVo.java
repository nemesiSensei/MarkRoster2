package controlador;

public class UsuarioVo {
	String   id_empleados, nombre_empresa, usuario,correo,nombre,privilegio,estado;
	public UsuarioVo(String id_empleados, String nombre_empresa, String usuario, String correo, String nombre,
			String privilegio, String estado) {
		super();
		this.id_empleados = id_empleados;
		this.nombre_empresa = nombre_empresa;
		this.usuario = usuario;
		this.correo = correo;
		this.nombre = nombre;
		this.privilegio = privilegio;
		this.estado = estado;
	}
	public String getId_empleados() {
		return id_empleados;
	}
	public void setId_empleados(String id_empleados) {
		this.id_empleados = id_empleados;
	}
	public String getNombre_empresa() {
		return nombre_empresa;
	}
	public void setNombre_empresa(String nombre_empresa) {
		this.nombre_empresa = nombre_empresa;
	}
	public String getUsuario() {
		return usuario;
	}
	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}
	public String getCorreo() {
		return correo;
	}
	public void setCorreo(String correo) {
		this.correo = correo;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getPrivilegio() {
		return privilegio;
	}
	public void setPrivilegio(String privilegio) {
		this.privilegio = privilegio;
	}
	public String getEstado() {
		return estado;
	}
	public void setEstado(String estado) {
		this.estado = estado;
	}
	public UsuarioVo(){
	
	}
	public void setId_empleados(int parseInt) {
		// TODO Auto-generated method stub
		
	}
	
}

