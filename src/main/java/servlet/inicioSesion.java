/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import controlador.consultas;
import controlador.empleadosDAO;
import controlador.getters;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author NEMESIS
 */
public class inicioSesion extends HttpServlet
{
	

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     * @throws SQLException 
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException 
    {
    	
    	getters r = new getters();
    	empleadosDAO empleadosDAO = new empleadosDAO();
           
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String usuario=request.getParameter("usuario");
        String pass=request.getParameter("pass");
        consultas co=new consultas();
        if(co.autenticacion(usuario, pass))
        {
        	
       	 List empleados =empleadosDAO.Listarusuarios();
		 request.setAttribute("usuarios", empleados);// esto es para enviar los resultados de la busqueda
	
		 request.getRequestDispatcher("consultaUsuarioAdmin.jsp") // esto es para especificar adonde quiero enviar los datos de una vista 
		.forward(request, response);
		
        }
        else
        {
        	
        	PrintWriter pw=response.getWriter();
        	RequestDispatcher rd=request.getRequestDispatcher("iniciarSesion.jsp");
        	rd.include(request, response);
            pw.println("<script type=\"text/javascript\">");
            pw.println("alert('Invalid Username or Password');");
            pw.println("</script>");
           
           
           
            response.setContentType("text/html");
            
            
           
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
			processRequest(request, response);
		} catch (ServletException | IOException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
			processRequest(request, response);
		} catch (ServletException | IOException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
