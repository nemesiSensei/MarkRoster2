package controlador;

public class UsuarioVo {
	String   id_empleados, nombre_empresa, usuario,correo,cedula,cargo,EPS,telefono,nombre,privilegio,estado;
	public UsuarioVo(String id_empleados, String nombre_empresa, String usuario, String correo, String cedula, String cargo, String EPS, String telefono, String nombre,
			String privilegio, String estado) {
		super();
		this.id_empleados = id_empleados;
		this.nombre_empresa = nombre_empresa;
		this.usuario = usuario;
		this.correo = correo;
		this.cedula = cedula;
		this.cargo = cargo;
		this.EPS = EPS;
		this.telefono = telefono;
		this.nombre = nombre;
		this.privilegio = privilegio;
		this.estado = estado;
	}
	public String getCedula() {
		return cedula;
	}
	public void setCedula(String cedula) {
		this.cedula = cedula;
	}
	public String getCargo() {
		return cargo;
	}
	public void setCargo(String cargo) {
		this.cargo = cargo;
	}
	public String getEPS() {
		return EPS;
	}
	public void setEPS(String ePS) {
		EPS = ePS;
	}
	public String getTelefono() {
		return telefono;
	}
	public void setTelefono(String telefono) {
		this.telefono = telefono;
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

