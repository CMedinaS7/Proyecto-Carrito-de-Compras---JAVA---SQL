/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package Dao;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author CarlosM
 */
public class borrar {
 public boolean eliminarPersonal(String codigo){
        int filas;

        boolean resultado = false;
        Connection cn = null;
        try{
            conexion con=new conexion();
            cn=con.conectar();
            CallableStatement Cstmt;
            Cstmt=cn.prepareCall("{call EliminarPersonal(?)}");
            Cstmt.setString(1, codigo);
            filas=Cstmt.executeUpdate();
            if(filas>=1){
            resultado= true;
               Cstmt.close();
            }
        }catch(SQLException ex){System.out.println("Error al Borrar Personal");}
    finally{
        try{
            cn.close();
        }catch(SQLException ex1){System.out.println("No existio Conexion");}
    }
    return resultado;
    }

  public boolean quitarProducto(String producto){
        int filas;

        boolean resultado = false;
        Connection cn = null;
        try{
            conexion con=new conexion();
            cn=con.conectar();
            CallableStatement Cstmt;
            Cstmt=cn.prepareCall("{call QuitarProducto(?)}");
            Cstmt.setString(1, producto);
            filas=Cstmt.executeUpdate();
            if(filas>=1){
            resultado= true;
               Cstmt.close();
            }
        }catch(SQLException ex){System.out.println("Error al Borrar Personal");}
    finally{
        try{
            cn.close();
        }catch(SQLException ex1){System.out.println("No existio Conexion");}
    }
    return resultado;
    }


 public boolean eliminarCliente(String codigo){
        int filas;

        boolean resultado = false;
        Connection cn = null;
        try{
            conexion con=new conexion();
            cn=con.conectar();
            CallableStatement Cstmt;
            Cstmt=cn.prepareCall("{call EliminarCliente(?)}");
            Cstmt.setString(1, codigo);
            filas=Cstmt.executeUpdate();
            if(filas>=1){
            resultado= true;
               Cstmt.close();
            }
        }catch(SQLException ex){System.out.println("Error al Borrar Cliente");}
    finally{
        try{
            cn.close();
        }catch(SQLException ex1){System.out.println("No existio Conexion");}
    }
    return resultado;
    }
public boolean eliminarProducto(String codigo){
        int filas;

        boolean resultado = false;
        Connection cn = null;
        try{
            conexion con=new conexion();
            cn=con.conectar();
            CallableStatement Cstmt;
            Cstmt=cn.prepareCall("{call EliminarProducto(?)}");
            Cstmt.setString(1, codigo);
            filas=Cstmt.executeUpdate();
            if(filas>=1){
            resultado= true;
               Cstmt.close();
            }
        }catch(SQLException ex){System.out.println("Error al Borrar Producto");}
    finally{
        try{
            cn.close();
        }catch(SQLException ex1){System.out.println("No existio Conexion");}
    }
    return resultado;
    }
 

}
