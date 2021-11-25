package controlador;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UsuarioDao {
	Connection con;
	ResultSet rs;
	PreparedStatement ps;
	String sql;
	conexion c= new conexion();
	int register;
	int id;
	public List Listar() throws SQLException {
		System.out.println("Ingreso al metodo listar usuarios");
		List<UsuarioVo> usuarios= new ArrayList<>();
		sql="SELECT  id_empleados, nombre_empresa, usuario,correo,ID_cargo,EPS,nombre,cedula,privilegio,telefono,estado FROM empleados inner JOIN empresa on empleados.id_empresa=empresa.id_empresa ";
		try {
			con=c.getConnection(); // opening the connection to database 
			ps=con.prepareStatement(sql); // prepare that sentence 
			ps.executeQuery(sql); // en sentencias select siempre va el executeQuery
			rs=ps.executeQuery();
			
			
			// y el execute update va a ser utilizado en sentencias  de insert,update y delete.
			
		while (rs.next()) {
		
			UsuarioVo u = new UsuarioVo();
			
			
			// aca lo que se esta haciendo es que,  accedemos al objeto getter, lo cual nos llleva a sus atributos (get y setters de la tabla empleados)
			u.setId_empleados(rs.getString(1));
			u.setNombre_empresa(rs.getString(2));
			u.setUsuario(rs.getString(3));
			u.setCorreo(rs.getString(4));
			u.setCargo(rs.getString(5));
			u.setEPS(rs.getString(6));
			u.setNombre(rs.getString(7));
			u.setCedula(rs.getString(8));
			u.setPrivilegio(rs.getString(9));
			u.setTelefono(rs.getString(10));
			u.setEstado(rs.getString(11));
			 // se puede usar la posicion de la columna  o el nombre de la columna  que quremos obtener
			usuarios.add(u);
			
		
			System.out.println("Se hizo la consulta ");
		}

			
			
		} catch (Exception e) {
			System.out.println("Consulta no exitosa "+e.getMessage());
			ps.close();
			
		}
		finally {
			
		}
		
		return usuarios;
			
		}

	public int editunico(getters r) throws SQLException {
		sql="UPDATE empleados SET correo=?,  privilegio=?, usuario=? WHERE id_empleados="+r.getIdempresa();
		
		try {
			con=c.getConnection(); //Abriendo la conexión a la BD
			ps=con.prepareStatement(sql); //preparar sentencia
			ps.setString(1, r.getCorreo());
			ps.setString(2, r.getPrivilegio());
			ps.setString(3, r.getNombreusuario());
			System.out.println(ps);
			ps.executeUpdate();//Ejeución de la sentencia	
			ps.close();
			System.out.println("Se cambió el rol");			
		}catch(Exception e) {
			System.out.println("Error al cambiar el usuario" +e.getMessage());
		}
		finally {			
		}
		return id;//Retorna cantidad de filas afectadas
	}

}
