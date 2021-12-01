/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import controlador.consultas;
import controlador.getters;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.protobuf.Extension.MessageType;

/**
 *
 * @author NEMESIS
 */
public class registroUsuarios extends HttpServlet 
{
	 private String host;
	private  String puerto;
 	 private String  remitente;
 	 private String password;
 	 // vamos a hacer las variables de contexto
Contrasena contrasena = new Contrasena();
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     * 
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
    	
    	
    	getters r = new getters();
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String idempresa = request.getParameter("idempresa");
        String usuario=request.getParameter("usuario");
        String pass=Contrasena.getPassword();
        String correo=request.getParameter("correo");
        String privilegio=request.getParameter("privilegio");
        
        
       
        consultas co=new consultas();
           try {
        	   if(co.registrar(idempresa, usuario, pass, correo, privilegio))
               {      
                  response.sendRedirect("Controlador?accion=Listarusuarios"); 
               }
        	   else {
        		   response.sendRedirect("registroUsuario.jsp");
        	   }
			
        	   
		} catch (Exception e) {

        	
        	response.sendRedirect("registroUsuario.jsp"); 
        	
        	
        	
           
             
		}
     
        	
             
                 // aca esta el cambio
            
            
                    	
            
		
        
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
        processRequest(request, response);
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
        processRequest(request, response);
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

