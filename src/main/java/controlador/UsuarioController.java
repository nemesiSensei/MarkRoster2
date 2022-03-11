package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Vo.AgendahorarioVo;
import Vo.Hlist;
import Vo.UsuarioVo;
import Vo.getters;
import Vo.horarioVo;
import Vo.reportehorarioVo;
import horarios.horario;
import modelo.UsuarioDao;
import modelo.empleadosDAO;
import modelo.horariosDAO;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.data.JRBeanArrayDataSource;
import net.sf.jasperreports.engine.util.JRLoader;

/**
 * Servlet implementation class UsuarioController
 */
@WebServlet("/UsuarioController")
public class UsuarioController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	UsuarioVo usuario = new UsuarioVo();
	UsuarioDao usuarioDao = new UsuarioDao();
	getters r = new getters();
	empleadosDAO empleados = new empleadosDAO();
	horariosDAO horarios = new horariosDAO();
	horarioVo hv = new horarioVo();
	AgendahorarioVo agenda = new AgendahorarioVo();
	reportehorarioVo reportehorario = new reportehorarioVo();
	
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UsuarioController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	//	response.getWriter().append("Served at: ").append(request.getContextPath());
		String accion =request.getParameter("accion");
		System.out.print("Entro al controlador esta vez  ");
		
			
			try {
				
				if (accion!=null) {
					System.out.println("Entro al switch");
					switch (accion) {
					case "listar":
						System.out.println("Entro al  caso Listarusuarios");
						
						
						listar(request,response);
						
						break;
					case "editunico":
						System.out.println("");
						editunico(request,response);
						break;
					case "verunico":
						verunico(request,response);
						break;
					case "validarcorreo":
					validarcorreo(request,response);
					break;
					case "validarusuario":
						validarusuario(request,response);
						break;
					case "Registrarhorario":
						Registrarhorario(request,response);
						
						break;
						
					case "Reportes":
						Reportes(request,response);
						System.out.print("Entro  al  caso de metodo de reportes");
						break;
					case "Listarh":
						Listarh(request,response);
						System.out.print("Entro  al metodo listarh"); 
						break;
					case "Agendarhorarios":
						System.out.println("Entro al  caso Listarusuarios");
						
						
						
						Agendarhorarios(request,response);
						
						break;
					case "reportehorario":
						reportehorario(request,response);
						break;
					case "turno":
						System.out.println("Entro al  caso de listarturnos");
						
						
						turno(request,response);
						
						break;
					
					
						
					
						
					
						/*case "eliminar":
						System.out.println("Se entro al metodo eliminar");
						eliminar(request,response);
					case "ver":
						System.out.println("Entro al metodo consultar");
						ver(request,response);
						break;
					case "edit":
						System.out.print("Entro al metodo editar");
						edit(request,response);
						break;
					case "cambiarestado":
						System.out.print("Entro al meto cambiar estado");
						cambiarestado(request,response);*/
					
				
					default:
						response.sendRedirect("login.jsp");
						break;
					}
				}
				else {
					response.sendRedirect("login.jsp");
				}
				
			} catch (Exception e) {
				
			}
	}


	
	

	
	


	

	private void reportehorario(HttpServletRequest request, HttpServletResponse response) {
		try {
			System.out.print("Entro al metodo reportehorario ");
			 List reportehorario =horarios.reportehorario();
			 
				 request.setAttribute("reporte", reportehorario);// esto es para enviar los resultados de la busqueda
				 this.Listarh(request, response);
				 
			
				 request.getRequestDispatcher("reportehorario.jsp") // esto es para especificar adonde quiero enviar los datos de una vista 
				.forward(request, response);
				
				 System.out.print("ejecuto el metodo reportehorario");
			 
			
		} catch (Exception e) {
			System.out.println("error"+e);
		}
		finally {
			}
		
		
	}

	private void turno(HttpServletRequest request, HttpServletResponse response) {
	try {
	System.out.print("Entro al metodo listarh ");
	 List hlist =horarios.Listarturno();
	 
		 request.setAttribute("horarios", hlist);// esto es para enviar los resultados de la busqueda
		 this.Listarh(request, response);
		 
	
		 request.getRequestDispatcher("verhorarios.jsp") // esto es para especificar adonde quiero enviar los datos de una vista 
		.forward(request, response);
		
		 System.out.print("ejecuto el listar h");
	 
	
} catch (Exception e) {
	System.out.println("error"+e);
}
finally {
	}
}
		
	

	private void Agendarhorarios(HttpServletRequest request, HttpServletResponse response) {
		if (request.getParameter("turno") !=null) {
			agenda.setIdturno(Integer.parseInt(request.getParameter("turno")));
			System.out.println("LLego el id");
			
			agenda.setHorario_entrada_turno(request.getParameter("Hora-entrada"));
			agenda.setHora_salida_turno(request.getParameter("Hora-salida"));
		}
		
		
		try {
			 System.out.print(" Entro al metodo Registrar "+request.getParameter("turno")+request.getParameter("Hora-entrada")     
			 +request.getParameter("Hora-salida"));
			 
			 horarios.turno(agenda);
			 response.sendRedirect("UsuarioController?accion=turno");
			 
		
		
		 
	     
	}
		
		 catch (Exception e) {
			
			 System.out.print(" no Entro al metodo Registrar ");
			
	}
	}

	

	private void Listarh(HttpServletRequest request, HttpServletResponse response) {
		try {
			System.out.print("Entro al metodo listarusuarios o empleados ");
			 List empleados1 =empleados.Listarusuarios();
			
			 
				 request.setAttribute("usuarios", empleados1);// esto es para enviar los resultados de la busqueda		
				 request.getRequestDispatcher("verhorarios.jsp") // esto es para especificar adonde quiero enviar los datos de una vista 
				.forward(request, response);
				 
			 
			
		} catch (Exception e) {
			System.out.println("error"+e);
		}
		finally {
			}
		}
	
		
		
		
		
	

	private void Reportes(HttpServletRequest request, HttpServletResponse response) throws IOException {
		System.out.print("Entro al metodo de reportes");
		ServletOutputStream out = response.getOutputStream();
		
		try {
			System.out.print(" Entro al try");
		    java.io.InputStream logo = this.getServletConfig() // asi se llama el objeto 
                    .getServletContext()
                    .getResourceAsStream("media/imagenes/MarkRosterlogo.jpg"); // esta es la ruta del recurso que quiero vincular
			java.io.InputStream reporteUsuario = this.getServletConfig()
                    .getServletContext()
                    .getResourceAsStream("Blank_A4_1.jasper"); // aca le esto diciendo la ruta donde esta el reporte 
			
	//Validar que no vengan vacios
			  if (logo != null && reporteUsuario != null) {
				  System.out.print("LLego la imagen y el repoprte");
	                //Crear lista de la clase Vo para guardar resultado de la consulta
	                List<getters> reporteUsuario1 = new ArrayList<>();
	                reporteUsuario1=empleados.Listarusuarios(); // aca estamos guardando los resultados del metodo listarusuarios en la clase dao
	                JasperReport report = (JasperReport) JRLoader.loadObject(reporteUsuario); // n esye archivo se va a cargar la informacion
	                JRBeanArrayDataSource dc = new JRBeanArrayDataSource(reporteUsuario1.toArray()); // este es el dataset
	               
	               
					Map<String, Object> parameters = new HashMap();
	                parameters.put("ds", dc);
	                parameters.put("imagen", logo);
	                //Formateamos la salida del reporte
	                response.setContentType("application/pdf");
	                //Para abrir el reporte en otra pestaña
	                response.addHeader("Content-disposition", "inline; filename=ReporteUsuarios.pdf");
	                //Imprimimos el reporte
	                JasperPrint jasperPrint = JasperFillManager.fillReport(report, parameters, dc);
	                JasperExportManager.exportReportToPdfStream(jasperPrint, out);
	                out.flush();
	                out.close();
	                
			  }
			  else {
	                response.setContentType("text/plain");
	                out.println("no se pudo generar el reporte");
	                out.println("esto puede deberse a que la lista de datos no fue recibida o el "
	                		+ "archivo plantilla del reporte no se ha encontrado");
	                out.println("contacte a soporte");
	            }
			
		} catch (Exception e) {
			response.setContentType("text/plain");
            out.print("ocurrió un error al intentar generar el reporte:" + e.getMessage());
            e.printStackTrace();
		}
		
	}

	private void Registrarhorario(HttpServletRequest request, HttpServletResponse response) {
		
		
		
		
		try {
			
			
			
			
			String opcion=request.getParameter("producto");
			System.out.print("Entro al metodo consultar"+opcion);
			if (request.getParameter("id")!=null  && opcion.equals("salidaAlmuerzo"))  { 
				String horario1 =opcion;
				System.out.print("Entro al metodo  salida almuerzo xD"+horario1);
				hv.setFechaentrada(horario.horaactual());
				hv.setFechafin(horario.horaactual());
				hv.setFechainicio(horario.horaactual());
				hv.setFechasalida(horario.horaactual());
				r.setIdempresa(Integer.parseInt(request.getParameter("id")));
				hv.setIdempleados(r);
				
				
				System.out.print("la opcion seleccionada fue: "+opcion);
				
				
				System.out.print("Entro al metodo  salida almuerzo");
				
				
			
				
				
				
				horarios.registrar_hora_salidaAlmuerzo(hv);
				 
				 response.sendRedirect("index.jsp");
			}
			if (request.getParameter("id")!=null  && opcion.equals("entradaAlmuerzo"))  { 
				String horario1 =opcion;
				System.out.print("la opcion escojida es; "+horario1);
				
				
		
				
				
				hv.setFechaentrada(horario.horaactual());
				hv.setFechafin(horario.horaactual());
				hv.setFechainicio(horario.horaactual());
				hv.setFechasalida(horario.horaactual());
				r.setIdempresa(Integer.parseInt(request.getParameter("id")));
				hv.setIdempleados(r);
				
				
				System.out.print("la opcion seleccionada fue: "+opcion);
				
				
				System.out.print("Entro al metodo  entrada almuerzo ");
				horarios.registrarinicio_almuerzo(hv);
				
				
			
				
				
				
				 System.out.print("Entro al metodo registrar horario en el bloquee if");
				 
				 response.sendRedirect("index.jsp");
				}
			if (request.getParameter("id")!=null  && opcion.equals(""))  { 
				String horario1 =opcion;
				System.out.print("la opcion escojida es; "+horario1);
				
				
		
				
				
				hv.setFechaentrada(horario.horaactual());
				hv.setFechafin(horario.horaactual());
				hv.setFechainicio(horario.horaactual());
				hv.setFechasalida(horario.horaactual());
				r.setIdempresa(Integer.parseInt(request.getParameter("id")));
				hv.setIdempleados(r);
				
				
				System.out.print("la opcion seleccionada fue: "+opcion);
				
				
				System.out.print("Entro al metodo  entrada almuerzo ");
				horarios.registrarinicio_almuerzo(hv);
				
				
			
				
				
				
				 System.out.print("Entro al metodo registrar horario en el bloquee if");
				 
				 response.sendRedirect("index.jsp");
				}
			if (request.getParameter("id")!=null  && opcion.equals("salida_laboral"))  { 
				String horario1 =opcion;
				System.out.print("la opcion escojida es; "+horario1);
				
				
		
				
				
				hv.setFechaentrada(horario.horaactual());
				hv.setFechafin(horario.horaactual());
				hv.setFechainicio(horario.horaactual());
				hv.setFechasalida(horario.horaactual());
				r.setIdempresa(Integer.parseInt(request.getParameter("id")));
				hv.setIdempleados(r);
				
				
				System.out.print("la opcion seleccionada fue: "+opcion);
				
				
				System.out.print("Entro al metodo  entrada almuerzo ");
				horarios.registrarsalida_laboral(hv);
				
				
			
				
				
				
				 System.out.print("Entro al metodo registrar horario en el bloquee if");
				 
				 response.sendRedirect("index.jsp");
				}
		
		
			
		
			
			
			
			if (request.getParameter("id")!=null  && opcion.equals("horaentrada_laboral"))  { 
				String horario1 =opcion;
				System.out.print("la opcion escojida es; "+horario1);
				
				
		
				
				
				hv.setFechaentrada(horario.horaactual());
				hv.setFechafin(horario.horaactual());
				hv.setFechainicio(horario.horaactual());
				hv.setFechasalida(horario.horaactual());
				r.setIdempresa(Integer.parseInt(request.getParameter("id")));
				hv.setIdempleados(r);
				
				
				System.out.print("la opcion seleccionada fue: "+opcion);
				
				
				System.out.print("Entro al metodo consultar");
				
				
			
				
				
				 horarios.registrar_hora_inicio(hv);
				 System.out.print("Entro al metodo registrar horario en el bloquee if");
				 
				 response.sendRedirect("index.jsp");
				}
		
			
				
		
		 
	     
	}
		 catch (Exception e) {
			
			 System.out.print(" no Entro al metodo Registrar "+e.getMessage());
			
	}
		
		
	}
	

	private void validarusuario(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html; charset=iso-8859-1");
		PrintWriter out=response.getWriter();
		try {
			int cantidad=usuarioDao.validarusuario(request.getParameter("usuario")); // Se guarda en una variable porque es mas facil de procesar
			System.out.print("correos encontrados "+cantidad); // esto es para saber cuantos correos ya hay existentes
			if (cantidad!=0) {
				System.out.print("El usuario ya se encuentra registrado "+cantidad); 
				out.println("El usuario no esta disponible ");
				
			}
			else {
				out.println("El usuario esta disponible.");
				
			}
			
			
		
		} catch (Exception e) {
			
		}
		finally {
			}
		}
		// TODO Auto-genera
		
		
		


	private void validarcorreo(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html; charset=iso-8859-1");
		PrintWriter out=response.getWriter();
		try {
			int cantidad=usuarioDao.validarcorreo(request.getParameter("correo")); // Se guarda en una variable porque es mas facil de procesar
			System.out.print("correos encontrados "+cantidad); // esto es para saber cuantos correos ya hay existentes
			if (cantidad!=0) {
				System.out.print("El correo ya se encuentra registrado "+cantidad); 
				out.println("El correo no esta disponible");
				
			}
			else {
				out.println("El correo esta disponible.");
				
			}
			
			
		
		} catch (Exception e) {
			
		}
		finally {
			}
		}
		// TODO Auto-generated method stub
		


	private void verunico(HttpServletRequest request, HttpServletResponse response) {
		try {
			if (request.getParameter("id")!=null) {
				
				System.out.print("Se recibio el id");
			}
			System.out.print("Entro al metodo consultar");
			
			r.setIdempresa(Integer.parseInt(request.getParameter("id")));
		r=empleados.consulta(r.getIdempresa());
			 request.setAttribute("usuarios", r);// esto es para enviar los resultados de la busqueda
			
			 request.getRequestDispatcher("Agendahorario.jsp") // esto es para especificar adonde quiero enviar los datos de una vista 
			.forward(request, response);
			
		} catch (Exception e) {
			
		}
		finally {
			}
		}
		// TODO Auto-generated method stub
		
	

	private void editunico(HttpServletRequest request, HttpServletResponse response) {
		if(request.getParameter("id")!=null && request.getParameter("privilegio") !=null) {
			
			
			r.setIdempresa(Integer.parseInt(request.getParameter("id")));
			r.setPrivilegio(request.getParameter("privilegio"));
			r.setNombreusuario(request.getParameter("usuario"));
			System.out.print("Llego el id y el privilegio");
			
		}
		
		if (request.getParameter("correo") !=null)  {
			r.setCorreo(request.getParameter("correo"));
		
		
			
		}
		
	try {
		usuarioDao.editunico(r);
		
			 List empleados1 =usuarioDao.Listar();
			 request.setAttribute("usuarios", empleados1);// esto es para enviar los resultados de la busqueda		
			 request.getRequestDispatcher("Controlador?accion=ListarUnico") // esto es para especificar adonde quiero enviar los datos de una vista 
			.forward(request, response);			
			
		
		

		
				System.out.print("Se  actualizo el usuario");
		
	} catch (Exception e) {
		System.out.println("No se actualizo el usuario "+e.getMessage());
	}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	private  void listar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			System.out.print("Entro al metodo listarusuarios o empleados ");
			
			
		
			 List usuarios =usuarioDao.Listar();
			 request.setAttribute("usuario", usuarios);// esto es para enviar los resultados de la busqueda
		
			 request.getRequestDispatcher("usuarios.jsp") // esto es para especificar adonde quiero enviar los datos de una vista 
			 .forward(request, response);	
			 
			
			
		} catch (Exception e) {
			
		}
		finally {
			}
		}

}
