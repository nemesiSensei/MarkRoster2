package controlador;

public class UsuarioVo {
	 private int matricula_mercantil;
	 private String nombre,tipo,direccion,razon_social,representante_legal,invima,entidades_del_gobierno,convenios,id_empresa;
	private getters gettersempresa;
	public UsuarioVo() {
		
	
}
	public UsuarioVo(String id_empresa, int matricula_mercantil, String nombre, String tipo, String direccion,
			String razon_social, String representante_legal, String invima, String entidades_del_gobierno,
			String convenios, getters gettersempresa) {
		super();
		this.id_empresa = id_empresa;
		this.matricula_mercantil = matricula_mercantil;
		this.nombre = nombre;
		this.tipo = tipo;
		this.direccion = direccion;
		this.razon_social = razon_social;
		this.representante_legal = representante_legal;
		this.invima = invima;
		this.entidades_del_gobierno = entidades_del_gobierno;
		this.convenios = convenios;
		this.gettersempresa = gettersempresa;
	}
	public String getId_empresa() {
		return id_empresa;
	}
	public void setId_empresa(String id_empresa) {
		this.id_empresa = id_empresa;
	}
	public int getMatricula_mercantil() {
		return matricula_mercantil;
	}
	public void setMatricula_mercantil(int matricula_mercantil) {
		this.matricula_mercantil = matricula_mercantil;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getTipo() {
		return tipo;
	}
	public void setTipo(String tipo) {
		this.tipo = tipo;
	}
	public String getDireccion() {
		return direccion;
	}
	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}
	public String getRazon_social() {
		return razon_social;
	}
	public void setRazon_social(String razon_social) {
		this.razon_social = razon_social;
	}
	public String getRepresentante_legal() {
		return representante_legal;
	}
	public void setRepresentante_legal(String representante_legal) {
		this.representante_legal = representante_legal;
	}
	public String getInvima() {
		return invima;
	}
	public void setInvima(String invima) {
		this.invima = invima;
	}
	public String getEntidades_del_gobierno() {
		return entidades_del_gobierno;
	}
	public void setEntidades_del_gobierno(String entidades_del_gobierno) {
		this.entidades_del_gobierno = entidades_del_gobierno;
	}
	public String getConvenios() {
		return convenios;
	}
	public void setConvenios(String convenios) {
		this.convenios = convenios;
	}
	public getters getGettersempresa() {
		return gettersempresa;
	}
	public void setGettersempresa(getters gettersempresa) {
		this.gettersempresa = gettersempresa;
	}
	
	
}
