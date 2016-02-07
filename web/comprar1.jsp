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
.Estilo3 {color: #FFFFFF; font-weight: bold; }
.Estilo4 {
	font-size: 14px;
	font-weight: bold;
}
.Estilo8 {color: #6F8EA2; font-weight: bold; }
.Estilo9 {color: #FEF6F3}
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
          <td width="177"><div align="center" class="Estilo3">PRODUCTO</div></td>
          <td width="81"><div align="center" class="Estilo3">MARCA</div></td>
          <td width="39"><div align="center" class="Estilo3">PRECIO</div></td>
          <td width="88"><div align="center" class="Estilo3">COLOR</div></td>
          <td width="55"><div align="center" class="Estilo3">CANTIDAD</div></td>
          <td width="58"><div align="center" class="Estilo3">SUBTOTAL</div></td>
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
          <td><%=nombre%></td>
          <td><%=marca%></td>
          <td><%= "S/. " + precio%></td>
          <td><%=color%></td>
          <td><%=cantidad%></td>
          <td><%=subtotal%></td>
          </FORM>
        </tr>
        
       <% } %>
       
        <tr bgcolor="#84768C">
          <td colspan="5"><div align="right"><strong>TOTAL</strong></div></td>
          <td bgcolor="#84768C"><%=total%></td>
        </tr>
      </table>
      <form action="logincliente" method="post">
        <table width="313" border="0" align="center" class="ui-state-error">
        <tr>
          <td height="41" colspan="3"><div align="center" class="Estilo4">LOGUEARSE</div></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td><div align="right" class="Estilo8">TIPO DE USUARIO:</div></td>
          <td><label>
            <select name="combo" id="combo">
              <option value="N">NATURAL</option>
              <option value="J">JURIDICO</option>
            </select>
          </label></td>
        </tr>
        <tr>
          <td><span class="Estilo9">dffff</span></td>
          <td><div align="right" class="Estilo8">USUARIO:</div></td>
          <td width="190"><label>
          <input type="text" name="txtcliente" id="txtcliente">
          </label></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td><div align="right" class="Estilo8">CLAVE:</div></td>
          <td><input type="password" name="txtclave" id="txtclave"></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td height="52" colspan="2"><div align="center"><a href="javascript:history.back()"><img src="img/regresar.png" width="102" height="29" border="0"></a>
            <input name="logeo" type="image" id="logeo" src="img/login.png" align="left" width="102" height="29">
          </div>            <div>
              
              <div align="left"></div>
            </div></td>
          </tr>
      </table>
        <br>
      Si no esta registrado haga <a href="registro.html" target="_blank">click aqui</a>
      </form>
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
                            alert("Los datos ingresados son Incorrectos!!");
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