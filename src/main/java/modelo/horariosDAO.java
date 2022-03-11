package modelo;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import horarios.horario;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import Vo.AgendahorarioVo;
import Vo.Hlist;
import Vo.getters;
import Vo.horarioVo;
import Vo.reportehorarioVo;
import controlador.UsuarioVo;
import controlador.conexion;

public class horariosDAO {
	AgendahorarioVo agendar= new AgendahorarioVo();
	horario fecha = new horario();
	Connection con;
	ResultSet rs;
	
	PreparedStatement ps;
	String sql;
	conexion c= new conexion();
	int register;
	int id;
	horarioVo hv= new horarioVo();
	AgendahorarioVo agenda = new AgendahorarioVo();
	getters r = new getters();
	Hlist h = new Hlist();
	reportehorarioVo reporte = new reportehorarioVo();
	public List reportehorario () throws SQLException {
		System.out.println("Ingreso al metodo listar usuarios");
		List<reportehorarioVo> reportehorarioVo= new ArrayList<>();
		sql="SELECT usuario, horario_entrada, Horario_entrada.Descripcion, Horario_entrada.diferencia, Horario_salida, hora_salida.Descripcion from empleados INNER JOIN Horario_entrada on Horario_entrada.id_empleados=empleados.id_empleados INNER JOIN hora_salida on hora_salida.id_empleado=empleados.id_empleados;";
		try {
			con=c.getConnection(); // opening the connection to database 
			ps=con.prepareStatement(sql); // prepare that sentence 
			ps.executeQuery(sql); // en sentencias select siempre va el executeQuery
			rs=ps.executeQuery();
			
			
			// y el execute update va a ser utilizado en sentencias  de insert,update y delete.
			
		while (rs.next()) {
			reportehorarioVo reporte = new reportehorarioVo();
			reporte.setUsuario(rs.getString(1));
			reporte.setHorario_entrada(rs.getString(2));
			reporte.setDescripcion_horaentrada(rs.getString(3));
			reporte.setDiferencia(rs.getString(4));
			reporte.setHorario_salida(rs.getString(5));
			reporte.setDescripcion_horasalida(rs.getString(6));
			
			
	
		
		
			
			
			
			// aca lo que se esta haciendo es que,  accedemos al objeto getter, lo cual nos llleva a sus atributos (get y setters de la tabla empleados)
			
			
			
			 // se puede usar la posicion de la columna  o el nombre de la columna  que quremos obtener
			reportehorarioVo.add(reporte);
			
		
			System.out.println("Se hizo la consulta en listarturno "+""+h.getIdempleado()+""+h.getUsuario()+""+h.getHorario_entrada_turno());
		}

			
			
		} catch (Exception e) {
			System.out.println("Consulta no exitosa "+e.getMessage());
			
		}
		finally {
			
		}
		
		return reportehorarioVo;
			
		}
	
	
	public int editturno(Hlist h) throws SQLException {
		sql="UPDATE turno SET Horario_entrada_turno = ?, Hora_salida_turno= ? WHERE idempleado="+h.getIdempleado();
		
		try {
			con=c.getConnection(); //Abriendo la conexión a la BD
			ps=con.prepareStatement(sql); //preparar sentencia
			ps.setString(1, h.getHorario_entrada_turno());
			ps.setString(2, h.getHora_salida_turno());
			
			
			System.out.println(ps);
			ps.executeUpdate();//Ejeución de la sentencia	
			ps.close();
			System.out.println("Se cambió el horario");			
		}catch(Exception e) {
			System.out.println("Error al cambiar el horario" +e.getMessage());
		}
		finally {			
		}
		return id;//Retorna cantidad de filas afectadas
	}
	
	public Hlist consulta(int id ) throws SQLException {
		Hlist h = new Hlist();
		sql="SELECT * FROM  turno WHERE idempleado=" +id;
		System.out.print("Entro a la consulta de editar horarios");
		try {
			con=c.getConnection(); // opening the connection to database 
			ps=con.prepareStatement(sql); // prepare that sentence 
			ps.executeQuery(sql); // en sentencias select siempre va el executeQuery
			rs=ps.executeQuery();
			System.out.print("Se ejecuto la consulta");
			// y el execute update va a ser utilizado en sentencias  de insert,update y delete.
			
		while (rs.next()) {
			
			
			h.setHorario_entrada_turno(rs.getString("Horario_entrada_turno"));
			h.setHora_salida_turno(rs.getString("Hora_salida_turno"));
			h.setIdempleado(rs.getInt("idempleado"));
			System.out.print("La hora de entrada de este usuario es: "+h.getHorario_entrada_turno());
			
			System.out.print("Entro al ciclo while");
		}
		} catch (Exception e) {
			System.out.println("Consulta no exitosa "+e.getMessage());
			ps.close();
		}
		finally {			
		}		
		return h;			
		}
	
	public int  registrar_hora_inicio(horarioVo hv) throws SQLException { //  este va a ser el metodo para hacer el registro de horario.
		System.out.println("Entro a la sentencia preparada  ");
		
		
		
		
		try {
			con=c.getConnection(); // opening the connection to database 
			
			 CallableStatement cst = con.prepareCall("{call sp_horavalida (?)}");
			 cst.setInt(1, hv.getIdempleados().getIdempresa());
			 cst.execute();
		
			
			System.out.println("Se logro ejecutar el procedimiento!!!! ");
			
			
		
		}catch (Exception e) { 
			System.out.println("Algo sucedio mal  al registrar la fecha actual"+e.getMessage());
			
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
		
		
		
		
		try {
			con=c.getConnection(); // opening the connection to database 
			

			 CallableStatement cst = con.prepareCall("{call sp_horasalida (?)}");
			 cst.setInt(1, hv.getIdempleados().getIdempresa());
			 cst.execute();
		
			
			System.out.println("Se logro ejecutar el procedimiento!!!! ");
			
			
			System.out.println("La fecha actual es: "+horario.horaactual());
			
			
		
		}catch (Exception e) { 
			System.out.println("Algo sucedio mal  al registrar la fecha actual"+e.getMessage());
			
		}		
		return register;
	}
	public int  turno(AgendahorarioVo agenda) throws SQLException { //  este va a ser el metodo para hacer el registro de horario.
		System.out.println("Entro a la sentencia preparada  ");
		
		sql="INSERT INTO turno (Horario_entrada_turno, Hora_salida_turno, idempleado) VALUES (?,?,?);";
		
		
		try {
			con=c.getConnection(); // opening the connection to database 
			ps=con.prepareStatement(sql); // prepare that sentence 
			ps.setString(1, agenda.getHorario_entrada_turno());
			ps.setString(2, agenda.getHora_salida_turno());
			ps.setInt(3, agenda.getIdturno());
		
			System.out.println("Se logro  asignar el horario");
			ps.executeUpdate();
			System.out.print(ps);
		
			
		
			
			
		
		}catch (Exception e) { 
			System.out.println("Algo sucedio mal  al registrar la fecha actual"+e.getMessage());
			ps.close();
		}		
		return register;
	}
	public List Listarturno () throws SQLException {
		System.out.println("Ingreso al metodo listar usuarios");
		List<Hlist> hlist= new ArrayList<>();
		sql="SELECT * from empleados INNER JOIN turno on empleados.id_empleados=turno.idempleado;";
		try {
			con=c.getConnection(); // opening the connection to database 
			ps=con.prepareStatement(sql); // prepare that sentence 
			ps.executeQuery(sql); // en sentencias select siempre va el executeQuery
			rs=ps.executeQuery();
			
			
			// y el execute update va a ser utilizado en sentencias  de insert,update y delete.
			
		while (rs.next()) {
			Hlist h = new Hlist();
			h.setIdempleado(rs.getInt(1));
			h.setUsuario(rs.getString(3));
			h.setHorario_entrada_turno(rs.getString(14));
			h.setHora_salida_turno(rs.getString(15));
		
		
			
			
			
			// aca lo que se esta haciendo es que,  accedemos al objeto getter, lo cual nos llleva a sus atributos (get y setters de la tabla empleados)
			
			
			
			 // se puede usar la posicion de la columna  o el nombre de la columna  que quremos obtener
			hlist.add(h);
			
		
			System.out.println("Se hizo la consulta en listarturno "+""+h.getIdempleado()+""+h.getUsuario()+""+h.getHorario_entrada_turno());
		}

			
			
		} catch (Exception e) {
			System.out.println("Consulta no exitosa "+e.getMessage());
			
		}
		finally {
			
		}
		
		return hlist;
			
		}
	
	
	}



	

	
	
	


