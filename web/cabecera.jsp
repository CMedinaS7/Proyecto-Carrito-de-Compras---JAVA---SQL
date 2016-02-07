<%-- 
    Document   : carrito
    Created on : 02/03/2011, 03:29:23 PM
    Author     : Carlos Medina
--%>

<%
    
			String cli=request.getParameter("cli");
			
			
						
            %>
            

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
.Estilo7 {font-size: 10px}
#apDiv8 {
	position:absolute;
	left:367px;
	top:373px;
	width:30px;
	height:12px;
	z-index:1;
}
#apDiv1 {
	position:absolute;
	left:82px;
	top:117px;
	width:209px;
	height:12px;
	z-index:1;
}
#apDiv2 {
	position:absolute;
	left:83px;
	top:133px;
	width:211px;
	height:16px;
	z-index:1;
}
#apDiv3 {
	position:absolute;
	left:337px;
	top:117px;
	width:22px;
	height:16px;
	z-index:1;
}
#apDiv4 {
	position:absolute;
	left:376px;
	top:116px;
	width:67px;
	height:16px;
	z-index:1;
}
#apDiv5 {
	position:absolute;
	left:469px;
	top:119px;
	width:14px;
	height:16px;
	z-index:1;
}
#apDiv6 {
	position:absolute;
	left:342px;
	top:133px;
	width:103px;
	height:16px;
	z-index:1;
}
#apDiv7 {
	position:absolute;
	left:521px;
	top:181px;
	width:12px;
	height:16px;
	z-index:1;
}
#apDiv9 {
	position:absolute;
	left:265px;
	top:365px;
	width:76px;
	height:16px;
	z-index:1;
}
#apDiv10 {
	position:absolute;
	left:221px;
	top:369px;
	width:30px;
	height:12px;
	z-index:1;
}
#apDiv11 {
	position:absolute;
	left:79px;
	top:233px;
	width:23px;
	height:16px;
	z-index:1;
}
#apDiv12 {
	position:absolute;
	left:478px;
	top:363px;
	width:61px;
	height:13px;
	z-index:2;
}
#apDiv13 {	position:absolute;
	left:264px;
	top:369px;
	width:76px;
	height:16px;
	z-index:1;
}
#apDiv14 {
	position:absolute;
	left:480px;
	top:378px;
	width:59px;
	height:15px;
	z-index:3;
}
#apDiv15 {
	position:absolute;
	left:479px;
	top:400px;
	width:59px;
	height:16px;
	z-index:4;
}
#apDiv16 {	position:absolute;
	left:264px;
	top:369px;
	width:76px;
	height:16px;
	z-index:1;
}
#apDiv17 {	position:absolute;
	left:82px;
	top:114px;
	width:209px;
	height:12px;
	z-index:1;
}
#apDiv18 {	position:absolute;
	left:82px;
	top:114px;
	width:209px;
	height:12px;
	z-index:1;
}
#apDiv19 {	position:absolute;
	left:344px;
	top:113px;
	width:22px;
	height:16px;
	z-index:1;
}
#apDiv20 {	position:absolute;
	left:344px;
	top:113px;
	width:22px;
	height:16px;
	z-index:1;
}
#apDiv21 {	position:absolute;
	left:344px;
	top:113px;
	width:22px;
	height:16px;
	z-index:1;
}
-->
  </style>
</head>
<%
                    Connection cn;
                    conexion con = new conexion();
                    try {
                    cn = con.conectar();
		            Statement stmt = cn.createStatement();

		
						  java.util.Calendar f = java.util.Calendar.getInstance();

            String dia=String.valueOf(f.get(java.util.Calendar.DATE));
			
            int mes=Integer.parseInt(String.valueOf(f.get(java.util.Calendar.MONTH))) + 1;
			String m="";
			if (mes ==1){
			m="Enero";
			}
			
			
			if (mes ==2){
			m="Febrero";
			}
			
			
			if (mes ==3){
			m="Marzo";
			}
			
			
			if (mes ==4){
			m="Abril";
			}
			
			
			if (mes ==5){
			m="Mayo";
			}
			
			
			if (mes ==6){
			m="Junio";
			}
			
			
			if (mes ==7){
			m="Julio";
			}
			
			
			if (mes ==8){
			m="Agosto";
			}
			
			
			if (mes ==9){
			m="Septiembre";
			}
			
			
			if (mes ==10){
			m="Octubre";
			}
			
			
			if (mes ==11){
			m="Noviembre";
			}
			
			
			if (mes ==12){
			m="Diciembre";
			}
			
            String ano=String.valueOf(f.get(java.util.Calendar.YEAR));
	
                        String codigo="";
						
						String dir="";
						
						String tel="";

						String nombre="";
						
						String doc="";
						

						
						String a="exec seleccionar_cliente '" +cli +"'";

						ResultSet rs = stmt.executeQuery(a);

						while (rs.next()) {

						codigo=String.valueOf(rs.getString(1));
                        dir=String.valueOf(rs.getString(2));
                        tel=String.valueOf(rs.getString(3));
					    nombre=String.valueOf(rs.getString(4));
						doc=String.valueOf(rs.getString(5));}
						
          					
%>
<body>
<div id="apDiv2"><span class="Estilo7"> <%=dir%> </span></div>
<%if(doc.length() == 11){%>
<img src="img/FACTURA0.png" width="505" height="155"><%}else{%><img src="img/BOLETA DE VENTA0.png" width="505" height="155"><%}%>
<div id="apDiv3"><span class="Estilo7"> <%=dia%> </span></div>
<div id="apDiv1"><span class="Estilo7">
  <%=nombre%>
</span></div>
<div id="apDiv4"><span class="Estilo7"> <%=m%> </span></div>
<div id="apDiv5">1</div>
<div id="apDiv6"><span class="Estilo7"> <%=doc%> </span></div>

</body>
<%
                    } catch (SQLException ex) {
                        System.out.println(ex.toString());
                    }%>
	
</html>
