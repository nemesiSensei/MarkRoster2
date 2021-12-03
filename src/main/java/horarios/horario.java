package horarios;

import java.util.Calendar;
import java.time.format.DateTimeFormatter;
import java.sql.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;    

public class horario {

    public static String horaactual() {
        Calendar calendario = Calendar.getInstance(); // este metodo es para capturar la hora  actual del sistema
        int hora, minutos, segundos;
        hora = calendario.get(Calendar.HOUR_OF_DAY);
        minutos = calendario.get(Calendar.MINUTE);
        segundos = calendario.get(Calendar.SECOND);


         String fechaactual =hora + ":" + minutos + ":" + segundos;
         System.out.println("la fecha actual es: "+fechaactual);
         return fechaactual;
         


	    
	  }
    public String  fechaactual() {

        /**
         * @param args the command line arguments
         */
      
            String pattern = "MM/dd/yyyy HH:mm:ss";

    // Create an instance of SimpleDateFormat used for formatting 
    // the string representation of date according to the chosen pattern
    DateFormat df = new SimpleDateFormat(pattern);

    // Get the today date using Calendar object.
    Date today = (Date) Calendar.getInstance().getTime();        
    // Using DateFormat format method we can create a string 
    // representation of a date with the defined format.
    String todayAsString = df.format(today);

    // Print it!
    System.out.println("Today is: " + todayAsString);
    return todayAsString;
        }// este metodo es para obtener la fecha actual de proyecto
    	
    }
