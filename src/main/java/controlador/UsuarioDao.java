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
		sql="SELECT  id_empleados, nombre_empresa, usuario,correo,nombre,privilegio,estado FROM empleados inner JOIN empresa on empleados.id_empresa=empresa.id_empresa ";
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
			u.setNombre(rs.getString(5));
			
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
	
}
