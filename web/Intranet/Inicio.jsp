<%-- 
    Document   : Inicio
    Created on : 13/02/2011, 02:48:35 PM
    Author     : Carlos Medina
--%>
<%
            HttpSession sesion = request.getSession(true);
            String Nombres = (String) sesion.getAttribute("nombres");
            String Apellidos = (String) sesion.getAttribute("apellidos");
			String DNI = (String) sesion.getAttribute("dni");
			String Telefono = (String) sesion.getAttribute("telefono");
			String Cargo = (String) sesion.getAttribute("cargo");
			   if ((String) sesion.getAttribute("nombres") == null) {
                response.sendRedirect("../intranet.jsp?error=!!!!Necesita Loguearse!!!!!!!!!!!");
            }
			
            %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />		
		<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
				<link rel="shortcut icon" type="image/x-icon" href="../img/icon.ico" />
		<link rel="alternate" type="application/rss+xml" title="RSS 2.0" href="blog/indexd784.html?feed=rss2" />
		<script src="../www.google-analytics.com/urchin.js" type="text/javascript"></script>
		<script type="text/javascript">
			_uacct = "UA-1868752-8";
			urchinTracker();
		</script>
		<script src="effects.js" type="text/javascript"></script>
		<title>Inicio</title>
        <style type="text/css">
<!--
.Estilo1 {
	color: #002991;
	font-weight: bold;
	font-size: 12px;
}
.Estilo2 {color: #000000}
-->
        </style>
</head>
	<body>
		<div id="general">
			
<div id="top">
	<div id="menu">
		<ul>
			<li id="perfil"><a href="Perfil.jsp" title="Perfil"></a></li>			
			<li id="personal"><a href="Personal.jsp" title="Personal"></a></li>
			<li id="ventas"><a href="Ventas.jsp" title="Ventas"></a></li>
			<li id="producto"><a href="Producto.jsp" title="Producto"></a></li>
			<li id="cliente"><a href="Cliente.jsp" title="Cliente"></a></li>
			<li id="inicio"><a href="Inicio.jsp" title="Inicio"></a></li>
     
		</ul>
	</div>			
</div>
<div id="topbody">
	<div align="left"><a href="index.html" title="Home"></a>
      <table width="889" border="0">
        <tr>
          <td width="41">&nbsp;</td>
          <td width="402"><a href="index.html" title="Home"><img src="images/eve_sign.jpg" alt="everaldo's logo" width="136" height="39"/></a></td>
          <td width="366"><div align="right"><strong><%=Cargo%> : <%=Nombres + ' ' + Apellidos%></strong></div></td>
          <td width="62"><div align="center"><a href="../logoutpersonal"><img src="images/button_cancel.png" alt="Salir" width="22" height="22"></a></div></td>
        </tr>
      </table>
	</div>
	<div></div>
</div>

<div id="body">
				<div class="border-splash"></div>
				<div id="splash" onmouseover="Stop();" onmouseout="Start();">
                  <!--<map name="mapname" id="mapname">
						<area shape="circle" href="javascript: iniCross('Previous');"  title="Change splash." coords="825,152,8" alt="previous" />
						<area shape="circle" href="javascript: iniCross('Next');" coords="841,152,8" alt="next" />						
					</map>-->
                  <img src="images/splash.jpg" usemap="#mapname" alt="splash everaldo.com" /> <img src="images/splash2.jpg" usemap="#mapname" alt="splash2 everaldo.com" /> </div>
	<div class="border-splash"></div>
				<div id="body-boxes">
					<div id="box1">
                    	<div id="bx1_i"><img src="images/Internet Connection Tools.png" width="128" height="128"></div>
						<div id="bx1_t"><span class="Estilo1">&iquest;QUE ES INTRANET?<br>
						</span><br/>
					    Intranet es una red de ordenadores privados que utiliza tecnolog&iacute;a (Internet) para compartir informacion dentro de una Organizaci&oacute;n.</div>				
													
				  </div>
					<div id="box2">
                    	<div id="bx2_i">
							<a href="#"><img src="images/image2.jpg" alt="image2"/></a>						</div>
			    <div id="bx2_t"><span class="Estilo1">BENEFICIOS:</span>
						  <p class="stock-text">- Ingresar Datos<br>
					      - Modificar Informaci&oacute;n<br>
						  - Eliminar Informaci&oacute;n<br>
						  - Buscar Datos.<br>
						  - Reportar Informaci&oacute;n<span class="free_text"><br>
						  </span></p>
					    </div>                   																	
				  </div>
					<div id="box3">
                    	<div id="bx_i"><img src="images/Photoshop-CS4.png" width="105" height="106"></div>
					  <div id="bx_t"><span class="Estilo1">DESARROLLADOR:</span>
<p align="center" class="text1">							
								<span class="sub_titles">Porta-Solutions S.A.C.</span><br/>
						  </p>
						</div>																								
				  </div>
					<div class="border-splash"></div>				
				</div>
				<div id="body-boxes2">
					<div id="box4">
					  <table width="281" border="0">
                        <tr>
                          <td width="77" height="44"><div align="right"><span class="barrafondo"><img src="images/aim.png" width="22" height="22"></span></div></td>
                          <td width="194"><div align="center"><span class="barrafondo"><a href="Contacto.jsp">Informar al administrador sobre algun Problema</a></span></div></td>
                        </tr>
                      </table>
				    </div>
					<div id="box5">
					  <p align="center" class="rsstext"><span class="barrafondo">&copy; Copyright 2011 EMPRESA S.A.C. - Trujillo .</span></p>
				  </div>
					<div id="box6">
						<p class="bricon"><a href="http://www.google.com/chrome?hl=es-419&brand=CHJL&utm_campaign=es-419&utm_source=es-419-pe-ha-BKWS&utm_medium=ha" title="Idioma Español" target="_blank">Optimizado para Google Chrome.</a></p>					
				  </div>
				  <!--<div class="clear_boxes"></div>-->
				</div>
			</div>
	<div id="bottom-body">
		<p id="relio"><a href="#" target="_blank" title="Porta-Solutions"></a></p>								
		<p id="yellowicon"><a href="#" target="_blank" title="Porta-Solutions"></a></p>
	</div>		
</div>
	</body>
</html>
