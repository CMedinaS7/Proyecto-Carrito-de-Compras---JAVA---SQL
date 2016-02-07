/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package Dao;
import java.sql.*;

import java.io.IOException;
import java.io.PrintWriter;

/**
 *
 * @author CarlosM
 */
public class insertar {
   
  public boolean insertclienteNatural(String fecha,String direccion,String email,String telefono,String ruc,String rz,String rubro,String apellidos,String nombres,String dni,String sexo,String usuario,String clave){
    boolean resultado=false;
    Connection cn=null;
    try{
        conexion con=new conexion();
        cn=con.conectar();
        CallableStatement cstmt;
        cstmt=cn.prepareCall("{call RegistrarCliente(?,?,?,?,?,?,?,?,?,?,?,?,?)}");
        cstmt.setString(1, fecha);
        cstmt.setString(2, direccion);
        cstmt.setString(3, email);
        cstmt.setString(4, telefono);
        cstmt.setString(5, ruc);
        cstmt.setString(6, rz);
        cstmt.setString(7, rubro);
        cstmt.setString(8, apellidos);
        cstmt.setString(9, nombres);
        cstmt.setString(10, dni);
        cstmt.setString(11, sexo);
        cstmt.setString(12, usuario);
        cstmt.setString(13, clave);
        int fila=cstmt.executeUpdate();
        if(fila>=1){
            resultado=true;
        }
        cstmt.close();
    }catch(SQLException ex){System.out.println("Error al Insertar cliente");}
    finally{
        try{
            cn.close();
        }catch(SQLException ex1){System.out.println("No existio Conexion");}
    }
    return resultado;
    }

   public boolean agregarProducto(String producto,String cliente,String cantidad){
    boolean resultado=false;
    Connection cn=null;
    try{
        conexion con=new conexion();
        cn=con.conectar();
        CallableStatement cstmt;
        cstmt=cn.prepareCall("{call AgregarProducto(?,?,?)}");
        cstmt.setString(1, producto);
        cstmt.setString(2, cliente);
        cstmt.setString(3, cantidad);

        int fila=cstmt.executeUpdate();
        if(fila>=1){
            resultado=true;
        }
        cstmt.close();
    }catch(SQLException ex){System.out.println("Error al Agregar Producto");}
    finally{
        try{
            cn.close();
        }catch(SQLException ex1){System.out.println("No existio Conexion");}
    }
    return resultado;
    }


   public boolean insertpersonal(String nombres,String apellidos,String dni,String telefono,String direccion,String email,String cargo){
    boolean resultado=false;
    Connection cn=null;
    try{
        conexion con=new conexion();
        cn=con.conectar();
        CallableStatement cstmt;
        cstmt=cn.prepareCall("{call InsertarPersonal(?,?,?,?,?,?,?)}");
        cstmt.setString(1, nombres);
        cstmt.setString(2, apellidos);
        cstmt.setString(3, dni);
        cstmt.setString(4, telefono);
        cstmt.setString(5, direccion);
        cstmt.setString(6, email);
        cstmt.setString(7, cargo);
        int fila=cstmt.executeUpdate();
        if(fila>=1){
            resultado=true;
        }
        cstmt.close();
    }catch(SQLException ex){System.out.println("Error al Insertar personal");}
    finally{
        try{
            cn.close();
        }catch(SQLException ex1){System.out.println("No existio Conexion");}
    }
    return resultado;

    }

   public boolean insertproducto(String nombre,String marca,String precio,String color,String descripcion,String stock,String foto,String foto1,String foto2,String tag){
    boolean resultado=false;
    Connection cn=null;
    try{
        conexion con=new conexion();
        cn=con.conectar();
        CallableStatement cstmt;
        cstmt=cn.prepareCall("{call InsertarProducto(?,?,?,?,?,?,?,?,?,?)}");
        cstmt.setString(1, nombre);
        cstmt.setString(2, marca);
        cstmt.setString(3, precio);
        cstmt.setString(4, color);
        cstmt.setString(5, descripcion);
        cstmt.setString(6, stock);
        cstmt.setString(7, foto);
        cstmt.setString(8, foto1);
        cstmt.setString(9, foto2);
        cstmt.setString(10, tag);


        
        int fila=cstmt.executeUpdate();
        if(fila>=1){
            resultado=true;
        }
        cstmt.close();
    }catch(SQLException ex){System.out.println("Error al Insertar producto");}
    finally{
        try{
            cn.close();
        }catch(SQLException ex1){System.out.println("No existio Conexion");}
    }
    return resultado;
    }

      public boolean AsignarUsuario(String codigo,String usuario,String clave){
    boolean resultado=false;
    Connection cn=null;
    try{
        conexion con=new conexion();
        cn=con.conectar();
        CallableStatement cstmt;
        cstmt=cn.prepareCall("{call AsignarUsuario(?,?,?)}");
        cstmt.setString(1, codigo);
        cstmt.setString(2, usuario);
        cstmt.setString(3, clave);
        int fila=cstmt.executeUpdate();
        if(fila>=1){
            resultado=true;
        }
        cstmt.close();
    }catch(SQLException ex){System.out.println("Error al Insertar personal");}
    finally{
        try{
            cn.close();
        }catch(SQLException ex1){System.out.println("No existio Conexion");}
    }
    return resultado;

    }


}

  
  
