package horarios;

import java.util.Calendar;
import java.time.format.DateTimeFormatter;  
import java.time.LocalDateTime;    

public class horario {

    public static String horaactual() {
        Calendar calendario = Calendar.getInstance();
        int hora, minutos, segundos;
        hora = calendario.get(Calendar.HOUR_OF_DAY);
        minutos = calendario.get(Calendar.MINUTE);
        segundos = calendario.get(Calendar.SECOND);


         String fechaactual =hora + ":" + minutos + ":" + segundos;
         System.out.println("la fecha actual es: "+fechaactual);
         return fechaactual;
         


	    
	  }
    public static LocalDateTime fechaactual() {
    	 DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd");  
    	   LocalDateTime now = LocalDateTime.now();  
    	   System.out.println(dtf.format(now)); 
    	   return now;
    }
}