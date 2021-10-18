/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class conexion 
{
    private static final String USERNAME="root";
    private static final String PASSWORD="";
    private static final String HOST="localhost";
    private static final String PORT="3306";
    private static final String DATABASE="proyecto";
    private static final String CLASSNAME="com.mysql.cj.jdbc.Driver";
    private static final String URL="jdbc:mysql://"+HOST+":"+PORT+"/"+DATABASE;
    private Connection con;
    public conexion()
    {
        try 
        {
          Class.forName(CLASSNAME);
          con=DriverManager.getConnection(URL, USERNAME, PASSWORD);         
        } 
        catch (ClassNotFoundException e) 
        {       
            System.err.println("ERROR"+e);
        }
        catch(SQLException e)
        {
            System.err.println("ERROR"+e);
        }
    }
    public Connection getConnection()
    {
        return con;
    }
    public static void main(String[] args) 
    {
        conexion con = new conexion();
        System.out.println("conexion exitosa");
    }
}