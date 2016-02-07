<%-- 
    Document   : slide
    Created on : 28/02/2011, 07:07:25 PM
    Author     : Carlos Medina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import=" Dao.conexion,java.sql.*,java.util.Date"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
   <head>
	<title>G&amp;M - COMPUTER - 2011</title>
	
		<link href="themes/theme081/css/global.css" rel="stylesheet" type="text/css" media="all" />
        
		<script type="text/javascript" src="js/tools.js"></script>
        
	<script type="text/javascript">
		var baseDir = 'index.html';
		var static_token = 'c675fe4e0ade9cadf7dd1a144c0fd446';
		var token = '091afe36f409f39cc15d6c3e389106c0';
		var priceDisplayPrecision = 2;
		var roundMode = 2;
	</script>
	<script type="text/javascript" src="js/jquery/jquery-1.2.6.pack.js"></script>
	<script type="text/javascript" src="js/jquery/jquery.easing.1.3.js"></script>
	<script type="text/javascript" src="js/jquery/jquery.hotkeys-0.7.8-packed.js"></script>
	<!-- Block search module HEADER -->
    
<link rel="stylesheet" type="text/css" href="css/jquery.autocomplete.css" />

<script type="text/javascript" src="js/jquery/jquery.autocomplete.js"></script>
	
<link rel="stylesheet" type="text/css" href="modules/carouselnc/css/carouselnc-min.css" />


</head>
<body id="index">
<noscript>
</noscript>

<div id="wrapper3">
		<!-- Header -->
		<div id="columns">
			<!-- Left -->
			<div id="left_column" class="column">
		
			</div>
			<!-- Center -->
			<div id="center_column" class="center_column">
	<!--
  jCarousel library
-->
<script type="text/javascript" src="modules/homecarousel/jcarousel/lib/jquery.jcarousel.pack.js"></script>
<!--
  jCarousel core stylesheet
-->
<link rel="stylesheet" type="text/css" href="modules/homecarousel/jcarousel/lib/jquery.jcarousel.css" />
<!--
  jCarousel skin stylesheet

<link rel="stylesheet" type="text/css" href="http://cms.template-help.com/prestashop_32444/modules/homecarousel/jcarousel/skins/tango/skin.css" />
-->
	<script type="text/javascript">
		var carousel_autoplay = 5;
		var carousel_items_visible = 4;
		var carousel_scroll = 1;
	</script>
<script type="text/javascript" src="modules/homecarousel/homecarousel.js"></script>


<div id="homecarousel">

<h4>Deals of the day</h4>
  <ul id="mycarousel" class="jcarousel-skin-tango">
					
                             
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
						String foto="";
														
						String a="exec carrusel";               
						ResultSet rs = stmt.executeQuery(a);
											
					                      
						  
						while (rs.next()) {
						codigo=String.valueOf(rs.getString(1));
                        nombre=String.valueOf(rs.getString(2));
                        marca=String.valueOf(rs.getString(3));
                        color=String.valueOf(rs.getString(4));
                        foto="Intranet/" + String.valueOf(rs.getString(5));
                        	
	    														
					     %>

 
          <li>
              <a  target="_blank" class="product_image" href="details.jsp?codigo=<%=codigo%>" title="<%=nombre%>">
				<img src="<%=foto%>" width="180" height="120" alt="<%=nombre%>" />			</a>
			<div class="homecarousel_product_info"><h5><a href="details.jsp?codigo=<%=codigo%>" title="<%=nombre%>"><%=nombre + " " + marca%></a></h5>							</div>
		</li>
        
        <% } %>
        
		</ul>
</div>
<!-- /MODULE Home Featured Products -->
<!-- MODULE Home Featured Products -->



</div>
</div>
</div>
	
<script type="text/javascript" src="themes/theme081/js/ga.js"></script>

</body>
          <%
                    } catch (SQLException ex) {
                        System.out.println(ex.toString());
                    }         

%>
<!-- Mirrored from cms.template-help.com/prestashop_32444/ by HTTrack Website Copier/3.x [XR&CO'2010], Thu, 10 Feb 2011 23:05:37 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=utf-8"><!-- /Added by HTTrack -->
</html>
