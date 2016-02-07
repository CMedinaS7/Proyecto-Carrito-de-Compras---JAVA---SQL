<%-- 
    Document   : detalle
    Created on : 21/02/2011, 10:09:43 AM
    Author     : Carlos Medina
--%>
<%
String resp = request.getParameter("resp");
%>
<%@page contentType="text/html" pageEncoding="UTF-8" import=" Dao.conexion,java.sql.*,java.util.Date"%>
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
  
  <script>
  $(document).ready(function() {
    $("#tabs").tabs();
  });
  </script>

<script type="text/javascript" src="js/boxOver.js"></script>

  
<link rel="stylesheet" href="js/slimbox-2.03/css/slimbox2.css" type="text/css" media="screen" />
<script type="text/JavaScript" src="js/slimbox-2.03/js/slimbox2.js"></script>
<link href="styles/cloud-zoom.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/cloud-zoom.1.0.2.js"></script>
  
  <script>
  $(document).ready(function() {
    $("#tabs").tabs();
  });
  </script>
  
<script language="JavaScript" type="text/javascript">
<!--
function PopWindow0()
{
window.open('boleta.jsp','','width=510,height=390,menubar=no,scrollbars=yes,toolbar=no,location=no,directories=no,resizable=no,top=0,left=0');
}
//-->
</script>

<script language="JavaScript" type="text/javascript">
<!--
function PopWindow1()
{
window.open('factura.jsp','','width=510,height=390,menubar=no,scrollbars=yes,toolbar=no,location=no,directories=no,resizable=no,top=0,left=0');
}
//-->
</script>


</head>

<%         
    if ("11".equals(resp)) {
    %>
<body onload="PopWindow0()">
 <% } else { %>
 <body>
  <%         
    }
    %>

<%         
    if ("10".equals(resp)) {
    %>
<body onload="PopWindow1()">
 <% } else { %>
 <body>
  <%         
    }
    %>

 <%
                    Connection cn;
                    conexion con = new conexion();
                    try {
                		
		        	    cn = con.conectar();
						
                        Statement stmt = cn.createStatement();
						
						String filtro=request.getParameter("codigo");
						
						String codigo="";
						String nombre="";
						String marca="";
						String color="";
						String precio="";
						String foto="";
						String foto1="";
						String foto2="";
						String des="";
														
						String a="exec DetalleProducto '"+filtro+"'";                
						ResultSet rs = stmt.executeQuery(a);
											
					                      
						  
						while (rs.next()) {
						codigo=String.valueOf(rs.getString(1));
                        nombre=String.valueOf(rs.getString(2));
                        marca=String.valueOf(rs.getString(3));
                        precio=String.valueOf(rs.getString(4));
                        color=String.valueOf(rs.getString(5));
                        des=String.valueOf(rs.getString(6));
						foto="Intranet/" + String.valueOf(rs.getString(7));
                        foto1="Intranet/" + String.valueOf(rs.getString(8));
                        foto2="Intranet/" + String.valueOf(rs.getString(9));
                        	
	    									
											
											
											 } %>
                                             
                                             
                                             
<div class="center_content">
  <div class="center_title_bar"><%=nombre + " " + marca%></div>
  <div class="prod_box_big">
    <div class="top_prod_box_big"></div>
    <div class="center_prod_box_big">
      <table width="551" border="0" align="left">
        <tr>
          <td width="169">
       <div class="zoom-section"></div>
         <div class="zoom-section">
       <div class="zoom-small-image"> <a href='<%=foto1%>' class = 'cloud-zoom' rel="position: 'inside' , showTitle: false, adjustX:-4, adjustY:-4">
       <img src="<%=foto1%>" alt='' width="160" height="160" title="Your caption here"/></a> </div>
      </div>
     <div class="zoom-section" ></div>
          <td width="10">&nbsp;</td>
          <td width="367" rowspan="3"><div id="tabs">
            <ul>
              <li><a href="#fragment-1"><span>Descripcion</span></a></li>
              <li><a href="#fragment-2"><span>Ficha Tecnica</span></a></li>
            </ul>
            <div id="fragment-1">
              <h3 align="left"><%=nombre + " " + marca%></h3>
              <div align="left">
                <ul>
                  <li><%=des%></li>
                  </ul>
              </div>
              </div>
            <div id="fragment-2">
              
                <table width="245" height="215" border="0" align="center" cellpadding="0" cellspacing="0" id="tablaFichaT">
                  <tbody>
                    <tr>
                      <th width="98" height="49"><div align="center">Atributos</div></th>
                      <td width="147"><div align="center"><strong>Detalle</strong></div></td>
                    </tr>
                    <tr id="fila2">
                      <th height="42"><div align="left">Nombre: </div></th>
                      <td><%=nombre%></td>
                    </tr>
                    <tr id="fila1">
                      <th height="47"><div align="left">Marca: </div></th>
                      <td><%=marca%></td>
                    </tr>
                    <tr id="fila2">
                      <th height="44"><div align="left">Precio: </div></th>
                      <td><%="S/." + precio%></td>
                    </tr>
                    <tr id="fila1">
                      <th><div align="left">Color: </div></th>
                      <td><%=color%></td>
                    </tr>
                                    </tbody>
                </table>
              </div>
          </div>
          <p><br />
            <a href="addprod?producto=<%=codigo%>"><img src="images/btn_agregar.png" width="174" height="39" /></a></p>          </td>
        </tr>
        <tr>
          <td rowspan="2">
          <div class="zoom-section"></div>
         <div class="zoom-section">
       <div class="zoom-small-image"> <a href='<%=foto2%>' class = 'cloud-zoom' rel="position: 'inside' , showTitle: false, adjustX:-4, adjustY:-4">
       <img src="<%=foto2%>" alt='' width="160" height="160" title="Your caption here"/></a> </div>
      </div>
     <div class="zoom-section" ></div>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
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

%>
        <% String msg=request.getParameter("msg");
                        if("Ok".equals(msg)){
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
                        
</body>
</html>