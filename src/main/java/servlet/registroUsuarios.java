/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import controlador.consultas;

import emails.Configmail;
import horarios.horario;

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

import Vo.getters;
import org.apache.commons.codec.digest.DigestUtils;


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
        String contenido = "Su contraseņa generada es: " +pass+""+" Y su usuario es: "+usuario+"<br>"+
        "<img src='https://scontent.fbog2-5.fna.fbcdn.net/v/t39.30808-6/275761253_503098924808328_7787860947077493973_n.jpg?_nc_cat=109&ccb=1-5&_nc_sid=730e14&_nc_eui2=AeHRniWqvkjxq0Q2WLeCJViWYMUrCZgNH6RgxSsJmA0fpBJJrf251UlRbOhermvGG8YHWSmwb208SDKlw8B8ijvP&_nc_ohc=mAi3U-h3pfoAX-wBBBO&_nc_ht=scontent.fbog2-5.fna&oh=00_AT8i4t1J5xnECVgJw_aGij7x6WFeQsfggWhrT0TJXSAlag&oe=6231C585'>";
        
        String contrasena =pass;
       
        try {
        	Configmail.Enviarcorreo(host, puerto,remitente,password, destinatario,asunto,contenido);
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

   
    public String getServletInfo() {
        return "Short description";
    }// 

}

