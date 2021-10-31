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


}
