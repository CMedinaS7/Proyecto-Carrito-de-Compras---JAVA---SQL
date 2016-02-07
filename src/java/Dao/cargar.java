/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package Dao;
import java.sql.*;
import java.util.Vector;
/**
 *
 * @author Carlos Medina Silvestre
 */
public class cargar {
    Connection cn=null;
    ResultSet rs=null;

public Vector devuelveCodigoMarca()
{
    Vector aux=new Vector();
    try
    {
    conexion con = new conexion();
    CallableStatement Cstmt;
    cn = con.conectar();
    Cstmt = cn.prepareCall("{call MostrarMarca}");
    rs = Cstmt.executeQuery();
    while (rs.next())
    {
      String[] datos=new String[2];
      datos[0]=rs.getString(1);
      datos[1]=rs.getString(2);
      aux.add(datos);
    }
    }
    catch(SQLException ex)
    {
            System.out.println("Error en procedimiento");
    }
    return aux;
}

public Vector devuelveCodigoCargo()
{
    Vector aux=new Vector();
    try
    {
    conexion con = new conexion();
    CallableStatement Cstmt;
    cn = con.conectar();
    Cstmt = cn.prepareCall("{call mostrarcargo}");
    rs = Cstmt.executeQuery();
    while (rs.next())
    {
      String[] datos=new String[2];
      datos[0]=rs.getString(1);
      datos[1]=rs.getString(2);
      aux.add(datos);
    }
    }
    catch(SQLException ex)
    {
            System.out.println("Error en consulta");
    }
    return aux;
}
}
