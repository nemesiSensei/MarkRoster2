package controlador;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Controlador
 */
@WebServlet("/Controlador")
public class Controlador extends HttpServlet {
	private static final long serialVersionUID = 1L;
	getters r = new getters();
	empleadosDAO empleadosDAO = new empleadosDAO();
       
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
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String accion =request.getParameter("accion");
	System.out.print("Entro al controlador esta vez  ");
		
		try {
			if (accion!=null) {
				System.out.println("Entro al switch");
				switch (accion) {
				case "Listarusuarios":
					System.out.println("Entro al  caso Listarusuarios");
					
					
					Listarusuarios(request,response);
					
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
					cambiarestado(request,response);
				
			
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
private  void Listarusuarios(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		try {
			System.out.print("Entro al metodo listarusuarios o empleados ");
			
			
		
			 List empleados =empleadosDAO.Listarusuarios();
			 request.setAttribute("usuarios", empleados);// esto es para enviar los resultados de la busqueda
		
			 request.getRequestDispatcher("consultaUsuarioAdmin.jsp") // esto es para especificar adonde quiero enviar los datos de una vista 
			.forward(request, response);
			
		} catch (Exception e) {
			
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
	response.sendRedirect("Controlador?accion=Listarusuarios");
	System.out.print("Se  actualizo el usuario");
	
} catch (Exception e) {
	System.out.println("No se actualizo el usuario ");
}






	}
private  void cambiarestado (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		r.setIdempresa(Integer.parseInt(request.getParameter("id")));
		r.setEstado(Boolean.parseBoolean(request.getParameter("es")));
		
		

	try {
		
		 
		 empleadosDAO.cambiarestado(r);
		 response.sendRedirect("Controlador?accion=Listarusuarios");
		 
	
	
	 
     
}
	 catch (Exception e) {
		
		 System.out.print(" no Entro al metodo actualizar");
		
	 }
}
}




		
	
	



	

