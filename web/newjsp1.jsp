<%-- 
    Document   : Pedidos
    Created on : 16/02/2011, 04:25:13 PM
    Author     : Carlos Medina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import=" Dao.conexion,java.sql.*,java.util.Date"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>G&amp;M - COMPUTER - 2011</title>
        <link rel="stylesheet" href="css/lightbox.css" type="text/css" media="screen" />
        <link rel="js/global.css" href="js/global.css" type="text/css" media="screen" />
	<link rel="shortcut icon" type="image/x-icon" href="../img/icon.ico" />
	<script src="js/prototype.js" type="text/javascript"></script>
	<script src="js/scriptaculous.js?load=effects" type="text/javascript"></script>
	<script src="js/lightbox.js" type="text/javascript"></script>
    <link href="js/global.css" rel="stylesheet" type="text/css">
    <style type="text/css">
<!--
.Estilo2 {color: #006699}
-->
    </style>
    </head>
    <body>
    
        <table width="431" border="1" bordercolor="#CCCCCC">
          <tr>
            <td width="99"><div align="center"><strong>Comprobante</strong></div></td>
            <td width="40"><div align="center"><strong>Serie</strong></div></td>
            <td width="50"><div align="center"><strong>Cliente</strong></div></td>
            <td width="64"><div align="center"><strong>Fecha</strong></div></td>
            <td width="72"><div align="center"><strong>Total</strong></div></td>
            <td width="66"><div align="center"><strong>Eliminar</strong></div></td>
          </tr>
           <%
                    Connection cn;
                    conexion con = new conexion();
                    try {
                		
		        	    cn = con.conectar();
						
                        Statement stmt = cn.createStatement();
						String comprobante="";
						String serie="";
						String cliente="";
						String fecha="";
						String total="";
														
						String a="exec mostrar_detalles_boleta 'd0002','c0002'";               
						ResultSet rs = stmt.executeQuery(a);
											
					
						while (rs.next()) {
							comprobante=String.valueOf(rs.getString(1));
                                                        serie=String.valueOf(rs.getString(2));
                                                        cliente=String.valueOf(rs.getString(3));
                                                        fecha=String.valueOf(rs.getString(4));
                                                        total=String.valueOf(rs.getString(5));
               
							
					     %>
          <tr>
            <td><div align="center"><%=comprobante%></div></td>
            <td><div align="center"><%=serie%></div></td>
            <td><div align="center"><%=cliente%></div></td>
            <td><div align="center"><%=fecha%></div></td>
            <td><div align="center">S/. <%=total%></div></td>
            <td><div align="center" ><%=rs.getString(6)%></div></td>
          </tr>
          <%                                         

							
												     } %>
    </table>
    <p>&nbsp;    </p>
        <p>
               
         
          
          <%
                    } catch (SQLException ex) {
                        System.out.println(ex.toString());
                    }         

%>
    </p>
</body>
</html>
