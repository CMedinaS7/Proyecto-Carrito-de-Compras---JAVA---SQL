<%-- 
    Document   : carrito
    Created on : 02/03/2011, 03:29:23 PM
    Author     : Carlos Medina
--%>

<%
        HttpSession sesion = request.getSession(true);
	   String Codigo=(String) sesion.getAttribute("codigocliente");
       String rz = (String) sesion.getAttribute("rz");
	   String RUC = (String) sesion.getAttribute("ruc");
	   String Direccion = (String) sesion.getAttribute("dire");
	   String Telefono = (String) sesion.getAttribute("telefono");
	      
		   if ((String) sesion.getAttribute("rz") == null) {
                response.sendRedirect("carrito.jsp?error=!!!!Necesita Loguearse!!!!!!!!!!!");
            }
			
			String resp = request.getParameter("resp");
			String mensaje = request.getParameter("msg");

						
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
.Estilo3 {color: #FFFFFF; font-weight: bold; }
.Estilo4 {
	font-size: 14px;
	font-weight: bold;
}
.Estilo5 {color: #6F8EA2}
.Estilo6 {font-weight: bold}
.Estilo8 {color: #6F8EA2; font-weight: bold; }
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
	left:136px;
	top:180px;
	width:209px;
	height:12px;
	z-index:1;
}
#apDiv2 {
	position:absolute;
	left:134px;
	top:195px;
	width:211px;
	height:16px;
	z-index:1;
}
#apDiv3 {
	position:absolute;
	left:492px;
	top:153px;
	width:60px;
	height:16px;
	z-index:1;
}
#apDiv4 {
	position:absolute;
	left:392px;
	top:194px;
	width:86px;
	height:16px;
	z-index:1;
}
#apDiv5 {
	position:absolute;
	left:386px;
	top:179px;
	width:23px;
	height:16px;
	z-index:1;
}
#apDiv6 {
	position:absolute;
	left:425px;
	top:179px;
	width:70px;
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
	left:264px;
	top:369px;
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
	left:479px;
	top:382px;
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
	left:521px;
	top:181px;
	width:12px;
	height:16px;
	z-index:1;
}
-->
  </style>
</head>
<body>
    <script language='javaScript' >
                            alert("¡Por favor... Acercarse a la tienda a cancelar su pedido en el trancurso de las 24 horas a partir de la realización del mimsmo, de lo contrario sera eliminado!");
                        </script>
<div id="apDiv11">
  <table width="451" border="0">
    <%
                    Connection cn;
                    conexion con = new conexion();
                    try {
                    cn = con.conectar();
		            Statement stmt = cn.createStatement();

			String m="";
                            String producto="";
						
						String marca="";
						
						String serie="";
						
						String color="";
						
						double precio=0;

						int cantidad=0;
						
						double total=0;
						
						double subtotal=0;
						
						double igv=0;
						
						double sub=0;
						
						  java.util.Calendar f = java.util.Calendar.getInstance();

            String dia=String.valueOf(f.get(java.util.Calendar.DATE));
			
            int mes=Integer.parseInt(String.valueOf(f.get(java.util.Calendar.MONTH))) + 1;
			
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


						
						String a="exec mostrarboletax '" +Codigo+ "'";

						ResultSet rs = stmt.executeQuery(a);

						while (rs.next()) {

						producto=String.valueOf(rs.getString(1));
                        marca=String.valueOf(rs.getString(2));
                        precio=Double.parseDouble(rs.getString(3));
					    color=String.valueOf(rs.getString(4));
						cantidad=Integer.parseInt(rs.getString(5));
						serie=String.valueOf(rs.getString(6));
						
                                                subtotal=cantidad * precio;
                                                sub=sub + subtotal;

          					
%>
    <tr>
      <td width="21"><span class="Estilo7"><%=cantidad%></span></td>
      <td width="308"><span class="Estilo7"><%=producto%></span></td>
      <td width="44"><div align="center"><span class="Estilo7"><%=precio%></span></div></td>
      <td width="50"><div align="center"><span class="Estilo7"> <%=subtotal%> </span></div></td>
    </tr>
    <%
		                    }      
									
                                       igv=sub*0.19;
                                       total=sub + igv;
%>
  
  </table>
</div>

                               
<div id="apDiv1"><span class="Estilo7"><%= rz%></span></div>
<div id="apDiv14"><%=igv%></div>
<div id="apDiv15"><%=total%></div>
<div class="center_content">
  <div class="center_title_bar">Imprimir</div>
  <div class="prod_box_big">
    <div id="apDiv10"><%=dia%></div>
    <div class="top_prod_box_big"></div>
    <div class="center_prod_box_big">
     
      <p><img src="img/FACTURA.png" width="505" height="385">        </p>
      <table width="207" border="0" align="center">
        <tr>
          <td height="52"><div align="center"><a href="confirmar1?cliente=<%=Codigo%>&confirmar=<%=Codigo%>"><img src="img/confirmar.png" width="102" height="29" border="0"></a>
          </div>
          <div align="center"></div></td>
        </tr>
      </table>

    </div>
    <div class="bottom_prod_box_big"></div>
  </div>
</div>
        
      
        
                        
<div id="apDiv2"><%=Direccion%></div>
<div id="apDiv4"><%=RUC%></div>
<div id="apDiv5"><%=dia%></div>
<div id="apDiv6"><%=m%></div>
<div id="apDiv7">1</div>
<div id="apDiv8">1</div>
<div id="apDiv9"><%=m%></div>
<div id="apDiv12"><%=sub%></div>
<div id="apDiv3"><%=serie%></div>
<%
                    } catch (SQLException ex) {
                        System.out.println(ex.toString());
                    }

              
 %>
                        
                      
 

</body>
</html>