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
		System.out.println("Ingreso al metodo listar usuarios");
		List<getters> empleados= new ArrayList<>();
		sql="SELECT * FROM  empleados";
		try {
			con=c.getConnection(); // opening the connection to database 
			ps=con.prepareStatement(sql); // prepare that sentence 
			ps.executeQuery(sql); // en sentencias select siempre va el executeQuery
			rs=ps.executeQuery();
			
			
			// y el execute update va a ser utilizado en sentencias  de insert,update y delete.
			
		while (rs.next()) {
			
			getters r = new getters();
			 // se puede usar la posicion de la columna  o el nombre de la columna  que quremos obtener
		
			r.setCorreo(rs.getString("correo"));
			r.setPass(rs.getString("Contraseña"));
			r.setPrivilegio(rs.getString("privilegio"));
			r.setIdempresa(rs.getInt("id_empleados"));

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
	public int eliminar(int id) throws SQLException {
		System.out.println("Entro a la sentencia preparada  ");
		sql="delete from empleados WHERE  id_empleados="+id;
		try {
			con=c.getConnection(); // opening the connection to database 
			ps=con.prepareStatement(sql); // prepare that sentence 
		
			System.out.println(ps);
			
				
				
			
			
		
			
			
			
			
			ps.executeUpdate(sql); // en sentencias select siempre va el executeQuery 
			System.out.print("Ya hizo la consulta  ");
			// Solo las consultas se guardan en un resulset 
			System.out.println("Entro a la consulta  ");
			
			// y el execute update va a ser utilizado en sentencias  de insert,update y delete.                                                                                      
		// El siguiente paso es asignar los valores de este interrogante 
	
		System.out.println("Se elimino  un usuario ");
	
			
		
		} 
		catch (Exception e) {
			System.out.print("Error al eliminar usuario ");
		}
		return id;
			// TODO: handle exception
		}	
	public getters consulta(int id ) throws SQLException {
		getters r = new getters();
		sql="SELECT * FROM  empleados WHERE id_empleados=" +id;
		System.out.print("Entro a la consulta de editar");
		try {
			con=c.getConnection(); // opening the connection to database 
			ps=con.prepareStatement(sql); // prepare that sentence 
			ps.executeQuery(sql); // en sentencias select siempre va el executeQuery
			rs=ps.executeQuery();
			System.out.print("Se ejecuto la consulta");
			
			
			
			// y el execute update va a ser utilizado en sentencias  de insert,update y delete.
			
		while (rs.next()) {
			r.setCorreo(rs.getString("correo"));
			r.setPass(rs.getString("Contraseña"));
			r.setPrivilegio(rs.getString("privilegio"));
			r.setIdempresa(rs.getInt("id_empleados"));
			System.out.print("Entro al ciclo while");
			
		
			
			
			
			
		
			
			
		}

			
			
		} catch (Exception e) {
			System.out.println("Consulta no exitosa "+e.getMessage());
			ps.close();
			
		}
		finally {
			
		}
		
		return r;
			
		}



	
	

}
