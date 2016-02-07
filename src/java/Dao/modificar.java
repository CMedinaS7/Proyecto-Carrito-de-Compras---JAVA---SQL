/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package Dao;

import java.io.IOException;
import java.io.PrintWriter;

import java.sql.*;
/**
 *
 * @author CarlosM
 */
public class modificar{

    Connection cn;
   
       public boolean modificaPersonal(String codigo,String apellidos, String nombres,String dni, 
       String telefono, String direccion, String cargo, String email){
       boolean resultado=false;

    try{
        int filas=0;
        conexion con=new conexion();
        cn=con.conectar();
        CallableStatement cstmt;
        cstmt=cn.prepareCall("{call ModificarPersonal(?,?,?,?,?,?,?,?)}");
        cstmt.setString(1, codigo);
        cstmt.setString(2, nombres);
        cstmt.setString(3, apellidos);
        cstmt.setString(4, dni);
        cstmt.setString(5, telefono);
        cstmt.setString(6, direccion);
        cstmt.setString(7, email);
        cstmt.setString(8, cargo);

            filas=cstmt.executeUpdate();
            if(filas>=1){
            resultado= true;
            cstmt.close();
            }

    }catch(SQLException ex){  System.out.print("Error en el procedimiento Modificar Personal ");}
        finally{
        return resultado;
        }
}

    public boolean CinfirmarPedido(String cliente){
       boolean resultado=false;

    try{
        int filas=0;
        conexion con=new conexion();
        cn=con.conectar();
        CallableStatement cstmt;
        cstmt=cn.prepareCall("{call confirmar(?)}");
        cstmt.setString(1,cliente);
        filas=cstmt.executeUpdate();
        if(filas>=1){
        resultado= true;
        cstmt.close();
        }

    }catch(SQLException ex){  System.out.print("Error en el procedimiento Confirmar compra ");}
        finally{
        return resultado;
        }
}


     public boolean PagoPrescencial(String com,String cliente){
       boolean resultado=false;

    try{
        int filas=0;
        conexion con=new conexion();
        cn=con.conectar();
        CallableStatement cstmt;
        cstmt=cn.prepareCall("{call pagar_prescencial(?,?)}");
        cstmt.setString(1,com);
        cstmt.setString(2,cliente);

        filas=cstmt.executeUpdate();
        if(filas>=1){
        resultado= true;
        cstmt.close();
        }

    }catch(SQLException ex){  System.out.print("Error en el procedimiento pagar prescencial");}
        finally{
        return resultado;
        }
}



    public boolean eliminarcomprobante(String codigo){
       boolean resultado=false;

    try{
        int filas=0;
        conexion con=new conexion();
        cn=con.conectar();
        CallableStatement cstmt;
        cstmt=cn.prepareCall("{call eliminarcomprobante(?)}");
        cstmt.setString(1,codigo);
        filas=cstmt.executeUpdate();
        if(filas>=1){
        resultado= true;
        cstmt.close();
        }

    }catch(SQLException ex){  System.out.print("Error en el procedimiento eliminar compra ");}
        finally{
        return resultado;
        }
}

     public boolean transac(String cliente,double monto,String num){
       boolean resultado=false;

    try{
        int filas=0;
        conexion con=new conexion();
        cn=con.conectar();
        CallableStatement cstmt;
        cstmt=cn.prepareCall("{call transac(?,?,?)}");
        cstmt.setString(1,cliente);
        cstmt.setDouble(2,monto);
        cstmt.setString(3,num);

                filas=cstmt.executeUpdate();
        if(filas>=1){
        resultado= true;
        cstmt.close();
        }

    }catch(SQLException ex){  System.out.print("Error en el procedimiento Confirmar compra ");}
        finally{
        return resultado;
        }
}



       public boolean activarCliente(String doc){
       boolean resultado=false;

    try{
        int filas=0;
        conexion con=new conexion();
        cn=con.conectar();
        CallableStatement cstmt;
        cstmt=cn.prepareCall("{call ActivarCliente(?)}");
        cstmt.setString(1,doc);
        filas=cstmt.executeUpdate();
        if(filas>=1){
        resultado= true;
        cstmt.close();
        }

    }catch(SQLException ex){  System.out.print("Error en el procedimiento ActivarCliente ");}
        finally{
        return resultado;
        }
}

       public boolean cambiarClave(String dni,String clave, String clave1){
       boolean resultado=false;

    try{
        int filas=0;
        conexion con=new conexion();
        cn=con.conectar();
        CallableStatement cstmt;
        cstmt=cn.prepareCall("{call CambiarClave(?,?,?)}");
        cstmt.setString(1, dni);
        cstmt.setString(2, clave);
        cstmt.setString(3, clave1);
            filas=cstmt.executeUpdate();
            if(filas>=1){
            resultado= true;
            cstmt.close();
            }

    }catch(SQLException ex){  System.out.print("Error en el procedimiento Cambiar Clave ");}
        finally{
        return resultado;
        }
}



       public boolean modificaCantidad(String producto, String cantidad){
       boolean resultado=false;

    try{
        int filas=0;
        conexion con=new conexion();
        cn=con.conectar();
        CallableStatement cstmt;
        cstmt=cn.prepareCall("{call ModificarCantidad(?,?)}");
        cstmt.setString(1, producto);
        cstmt.setString(2, cantidad);

            filas=cstmt.executeUpdate();
            if(filas>=1){
            resultado= true;
            cstmt.close();
            }
    }catch(SQLException ex){  System.out.print("Error en el procedimiento Modificar Cantidad ");}
        finally{
        return resultado;
        }
}

public boolean modificaClienteNatural (String codigo,String direccion,String email,String telefono,String dni,String apellidos,String nombres,String sexo, String usuario, String clave ){
        boolean resultado=false;

    try{
        int filas=0;
        conexion con=new conexion();
        cn=con.conectar();
        CallableStatement cstmt;
        cstmt=cn.prepareCall("{call ModificarClienteNatural(?,?,?,?,?,?,?,?,?,?)}");
        cstmt.setString(1, codigo);
        cstmt.setString(2, direccion);
        cstmt.setString(3, email);
        cstmt.setString(4, telefono);
        cstmt.setString(5, dni);
        cstmt.setString(6, apellidos);
        cstmt.setString(7, nombres);
        cstmt.setString(8, sexo);
        cstmt.setString(9, usuario);
        cstmt.setString(10, clave);

            filas=cstmt.executeUpdate();
            if(filas>=1){
            resultado= true;
            cstmt.close();
            }

    }catch(SQLException ex){  System.out.print("Error en el procedimiento Modificar Cliente");}
        finally{
        return resultado;
        }
}

public boolean modificaClienteJuridico (String codigo,String direccion,String email,String telefono,String ruc,String rz,String rubro, String usuario, String clave ){
        boolean resultado=false;

    try{
        int filas=0;
        conexion con=new conexion();
        cn=con.conectar();
        CallableStatement cstmt;
        cstmt=cn.prepareCall("{call ModificarClienteJuridico(?,?,?,?,?,?,?,?,?)}");
        cstmt.setString(1, codigo);
        cstmt.setString(2, direccion);
        cstmt.setString(3, email);
        cstmt.setString(4, telefono);
        cstmt.setString(5, ruc);
        cstmt.setString(6, rz);
        cstmt.setString(7, rubro);
        cstmt.setString(8, usuario);
        cstmt.setString(9, clave);

            filas=cstmt.executeUpdate();
            if(filas>=1){
            resultado= true;
            cstmt.close();
            }

    }catch(SQLException ex){  System.out.print("Error en el procedimiento Modificar Cliente");}
        finally{
        return resultado;
        }
}

        public boolean modificaProducto(String codigo,String nombre,String marca,String precio,String color,String descripcion,
                String stock,String foto,String foto1,String foto2,String tag){
        boolean resultado=false;

    try{
        int filas=0;
        conexion con=new conexion();
        cn=con.conectar();
        CallableStatement cstmt;
        cstmt=cn.prepareCall("{call ModificarProducto(?,?,?,?,?,?,?,?,?,?,?)}");
        cstmt.setString(1, codigo);
        cstmt.setString(2, nombre);
        cstmt.setString(3, marca);
        cstmt.setString(4, precio);
        cstmt.setString(5, color);
        cstmt.setString(6, descripcion);
        cstmt.setString(7, stock);
        cstmt.setString(8, foto);
        cstmt.setString(9, foto1);
        cstmt.setString(10, foto2);
        cstmt.setString(11, tag);

        filas=cstmt.executeUpdate();
            if(filas>=1){
            resultado= true;
            cstmt.close();
            }

    }catch(SQLException ex){  System.out.print("Error en el procedimiento Modificar Producto" + ex);}
        finally{
        return resultado;
        }
        }}


    