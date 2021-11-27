package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
		response.getWriter().append("Served at: ").append(request.getContextPath());
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

	private void validarusuario(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html; charset=iso-8859-1");
		PrintWriter out=response.getWriter();
		try {
			int cantidad=usuarioDao.validarusuario(request.getParameter("usuario")); // Se guarda en una variable porque es mas facil de procesar
			System.out.print("correos encontrados "+cantidad); // esto es para saber cuantos correos ya hay existentes
			if (cantidad!=0) {
				System.out.print("El usuario ya se encuentra registrado "+cantidad); 
				out.println("El usuario ya lo esta usando otra persona ");
				
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
				out.println("El correo ya lo esta usando otra persona ");
				
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
			
			 request.getRequestDispatcher("Editarusuario.jsp") // esto es para especificar adonde quiero enviar los datos de una vista 
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
