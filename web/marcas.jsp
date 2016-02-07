<%-- 
    Document   : prod_nuevos
    Created on : 22/02/2011, 07:04:55 PM
    Author     : Carlos Medina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"  import="Dao.conexion,java.sql.*,java.util.Date"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>G&amp;M - COMPUTER - 2011</title>
                <link rel="stylesheet" type="text/css" href="style.css" />
    </head>
    <body> <%
                    Connection cn;
                    conexion con = new conexion();
                    try {
                		
		        	    cn = con.conectar();
						
                        Statement stmt = cn.createStatement();
						String id=request.getParameter("marca");
						String codigo="";
						String nombre="";
						String marca="";
						String color="";
						String foto="";
						int pre=0;
						int precio=0;
														
						String a="exec buscarmarca '" + id + "'";               
						ResultSet rs = stmt.executeQuery(a);
											
					                      
						  
						while (rs.next()) {
						codigo=String.valueOf(rs.getString(1));
                        nombre=String.valueOf(rs.getString(2));
                        marca=String.valueOf(rs.getString(3));
                        color=String.valueOf(rs.getString(4));
                        foto="Intranet/" + String.valueOf(rs.getString(5));
                       	precio=Integer.parseInt(rs.getString(6));
                        pre=precio - 87;
                        

	    														
					     %>
                         
        <div class="prod_box">
          <div class="top_prod_box"></div>
          <div class="center_prod_box">
            <div class="product_title"><a href="details.jsp?codigo=<%=codigo%>" target="_blank"><%=nombre + " " + marca%></a></div>
            <div class="product_img"><a href="details.jsp?codigo=<%=codigo%>" target="_blank"><img src="<%=foto%>" alt="" width="160" height="105" border="0" title="" /></a></div>
            <div class="prod_price"><span class="reduce"><%=pre%></span> <span class="price"><%=precio%></span></div>
          </div>
          <div class="bottom_prod_box"></div>
          <div class="prod_details_tab"> <a href="addprod?producto=<%=codigo%>" title="header=[Agregar a carrito] body=[&nbsp;] fade=[on]"><img src="images/cart.gif" alt="" title="" border="0" class="left_bt" /></a><a href="details.jsp?codigo=<%=codigo%>" target="_blank" class="prod_details">detalles</a> </div>
    </div>        
        <% } %></body>
          <%
                    } catch (SQLException ex) {
                        System.out.println(ex.toString());
                    }         

%>
</html>
