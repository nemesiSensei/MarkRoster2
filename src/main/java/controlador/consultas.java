/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class consultas extends conexion 
{
    public boolean autenticacion(String Usuario, String Contraseña)
    {
        PreparedStatement pst=null;
        ResultSet rs=null;
        try 
        {
            String consulta="select * from empleados where Usuario = ? and Contraseña = ?";
            pst=getConnection().prepareStatement(consulta, ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
            pst.setString(1,Usuario);
            pst.setString(2,Contraseña);
            
            rs=pst.executeQuery();
            if(rs.absolute(1))
            {
                return true;
            }
        } 
        catch (SQLException e) 
        {
            System.err.println("ERROR"+e);
        }
        finally
        {
            try 
            {
               if(getConnection()!=null)getConnection().close();
               if(pst!=null)pst.close();
               if(rs!=null)rs.close();
            } catch (SQLException e) 
            {
                System.err.println("ERROR"+e);
            }
        }
        return false;
    }
    
    public boolean registrar(String idempresa, String usuario, String pass, String correo, String privilegio, String MAC)
    {
        PreparedStatement pst = null;
        try 
        {
            String consulta = "insert into empleados (id_empresa, Usuario, Contraseña, correo, privilegio, MAC) values(?,?,?,?,?,?)";
            pst=getConnection().prepareStatement(consulta);
            pst.setString(1,idempresa);
            pst.setString(2,usuario);
            pst.setString(3,pass);
            pst.setString(4,correo);
            pst.setString(5,privilegio);
            pst.setString(6,MAC);
            if(pst.executeUpdate()==1)
            {
                return true;
            }
        } 
        catch (SQLException e) 
        {
            System.err.println("ERROR"+e);
        }
        finally
        {
          try 
            {
               if(getConnection()!=null)getConnection().close();
               if(pst!=null)pst.close();               
            } catch (SQLException e) 
            {
                System.err.println("ERROR"+e);
            }  
        }
        return false;
    }  
    
}
