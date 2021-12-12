package modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import horarios.horario;
import java.util.Calendar;

import Vo.getters;
import Vo.horarioVo;
import controlador.conexion;

public class horariosDAO {
	
	horario fecha = new horario();
	Connection con;
	ResultSet rs;
	
	PreparedStatement ps;
	String sql;
	conexion c= new conexion();
	int register;
	int id;
	horarioVo hv= new horarioVo();
	getters r = new getters();
	
	
	
	public int  registrar_hora_inicio(horarioVo hv) throws SQLException { //  este va a ser el metodo para hacer el registro de horario.
		System.out.println("Entro a la sentencia preparada  ");
		
		sql="INSERT INTO horario_entrada (Horario_entrada, id_empleados) VALUES (?,?)";
		
		
		try {
			con=c.getConnection(); // opening the connection to database 
			ps=con.prepareStatement(sql); // prepare that sentence 
			ps.setString(1,hv.getFechaentrada());
			ps.setInt(2,hv.getIdempleados().getIdempresa());
			System.out.println("Se logro registrar el horario, uwuuuuuuuuuuuuu");
			ps.executeUpdate();
		
			
			System.out.println("La fecha actual es: "+horario.horaactual());
			
			
		
		}catch (Exception e) { 
			System.out.println("Algo sucedio mal  al registrar la fecha actual"+e.getMessage());
			ps.close();
		}		
		return register;
	}
	public int  registrar_hora_salidaAlmuerzo(horarioVo hv) throws SQLException { //  este va a ser el metodo para hacer el registro de horario.
		System.out.println("Entro a la sentencia preparada  ");
		
		sql="INSERT INTO salida_almuerzo (id_empleado, fin_almuerzo) VALUES (?,?)";
		
		
		try {
			con=c.getConnection(); // opening the connection to database 
			ps=con.prepareStatement(sql); // prepare that sentence 
			ps.setString(2,hv.getFechasalida());
			ps.setInt(1,hv.getIdempleados().getIdempresa());
			System.out.println("Se logro registrar el horario, uwuuuuuuuuuuuuu");
			ps.executeUpdate();
		
			
			System.out.println("La fecha actual es: "+horario.horaactual());
			
			
		
		}catch (Exception e) { 
			System.out.println("Algo sucedio mal  al registrar la fecha actual"+e.getMessage());
			ps.close();
		}		
		return register;
	}
	public int  registrarinicio_almuerzo(horarioVo hv) throws SQLException { //  este va a ser el metodo para hacer el registro de horario.
		System.out.println("Entro a la sentencia preparada  ");
		
		sql="INSERT INTO inicio_almuerzo (id_empleado, id_inicio) VALUES (?,?);";
		
		
		try {
			con=c.getConnection(); // opening the connection to database 
			ps=con.prepareStatement(sql); // prepare that sentence 
			ps.setString(2,hv.getFechainicio());
			ps.setInt(1,hv.getIdempleados().getIdempresa());
			System.out.println("Se logro registrar el horario, uwuuuuuuuuuuuuu");
			ps.executeUpdate();
		
			
			System.out.println("La fecha actual es: "+horario.horaactual());
			
			
		
		}catch (Exception e) { 
			System.out.println("Algo sucedio mal  al registrar la fecha actual"+e.getMessage());
			ps.close();
		}		
		return register;
	}
	public int  registrarsalida_laboral(horarioVo hv) throws SQLException { //  este va a ser el metodo para hacer el registro de horario.
		System.out.println("Entro a la sentencia preparada  ");
		
		sql="INSERT INTO hora_salida ( id_empleado, Horario_salida) VALUES (?,?);";
		
		
		try {
			con=c.getConnection(); // opening the connection to database 
			ps=con.prepareStatement(sql); // prepare that sentence 
			ps.setString(2,hv.getFechafin());
			ps.setInt(1,hv.getIdempleados().getIdempresa());
			System.out.println("Se logro registrar el horario, uwuuuuuuuuuuuuu");
			ps.executeUpdate();
			System.out.print(ps);
		
			
			System.out.println("La fecha actual es: "+horario.horaactual());
			
			
		
		}catch (Exception e) { 
			System.out.println("Algo sucedio mal  al registrar la fecha actual"+e.getMessage());
			ps.close();
		}		
		return register;
	}



	
}
	
	
	


