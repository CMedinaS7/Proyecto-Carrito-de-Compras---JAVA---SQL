<%-- 
    Document   : carrito
    Created on : 02/03/2011, 03:29:23 PM
    Author     : Carlos Medina
--%>
<%
        HttpSession sesion = request.getSession(true);
	   String Codigo=(String) sesion.getAttribute("codigocliente");
       String rz = (String) sesion.getAttribute("rz");
       String rubro = (String) sesion.getAttribute("rubro");
	   String RUC = (String) sesion.getAttribute("ruc");
	   String Direccion = (String) sesion.getAttribute("direccion");
	   String Telefono = (String) sesion.getAttribute("tele");
	      
			
			String resp = request.getParameter("resp");
			String mensaje = request.getParameter("msg");
			String tipo = request.getParameter("tipo");

                        SecureRandom secureRand =SecureRandom.getInstance("SHA1PRNG");

                        int num= secureRand.nextInt(9000);
						
            %>
            
<%@page contentType="text/html" pageEncoding="UTF-8" import="Dao.conexion,java.sql.*,java.security.SecureRandom"%>
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
.Estilo5 {color: #6F8EA2}
.Estilo6 {font-weight: bold}
.Estilo8 {color: #6F8EA2; font-weight: bold; }
-->
  </style>
</head>
<body>
                               
<div class="center_content">
  <div class="center_title_bar">Login Tarjeta de Credito</div>
  <div class="prod_box_big">
    <div class="top_prod_box_big"></div>
    <div class="center_prod_box_big">
      <form action="transaccion" method="post">
        <table width="241" border="0" align="center" class="ui-state-error">
        <tr>
          <td height="41" colspan="2"><div align="center" class="Estilo4">LOGIN TARJETA</div></td>
        </tr>
        <tr>
          <td width="83">&nbsp;</td>
          <td><label>
            <input name="txtcliente" type="hidden" id="txtcliente" value="<%=Codigo%>">
            <input name="txttipo" type="hidden" id="txttipo" value="<%=tipo%>">
            <input name="num" type="hidden" id="num" value="<%=num%>">
          </label></td>
        </tr>
        <tr>
          <td><div align="right" class="Estilo8">N&ordm; TARJETA:</div></td>
          <td width="146"><label>
            <input name="txttarjeta" type="text" id="txttarjeta" maxlength="16">
          </label></td>
        </tr>
        <tr>
          <td><div align="right" class="Estilo8">CLAVE:</div></td>
          <td><input name="txtclave" type="password" id="txtclave" maxlength="4"></td>
        </tr>
        <tr>
          <td height="52" colspan="2"><div align="center">
            <input type="image" name="imageField2" id="imageField2" src="img/regresar.png" width="102" height="29">
            <input type="image" name="imageField" id="imageField" src="img/login.png" width="102" height="29">
          </div>            
            <div align="center"></div></td>
          </tr>
      </table>
      </form>
    </div>
    <div class="bottom_prod_box_big"></div>
  </div>
</div>
        <% String msg=request.getParameter("msg");
                        

 if("2".equals(msg)){
                        %>
<script language='javaScript' >
                            alert("Datos Incorrectos, Verificar!");
                        </script>
<% } %>
      
                                 
</body>
</html>
