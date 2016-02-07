package Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.*;
public class conexion {
    public Connection conectar(){
        
        try{
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            Connection cn;
            cn = DriverManager.getConnection("jdbc:odbc:gm","sa","");// vision es el nombre del origen
            return cn;
        }
        catch (ClassNotFoundException ex){
            System.out.println("Error en Clase - " + ex); return null;
        }
        catch(SQLException ex){
            System.out.println("Error en ODBC - " + ex); return null;
        }
    }
        
    }


