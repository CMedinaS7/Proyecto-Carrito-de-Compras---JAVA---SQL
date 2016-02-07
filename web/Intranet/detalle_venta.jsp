<%-- 
    Document   : detalle_venta
    Created on : 16/02/2011, 06:06:47 PM
    Author     : Carlos Medina
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"  import=" Dao.conexion,java.sql.*,java.util.Date"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <table width="233" height="173" border="0" align="center">
      <tr>
        <td width="40" height="169">&nbsp;</td>
        <td width="201"><div align="center"><span class="more"><strong>LISTA DE PRODUCTOS</strong></span><br>
          </div>
            <%
           String comprobante = request.getParameter("comprobante");
			String producto="";
			String foto="";
			String precio="";
		        String Subtotal="";
        	String a="exec DetalleVenta '" +comprobante+"'";
            Connection cn;
            conexion con = new conexion();
            try {

                        cn = con.conectar();
			Statement stmt = cn.createStatement();

			ResultSet rs = stmt.executeQuery(a);
					       
							
			while (rs.next()) {

                            producto=String.valueOf(rs.getString(1));
                            precio=String.valueOf(rs.getString(2));
                            foto=String.valueOf(rs.getString(3));
                            Subtotal=String.valueOf(rs.getString(4));
                           %>
            <table width="205" border="0" align="center" background="images/fondo.png" bgcolor="#CCCCCC">
              <tr>
                <td width="78" rowspan="2" bgcolor="#CCCCCC"><img src="<%=foto%>" width="70" height="76"></td>
                <td width="111" height="39" bgcolor="#CCCCCC"><%=producto%></td>
              </tr>
              <tr>
                <td bgcolor="#CCCCCC">S/.<%=precio%></td>
              </tr>
              </table>
              <br>
          <%
                    }} catch (SQLException ex) {
                        System.out.println(ex.toString());
                    }

%>
            <br></td>
        <td width="30"><p>&nbsp;</p></td>
      </tr>
    </table>
    <h1></h1>
        
</body>
</html>
