package controlador;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import controlador.conexion;
import controlador.getters;

public class empleadosDAO {
	Connection con;
	ResultSet rs;
	PreparedStatement ps;
	String sql;
	conexion c= new conexion();
	int register;
	int id;
	public List Listarusuarios() throws SQLException {
		List<getters> empleados= new ArrayList<>();
		sql="SELECT * FROM  tbusuario";
		try {
			con=c.getConnection(); // opening the connection to database 
			ps=con.prepareStatement(sql); // prepare that sentence 
			ps.executeQuery(sql); // en sentencias select siempre va el executeQuery
			rs=ps.executeQuery();
			
			
			// y el execute update va a ser utilizado en sentencias  de insert,update y delete.
			
		while (rs.next()) {
			
			getters r = new getters();
			 // se puede usar la posicion de la columna  o el nombre de la columna  que quremos obtener
			r.setIdempresa(rs.getInt("id_empleados "));
			r.setCorreo(rs.getString("correo"));
			r.setPass(rs.getString("Contraseña"));
			r.setPrivilegio(rs.getString("privilegio"));
			System.out.println("Se hizo la consulta ");
			
			
			
			empleados.add(r);
			
		
			
			
		}

			
			
		} catch (Exception e) {
			System.out.println("Consulta no exitosa "+e.getMessage());
			ps.close();
			
		}
		finally {
			
		}
		
		return empleados;
			
		}
	
	

}
