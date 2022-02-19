package controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Vo.AgendahorarioVo;
import Vo.UsuarioVo;
import Vo.getters;
import Vo.horarioVo;
import modelo.UsuarioDao;
import modelo.empleadosDAO;
import modelo.horariosDAO;

/**
 * Servlet implementation class HorarioControlador
 */
@WebServlet("/HorarioControlador")
public class HorarioController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	UsuarioVo usuario = new UsuarioVo();
	UsuarioDao usuarioDao = new UsuarioDao();
	getters r = new getters();
	empleadosDAO empleados = new empleadosDAO();
	horariosDAO horarios = new horariosDAO();
	horarioVo hv = new horarioVo();
	AgendahorarioVo agenda = new AgendahorarioVo();
    
    public HorarioController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String accion =request.getParameter("accion");
		System.out.print("Entro al controlador de horarios  esta vez  ");
		try {
			if (accion!=null) {
				System.out.println("Entro al switch");
				switch (accion) {
				case "Agendarhorarios":
					System.out.println("Entro al  caso Listarusuarios");
					
					
					Agendarhorarios(request,response);
					
					break;
					/*case "editunico":
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
				
					case "eliminar":
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
	private void Agendarhorarios(HttpServletRequest request, HttpServletResponse response) {
		if (request.getParameter("turno") !=null) {
			agenda.setIdturno(Integer.parseInt(request.getParameter("turno")));
			System.out.println("LLego el id");
			
			agenda.setHorario_entrada_turno(request.getParameter("Hora-entrada"));
			agenda.setHora_salida_turno(request.getParameter("Hora-salida"));
		}
		
		
		try {
			 System.out.print(" Entro al metodo Registrar "+request.getParameter("nombre")+request.getParameter("correo")+request.getParameter("apellido")+request.getParameter("contraseña"));
			 
			 horarios.turno(agenda);
			 response.sendRedirect("index.jsp");
			 
		
		
		 
	     
	}
		 catch (Exception e) {
			
			 System.out.print(" no Entro al metodo Registrar ");
			
	}
	}


	
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
