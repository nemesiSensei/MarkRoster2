package controlador;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Vo.Hlist;
import Vo.getters;
import modelo.empleadosDAO;
import modelo.horariosDAO;

/**
 * Servlet implementation class Controlador
 */
@WebServlet("/Controlador")
public class Controlador extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	getters r = new getters();
	empleadosDAO empleadosDAO = new empleadosDAO();
	Hlist h = new Hlist();
	horariosDAO horarios = new horariosDAO();
	
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Controlador() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// TODO Auto-generated method stub}
		// para las acciones del usuario,  vamos a utilizar el controlador UsuarioController y UsuarioDAO
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String accion =request.getParameter("accion");
		HttpSession sesion=request.getSession();
	System.out.print("Entro al controlador esta vez  ");
	
	
		try {
			if (accion!=null) {
				System.out.println("Entro al switch");
				switch (accion) {
				
				case "abrir login":
					abrirLogin(request,response);
				break;
				case "login":
					r.setUsuario(request.getParameter("usuario"));
					r.setPass(request.getParameter("pass"));
					try {
						r=empleadosDAO.validar(r.getUsuario(), r.getPass());
						if(r.isEstado()==true && r.getNombreusuario()!=null)
							
						{
							
						System.out.println("se encontró usuario activo");	
						sesion.setAttribute("us", r);
						response.sendRedirect("consultaUsuarioAdmin.jsp");
						}
						else if (r.isEstado()==false && r.getNombreusuario()!=null)
						{
							System.out.println("se encontró usuario inactivo");							
							response.sendRedirect("Controlador?accion=abrirLogin&msn=Usuario inactivo, consulte al administrados del sistema");
						}
						else
						{
							System.out.println("usuario no registrado");							
							response.sendRedirect("Controlador?accion=abrirLogin&msn='Datos de acceso erróneos'");
						}
					} catch (Exception e) {
						System.out.println("error"+e);
					}
					break;
					
				case "Listarusuarios":
					System.out.println("Entro al  caso Listarusuarios");
					Listarusuarios(request,response);					
					break;
				case "ListarUnico":
					System.out.println("Entro al  caso Listarusuario unico");
					ListarUnico(request,response);					
					break;
				case "eliminar":
					System.out.println("Se entro al metodo eliminar");
					eliminar(request,response);
					break;
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
					cambiarestado(request,response);
					break;
				case "logout":
					sesion.removeAttribute("us");
					sesion.invalidate();
					response.sendRedirect("Controlador?accion=abrirLogin");
					break;
				case "openPass":
						abrirCpass(request, response);				
					break;
				case "changePass":
					changePass(request,response);
					break;
				default:
					response.sendRedirect("iniciarSesion.jsp");
					break;
				case "actualizarhorarios":
					actualizarhorarios(request,response);
				}
			}
			
			
		} catch (Exception e) {
			
		}
	}
		
	
	private void actualizarhorarios(HttpServletRequest request, HttpServletResponse response) {
		try {
			if (request.getParameter("id")!=null) {
				
				System.out.print("Se recibio el id");
			}
			System.out.print("Entro al metodo consultar");
			
			h.setIdempleado(Integer.parseInt(request.getParameter("id")));
		h=horarios.consulta(h.getIdempleado());
			 request.setAttribute("horarios", h);// esto es para enviar los resultados de la busqueda
			
			 request.getRequestDispatcher("horarios-edit.jsp") // esto es para especificar adonde quiero enviar los datos de una vista 
			.forward(request, response);
			
		} catch (Exception e) {
			
		}
		finally {
			}
		}
		
		
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
	private  void abrirLogin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		try {
			response.sendRedirect("iniciarSesion.jsp");
			 System.out.println("Login abierto");
			
		} catch (Exception e) {
			System.out.println("error al abrir login");
		}
		finally {
			}
		}
	
private  void Listarusuarios(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		try {
			System.out.print("Entro al metodo listarusuarios o empleados ");
			 List empleados =empleadosDAO.Listarusuarios();
			 
				 request.setAttribute("usuarios", empleados);// esto es para enviar los resultados de la busqueda		
				 request.getRequestDispatcher("consultaUsuarioAdmin.jsp") // esto es para especificar adonde quiero enviar los datos de una vista 
				.forward(request, response);
				 
			 
			 request.setAttribute("usuarios", empleados);// esto es para enviar los resultados de la busqueda		
			 request.getRequestDispatcher("consultaUsuarioAdmin.jsp") // esto es para especificar adonde quiero enviar los datos de una vista 
			.forward(request, response);			
		} catch (Exception e) {
			System.out.println("error"+e);
		}
		finally {
			}
		}
private  void ListarUnico(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
	try {
		System.out.print("Entro al metodo listarusuario unico ");
		 List empleados =empleadosDAO.ListarUnico(r);
		 request.setAttribute("usuarios", empleados);// esto es para enviar los resultados de la busqueda		
		 request.getRequestDispatcher("consultaUsuario.jsp") // esto es para especificar adonde quiero enviar los datos de una vista 
		.forward(request, response);	
					
	} catch (Exception e) {
		System.out.println("error"+e);
	}
	finally {
		}
	}

private  void eliminar (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	if (request.getParameter("id") !=null) {
		r.setIdempresa(Integer.parseInt(request.getParameter("id")));
		
		System.out.println("Llego el id");
	}

	try {
		
		 
		 empleadosDAO.eliminar(r.getIdempresa());
		 response.sendRedirect("Controlador?accion=Listarusuarios");
		 
	
	
	 
     
}
	 catch (Exception e) {
		
		 System.out.print(" no Entro al metodo eliminar");
		
	 }
}
private  void ver(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	

	try {
		if (request.getParameter("id")!=null) {
			
			System.out.print("Se recibio el id");
		}
		System.out.print("Entro al metodo consultar");
		
		r.setIdempresa(Integer.parseInt(request.getParameter("id")));
	r=empleadosDAO.consulta(r.getIdempresa());
		 request.setAttribute("usuarios", r);// esto es para enviar los resultados de la busqueda
		
		 request.getRequestDispatcher("editarusuarioAdmin.jsp") // esto es para especificar adonde quiero enviar los datos de una vista 
		.forward(request, response);
		
	} catch (Exception e) {
		
	}
	finally {
		}
	}
private  void edit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
	empleadosDAO.edit(r);
	
		 List empleados1 =empleadosDAO.Listarusuarios();
		 request.setAttribute("usuarios", empleados1);// esto es para enviar los resultados de la busqueda		
		 request.getRequestDispatcher("Controlador?accion=Listarusuarios") // esto es para especificar adonde quiero enviar los datos de una vista 
		.forward(request, response);			
		
	
	

	
			System.out.print("Se  actualizo el usuario");
	
} catch (Exception e) {
	System.out.println("No se actualizo el usuario "+e.getMessage());
}
}









	
private  void cambiarestado (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		System.out.print(" Entro al metodo actualizar"+r.getIdempresa());
		System.out.print(" Entro al metodo actualizar"+r.isEstado());
		

	try {
		r.setIdempresa(Integer.parseInt(request.getParameter("id")));
		r.setEstado(Boolean.parseBoolean(request.getParameter("es")));
		 
		 empleadosDAO.cambiarestado(r);
		 request.getRequestDispatcher("Controlador?accion=Listarusuarios").forward(request, response);
		 
	
	
	 
     
}
	 catch (Exception e) {
		
		 System.out.print(" no Entro al metodo actualizar");
		
	 }
}
private  void abrirCpass(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	

	try {
		 response.sendRedirect("cambiarPass.jsp");// esto es para especificar adonde quiero enviar los datos de una vista 
		
		 System.out.println("cambio de pass abierto");
		
	} catch (Exception e) {
		System.out.println("error al abrir cambio de pass");
	}
	finally {
		}
	}
private  void changePass(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
{
		if(request.getParameter("id")!=null && request.getParameter("passNew")!=null)
		{
			r.setIdempresa(Integer.parseInt(request.getParameter("id")));
			r.setPass(request.getParameter("passNew"));
		}
		try {
			empleadosDAO.cambiarPass(r);
			request.getRequestDispatcher("Controlador?accion=logout").forward(request, response);
		
	} catch (Exception e) {
		System.out.println("error al abrir cambio de pass");
	}
	finally {
		}
	}
}




		
	
	



	

