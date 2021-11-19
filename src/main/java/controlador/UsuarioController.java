package controlador;

import java.io.IOException;
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
