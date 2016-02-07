<%-- 
    Document   : carrito
    Created on : 02/03/2011, 03:29:23 PM
    Author     : Carlos Medina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="Dao.conexion,java.sql.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<title>G&amp;M - COMPUTER - 2011</title>

<link rel="stylesheet" type="text/css" href="style.css" />
<!--[if IE 6]>
<link rel="stylesheet" type="text/css" href="iecss.css" />
<![endif]-->

  <link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="stylesheet" type="text/css"/>
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>
  <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"></script>
  <script type="text/javascript" src="js/vanadium.js"></script>
  
<script type="text/javascript" src="js/boxOver.js"></script>

  
<link rel="stylesheet" href="js/slimbox-2.03/css/slimbox2.css" type="text/css" media="screen" />
<script type="text/JavaScript" src="js/slimbox-2.03/js/slimbox2.js"></script>
<link href="styles/cloud-zoom.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/cloud-zoom.1.0.2.js"></script>

  <style type="text/css">
<!--
.Estilo1 {
	color: #003333;
	font-weight: bold;
}
.Estilo2 {color: #FFFFFF}
.Estilo3 {color: #FFFFFF; font-weight: bold; }
-->
  </style>
</head>
<body>
                               
<div class="center_content">
  <div class="prod_box_big">
    <div class="top_prod_box_big"></div>
    <div class="center_prod_box_big">
      <table width="538" border="1" bordercolor="#F7F3F3">
        <tr bgcolor="#84768C">
          <td width="81"><div align="center" class="Estilo1 Estilo2">FOTO</div></td>
          <td width="70"><div align="center" class="Estilo3">PRODUCTO</div></td>
          <td width="52"><div align="center" class="Estilo3">MARCA</div></td>
          <td width="42"><div align="center" class="Estilo3">PRECIO</div></td>
          <td width="46"><div align="center" class="Estilo3">COLOR</div></td>
          <td width="69"><div align="center" class="Estilo3">CANTIDAD</div></td>
          <td width="62"><div align="center" class="Estilo3">SUBTOTAL</div></td>
          <td width="64"><div align="center" class="Estilo3">BOTONES</div></td>
        </tr>

        <%
                    Connection cn;
                    conexion con = new conexion();
                    try {
                    cn = con.conectar();
		    Statement stmt = cn.createStatement();

						String codigo="";

						String nombre="";

						String marca="";

						String color="";

						String precio="";

						String foto="";

                                                String cantidad="";

                                                int stock=0;
												int count=0;

						int subtotal=0;

						int total=0;

						String a="exec mostrarcarrito";

						ResultSet rs = stmt.executeQuery(a);

						while (rs.next()) {

						codigo=String.valueOf(rs.getString(1));
                                                nombre=String.valueOf(rs.getString(2));
                                                marca=String.valueOf(rs.getString(3));
					        precio=String.valueOf(rs.getString(4));
                                                color=String.valueOf(rs.getString(5));
						foto="Intranet/" + String.valueOf(rs.getString(6));
                                                cantidad=String.valueOf(rs.getString(7));
                                                stock=Integer.valueOf(rs.getString(8));
                                                

                                                subtotal=Integer.parseInt(precio)*Integer.parseInt(cantidad);
						total=total+subtotal;
						count=count+1;
											 %>
                                             
        
        <tr bordercolor="0" bgcolor="#FFFFCC">
          <FORM action="actualizacarrito" method="post">
          <td><p><img src="<%=foto%>" alt='' width="80" height="60" title="<%=nombre%>"/></p>
            </td>
          <td><%=nombre%></td>
          <td><%=marca%></td>
          <td><%= "S/. " + precio%></td>
          <td><%=color%></td>
          <td>
       
            <div align="center">
              <input name="txtcantidad" type="text" id="txtcantidad" value=<%=cantidad%> size="8">
            </div></td>
          <td><%=subtotal%></td>
          <td><input name="stock" type="hidden" id="stock" value="<%=stock%>">
          <input name="codigo" type="hidden" id="codigo" value="<%=codigo%>">
          <a href="quitarprod?codigo=<%=codigo%>"><img src="img/button_cancel.png" width="30" height="30" border="0"></a>
          <input name="actualizar" type="image" id="actualizar" src="img/Coquette refresh.png" alt="Actualizar Cantidad" width="30" height="30">
          </td>
          </FORM>
        </tr>
        
       <% } %>
       
        <tr bgcolor="#84768C">
          <td colspan="6"><div align="right" class="Estilo3">TOTAL</div>
            <div align="right"></div></td>
          <td colspan="2"><%=total%></td>
        </tr>
      </table>
      <table width="245" border="0" align="center">
        <tr>
          <td><div align="center"><a href="javascript:history.back()"><img src="img/seguir.png" width="102" height="29" border="0"></a></div></td>
          <td><div align="center"> <a href="comprar1.jsp"><img src="img/comprar.png" width="102" height="29" border="0"></a></div></td>
        </tr>
      </table>
    </div>
    <div class="bottom_prod_box_big"></div>
  </div>
</div>
        
      
          <%
                    } catch (SQLException ex) {
                        System.out.println(ex.toString());
                    }         


    String msg=request.getParameter("msg");
                        if("ok".equals(msg)){
                        %>
<script language='javaScript' >
                            alert("Producto Agregado Correctamente!");
                        </script>
<% }else{
                            if(msg=="Falso"){
                      %>
    <script language='javaScript'>
                           alert("Error al Agregar Producto");
                        </script>
<% }} %>

<%
 if("1".equals(msg)){
                        %>
<script language='javaScript' >
                            alert("Cantidad Modificada!");
                        </script>
<% } %>


<%
 if("2".equals(msg)){
                        %>
<script language='javaScript' >
                            alert("Error al Modificar Cantidad!");
                        </script>
<% } %>

<%
 if("7".equals(msg)){
                        %>
<script language='javaScript' >
                            alert("Cantidad no disponible!");
                        </script>
<% } %>
<%
 if("10".equals(msg)){
                        %>
<script language='javaScript' >
                            alert("Producto eliminado!");
                        </script>
<% } %>
<%
 if("11".equals(msg)){
                        %>
<script language='javaScript' >
                            alert("Error al Quitar Producto!");
                        </script>
<% } %>

                        
</body>
</html>