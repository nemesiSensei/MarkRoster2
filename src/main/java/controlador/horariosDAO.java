package controlador;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import horarios.horario;

public class horariosDAO {
	getters r = new getters();
	horario fecha = new horario();
	Connection con;
	ResultSet rs;
	PreparedStatement ps;
	String sql;
	conexion c= new conexion();
	int register;
	int id;
	public int  registrar(getters r) throws SQLException { //  este va a ser el metodo para hacer el registro de horario.
		System.out.println("Entro a la sentencia preparada  ");
		sql="INSERT INTO horario (Hora_de_entrada, Hora_de_salida, Horainicio, horafin, id_empleado) VALUES ('?','?','?','?','?')";
		int total=0;
		try {
			con=c.getConnection(); // opening the connection to database 
			ps=con.prepareStatement(sql); // prepare that sentence 
			ps.setString(1,fecha.fechaactual());
			ps.setString(2, fecha.fechaactual());
			ps.setString(3, fecha.fechaactual());
			ps.setString(4, fecha.fechaactual());
			ps.setInt(5, r.getIdempresa());
			
		
			ps.executeUpdate(sql);
			while(rs.next()) {
			
		       total=(rs.getInt("existentes"));	// aca le estamos asignando a la variable total el valor de existentes			
				
			
			System.out.println("El total de registros son"+total);
		}
		}catch (Exception e) {
			System.out.println("Algo sucedio mal con la validacion de usuarios"+e.getMessage());
			ps.close();
		}		
		return total;
	}
}
	
	
	


