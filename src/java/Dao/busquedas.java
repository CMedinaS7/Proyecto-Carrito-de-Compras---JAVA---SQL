package Dao;

import java.sql.*;
import java.util.Vector;
import Beans.*;

public class busquedas {
    Connection con;
    CallableStatement cstmt;
    ResultSet rs;


     public cliente buscaClienteNatural(String codigo) {
      try {
            cliente   cli = new cliente();
            conexion cn = new conexion();
            con = cn.conectar();
            CallableStatement Cstmt;
            Cstmt = con.prepareCall("{call BuscarClienteNatural(?)}");
            Cstmt.setString(1, codigo);
            ResultSet rs;
            rs = Cstmt.executeQuery();
            rs.next();
            cli.setCodigo(rs.getString(1));
            cli.setApellidos(rs.getString(2));
            cli.setNombres(rs.getString(3));
            cli.setDni(rs.getString(4));
            cli.setDireccion(rs.getString(5));
            cli.setSexo(rs.getString(6));
            cli.setEmail(rs.getString(7));
            cli.setTelefono(rs.getString(8));
            cli.setUsuario(rs.getString(9));
            cli.setClave(rs.getString(10));
            return cli;
        } catch (SQLException Ex) {
            System.out.println("Error al Buscar cliente Natural");
            return null;
        }
    }

       public cliente buscaClienteApellidos(String codigo) {
      try {
            cliente   cli = new cliente();
            conexion cn = new conexion();
            con = cn.conectar();
            CallableStatement Cstmt;
            Cstmt = con.prepareCall("{call BuscarClienteApellidos(?)}");
            Cstmt.setString(1, codigo);
            ResultSet rs;
            rs = Cstmt.executeQuery();
            rs.next();
            cli.setCodigo(rs.getString(1));
            cli.setApellidos(rs.getString(2));
            cli.setNombres(rs.getString(3));
            cli.setDni(rs.getString(4));
            cli.setDireccion(rs.getString(5));
            cli.setSexo(rs.getString(6));
            cli.setEmail(rs.getString(7));
            cli.setTelefono(rs.getString(8));
            cli.setUsuario(rs.getString(9));
            cli.setClave(rs.getString(10));
            return cli;
        } catch (SQLException Ex) {
            System.out.println("Error al Buscar cliente Natural");
            return null;
        }
    }

      public cliente buscaClienteJuridico(String codigo) {
      try {
            cliente   cli = new cliente();
            conexion cn = new conexion();
            con = cn.conectar();
            CallableStatement Cstmt;
            Cstmt = con.prepareCall("{call BuscarClienteJuridico(?)}");
            Cstmt.setString(1, codigo);
            ResultSet rs;
            rs = Cstmt.executeQuery();
            rs.next();
            cli.setCodigo(rs.getString(1));
            cli.setRz(rs.getString(2));
            cli.setRubro(rs.getString(3));
            cli.setRuc(rs.getString(4));
            cli.setDireccion(rs.getString(5));
            cli.setEmail(rs.getString(6));
            cli.setTelefono(rs.getString(7));
            cli.setUsuario(rs.getString(8));
            cli.setClave(rs.getString(9));
            return cli;
        } catch (SQLException Ex) {
            System.out.println("Error al Buscar cliente Juridico");
            return null;
        }
    }

 public cliente buscaClienteRazon(String codigo) {
      try {
            cliente   cli = new cliente();
            conexion cn = new conexion();
            con = cn.conectar();
            CallableStatement Cstmt;
            Cstmt = con.prepareCall("{call BuscarClienteRazon(?)}");
            Cstmt.setString(1, codigo);
            ResultSet rs;
            rs = Cstmt.executeQuery();
            rs.next();
            cli.setCodigo(rs.getString(1));
            cli.setRz(rs.getString(2));
            cli.setRubro(rs.getString(3));
            cli.setRuc(rs.getString(4));
            cli.setDireccion(rs.getString(5));
            cli.setEmail(rs.getString(6));
            cli.setTelefono(rs.getString(7));
            cli.setUsuario(rs.getString(8));
            cli.setClave(rs.getString(9));
            return cli;
        } catch (SQLException Ex) {
            System.out.println("Error al Buscar cliente Juridico");
            return null;
        }
    }

      public personal buscaPersonal(String codigo) {
      try {
            personal   per = new personal();
            conexion cn = new conexion();
            con = cn.conectar();
            CallableStatement Cstmt;
            Cstmt = con.prepareCall("{call BuscarPersonal(?)}");
            Cstmt.setString(1, codigo);
            ResultSet rs;
            rs = Cstmt.executeQuery();
            rs.next();
            per.setCodigo(rs.getString(1));
            per.setNombres(rs.getString(2));
            per.setApellidos(rs.getString(3));
            per.setDni(rs.getString(4));
            per.setTelefono(rs.getString(5));
            per.setDireccion(rs.getString(6));
            per.setEmail(rs.getString(7));
            per.setIdcargo(rs.getString(8));
            per.setUsuario(rs.getString(9));
            return per;
        } catch (SQLException Ex) {
            System.out.println("Error al Buscar personal");
            return null;
        }
    }

         public Producto buscaProducto(String codigo) {
      try {
            Producto   pro = new Producto();
            conexion cn = new conexion();
            con = cn.conectar();
            CallableStatement Cstmt;
            Cstmt = con.prepareCall("{call BuscarProducto(?)}");
            Cstmt.setString(1, codigo);
            ResultSet rs;
            rs = Cstmt.executeQuery();
            rs.next();
            pro.setCodigo(rs.getString(1));
            pro.setNombre(rs.getString(2));
            pro.setMarca(rs.getString(3));
            pro.setPrecio(rs.getString(4));
            pro.setColor(rs.getString(5));
            pro.setDescripcion(rs.getString(6));
            pro.setStock(rs.getString(7));
            pro.setFoto(rs.getString(8));
            pro.setFoto1(rs.getString(9));
            pro.setFoto2(rs.getString(10));
            pro.setTag(rs.getString(11));

            return pro;
        } catch (SQLException Ex) {
            System.out.println("Error al Buscar producto");
            return null;
        }
    }

        public usuario logeo(String usuario, String clave) {
        try {
            usuario user = new usuario();
            conexion cn = new conexion();
            con = cn.conectar();
            cstmt = con.prepareCall("{call logeopersonal(?,?)}");
            cstmt.setString(1, usuario);
            cstmt.setString(2, clave);
            rs = cstmt.executeQuery();
            rs.next();
            user.setApellidos(rs.getString(1));
            user.setNombres(rs.getString(2));
            user.setDni(rs.getString(3));
            user.setTelefono(rs.getString(4));
            user.setCargo(rs.getString(5));
            
            return user;
        } catch (SQLException ex) {
            System.out.println("Error en procedimiento almacenado Iniciar Secion para intranet");
            return null;
        } finally {
            try {
                con.close();
            } catch (SQLException ex) {
            }
        }
    }



         public tarjeta logeotarjeta(String cliente, String tarjeta, String clave,int num) {
        try {
            tarjeta user = new tarjeta();
            conexion cn = new conexion();
            con = cn.conectar();
            cstmt = con.prepareCall("{call transaccion(?,?,?,?)}");
            cstmt.setString(1, cliente);
            cstmt.setString(2, tarjeta);
            cstmt.setString(3, clave);
            cstmt.setInt(4, num);
            rs = cstmt.executeQuery();
            rs.next();
            user.setMonto(rs.getDouble(1));
            return user;
        } catch (SQLException ex) {
            System.out.println("Error en procedimiento almacenado Iniciar Secion para Tarjeta");
            return null;
        } finally {
            try {
                con.close();
            } catch (SQLException ex) {
            }
        }
    }



    public cliente LoginNatural(String usuario, String clave) {
        try {
            cliente cli = new cliente();
            conexion cn = new conexion();
            con = cn.conectar();
            cstmt = con.prepareCall("{call LogearNatural(?,?)}");
            cstmt.setString(1, usuario);
            cstmt.setString(2, clave);
            rs = cstmt.executeQuery();
            rs.next();
            cli.setCodigo(rs.getString(1));
            cli.setApellidos(rs.getString(2));
            cli.setNombres(rs.getString(3));
            cli.setDni(rs.getString(4));
            cli.setDireccion(rs.getString(5));
            cli.setEmail(rs.getString(6));
            cli.setTelefono(rs.getString(7));


            return cli;
        } catch (SQLException ex) {
            System.out.println("Error en procedimiento almacenado Iniciar Secion para Cliente Natural");
            return null;
        } finally {
            try {
                con.close();
            } catch (SQLException ex) {
            }
        }
    }

     public cliente LoginJuridico(String usuario, String clave) {
        try {
            cliente cli = new cliente();
            conexion cn = new conexion();
            con = cn.conectar();
            cstmt = con.prepareCall("{call LogearJuridico(?,?)}");
            cstmt.setString(1, usuario);
            cstmt.setString(2, clave);
            rs = cstmt.executeQuery();
            rs.next();
            cli.setCodigo(rs.getString(1));
            cli.setRuc(rs.getString(2));
            cli.setRz(rs.getString(3));
            cli.setRubro(rs.getString(4));
            cli.setDireccion(rs.getString(5));
            cli.setEmail(rs.getString(6));

            return cli;
        } catch (SQLException ex) {
            System.out.println("Error en procedimiento almacenado Iniciar Secion para Cliente Juridico");
            return null;
        } finally {
            try {
                con.close();
            } catch (SQLException ex) {
            }
        }
    }
           
 
  public Vector llenarVectorMarca() {
        Vector aux=new Vector();
        try {
            conexion cn = new conexion();
            con = cn.conectar();
            cstmt = con.prepareCall("{call MostrarMarca}");
            ResultSet rs;
            rs = cstmt.executeQuery();
            while(rs.next()){
                String[] datos=new String[2];
                datos[0]=rs.getString(1);
                datos[1]=rs.getString(2);
                aux.add(datos);
            }
            cstmt.close();
            con.close();
            return aux;
        } catch (SQLException ex) {
            System.out.println("Error");
            return null;
        } finally {
            try {
                con.close();
            } catch (SQLException ex) {
            }
        }
    }

   public Vector llenarVectorCargo() {
        Vector aux=new Vector();
        try {
            conexion cn = new conexion();
            con = cn.conectar();
            cstmt = con.prepareCall("{call mostrarcargo}");
            ResultSet rs;
            rs = cstmt.executeQuery();
            while(rs.next()){
                String[] datos=new String[2];
                datos[0]=rs.getString(1);
                datos[1]=rs.getString(2);
                aux.add(datos);
            }
            cstmt.close();
            con.close();
            return aux;
        } catch (SQLException ex) {
            System.out.println("Error");
            return null;
        } finally {
            try {
                con.close();
            } catch (SQLException ex) {
            }
        }
    }

    }




