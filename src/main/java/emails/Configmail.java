package emails;

import java.util.Date;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;




public class Configmail {
	public static void Enviarcorreo(String host, String puerto,
			final  String remitente, final String password, String destinatario,String asunto, String contenido) throws AddressException, MessagingException {
		// donde 
		// host=host puerto:puerto remidente: el que envia el correo, passsword: la contraseña del que envia el correo,
		// destinatario: al que le va a llegar al correo,  asunto: el tema de conversacion, contenido: lo que va a ir en el mensaje
		
		// esto es un objeto de la libreria util y nos sirve para crear un objeto y crear propiedades, lo que vamos a hacer es asignarle  
		// propiedades a nuestro proyecto 
		Properties propiedades = new Properties();
		propiedades.put("mail.smtp.host", host);
		propiedades.put("mail.smtp.host", puerto);
		propiedades.put("mail.smtp.auth", "true");
		propiedades.put("mail.smtp.starttls.enable", "true"); // esto es para enviar correos sin certificados
		Authenticator  autenticacion = new Authenticator() {

		public PasswordAuthentication getPasswordauthentication() {
			// lo que hace este metodo es validad si viene un usuario y una contraseña
			if((remitente!=null)&&(remitente.length()>0)&&(password!=null)&&(password.length()>0)) {
				return new PasswordAuthentication(remitente,password);
			}
			return null;
			
		}
		
			
		};
		// vamos a crear nuestro objeto de sesion
		Session sesion= Session.getDefaultInstance(propiedades, new javax.mail.Authenticator(){
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication (remitente,password);
				// con esto ya tenemos nuestra cuenta de correo en el servidor 
				
			}
			
		});
		
		Message mensaje = new MimeMessage(Session.getDefaultInstance(propiedades, autenticacion)); 
			// aca se generan las propieddes que van en el correo 
			mensaje.setFrom(new InternetAddress(remitente));
			InternetAddress[] correos = {new InternetAddress(destinatario)};
			mensaje.setRecipients(Message.RecipientType.TO, correos);
			mensaje.setSubject(asunto);
			mensaje.setContent(contenido,"text/html;charset=utf-8");
			mensaje.setSentDate(new Date());
			Transport.send(mensaje);
			
			
		
	
				
		
		
		
		
	}

}
