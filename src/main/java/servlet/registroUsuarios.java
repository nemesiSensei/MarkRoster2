/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import controlador.consultas;
import controlador.getters;
import emails.Configmail;

import java.io.IOException;
import java.io.PrintWriter;

import javax.mail.MessagingException;
import javax.mail.internet.AddressException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
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
 	public void init () {
 		ServletContext xml =getServletContext(); // para acceder a las variables de contexto de web.xml
 		host=xml.getInitParameter("host");
 		puerto=xml.getInitParameter("puerto");
 		remitente=xml.getInitParameter("remitente");
 		password=xml.getInitParameter("password");
 		
 		
 		 
 	 }
 	
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
     * @throws MessagingException 
     * @throws AddressException 
     * 
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, AddressException, MessagingException 
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
        String destinatario = request.getParameter("correo");
        String asunto = "Bienvenido (a) a markroster";
        String contenido = "texto de prueba";
        try {
        	Configmail.Enviarcorreo(host, puerto, remitente,password, destinatario, asunto, contenido);
        	 System.out.print("El  mensaje se envio correctamente");
		} catch (Exception e) {
			 System.out.print("El  mensaje no se envio correctamente"+e.getMessage());
			 
			
		}
      
           try {
        	   
        	   
        	   if(co.registrar(idempresa, usuario, pass, correo, privilegio))
               {      
                  response.sendRedirect("Controlador?accion=Listarusuarios"); 
                 
                  System.out.print("El registro  se hizo satisfactoriamente");
               }
        	   else {
        		   response.sendRedirect("registroUsuario.jsp");
        		   System.out.print("El mensaje no envio satisfactoriamente");
        	   }
			
        	   
		} catch (Exception e) {
			  System.out.print("El mensaje encontro un error"+e.getMessage());

        	
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
        try {
			processRequest(request, response);
		} catch (AddressException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (MessagingException e) {
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
		} catch (AddressException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (MessagingException e) {
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

