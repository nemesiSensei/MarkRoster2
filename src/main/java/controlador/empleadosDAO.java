package controlador;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
	public  getters validar(String usuario, String pass) throws SQLException
	{
		getters r=new getters();
		sql="select id_empleados, Usuario, correo,privilegio,Contraseña,estado from empleados where Usuario=? and contraseña=?";
		try {
			con=c.getConnection(); // opening the connection to database 
			ps=con.prepareStatement(sql); // prepare that sentence 
			ps.setString(1,usuario); 
			ps.setString(2,pass);
			rs=ps.executeQuery();
			while(rs.next()) {
				r.setIdempresa(rs.getInt(1));
				r.setNombreusuario(rs.getString(2));
				r.setCorreo(rs.getString(3));				
				r.setPrivilegio(rs.getString(4));
				r.setPass(rs.getString(5));
				r.setEstado(rs.getBoolean(6));
			}
			
			System.out.println("se secontró el usuario");
		} catch (Exception e) {
			System.out.println("no se encontró el usuario"+e.getMessage());
			ps.close();
		}		
		return r;
	}
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
			r.setNombreusuario(rs.getString("usuario"));
			r.setEstado(rs.getBoolean("estado"));
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
	public List ListarUnico(getters r) throws SQLException {
		System.out.println("Ingreso al metodo listar usuario unico");
		List<getters> empleados= new ArrayList<>();
		sql="SELECT * FROM  empleados WHERE id_empleados="+r.getIdempresa() ;
		try {
			con=c.getConnection(); // opening the connection to database 
			ps=con.prepareStatement(sql); // prepare that sentence 			
			ps.executeQuery(sql); // en sentencias select siempre va el executeQuery
			rs=ps.executeQuery();
			// y el execute update va a ser utilizado en sentencias  de insert,update y delete.			
		while (rs.next()) {
			 // se puede usar la posicion de la columna  o el nombre de la columna  que quremos obtener		
			r.setCorreo(rs.getString("correo"));
			r.setIdempresa(rs.getInt("id_empleados"));
			r.setNombreusuario(rs.getString("usuario"));			
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
			r.setNombreusuario(rs.getString("usuario"));
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
	
	public int edit(getters r) throws SQLException {
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



	public int cambiarestado(getters r) throws SQLException {
		System.out.println("Entro a la sentencia preparada  ");
		sql="UPDATE empleados SET estado="+r.isEstado() +" WHERE id_empleados="+r.getIdempresa();
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
		System.out.println("Se Actualizo el estado  ");	
		} 
		catch (Exception e) {
			System.out.print("Error al cambiar  usuario "+e.getMessage());
		}
		return id;
			// TODO: handle exception
		}

	public int cambiarPass(getters r) throws SQLException 
	{
		sql="UPDATE empleados SET Contraseña=? WHERE id_empleados="+r.getIdempresa();		
		try {
			con=c.getConnection(); //Abriendo la conexión a la BD
			ps=con.prepareStatement(sql); //preparar sentencia
			ps.setString(1, r.getPass());			
			System.out.println(ps);
			ps.executeUpdate();//Ejeución de la sentencia	
			ps.close();
			System.out.println("Se cambió la contraseña");			
		}catch(Exception e) {
			System.out.println("Error al cambiar la contraseña" +e.getMessage());
			System.out.println("" +e.getMessage());
		}
		finally {	
			
		}
		return id;//Retorna cantidad de filas afectadas
	}
}

	
