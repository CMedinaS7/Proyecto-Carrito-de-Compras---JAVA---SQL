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
				String resp = request.getParameter("resp");
				String mensaje = request.getParameter("msg");
			
	
            %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />		
		<link href="ventas/style.css" rel="stylesheet" type="text/css" media="screen" />
				<link rel="shortcut icon" type="image/x-icon" href="../img/icon.ico" />
		<link rel="alternate" type="application/rss+xml" title="RSS 2.0" href="blog/indexd784.html?feed=rss2" />
		<script src="../www.google-analytics.com/urchin.js" type="text/javascript"></script>
		<script type="text/javascript">
			_uacct = "UA-1868752-8";
			urchinTracker();
		</script>
		<script src="effects.js" type="text/javascript"></script>
		<title>Ventas</title>
	    <style type="text/css">
<!--
.Estilo2 {color: #FFFFFF}
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
            <table width="872" border="0">
              <tr>
                <td width="1">&nbsp;</td>
                <td width="366"><a href="index.html" title="Home"><img src="images/eve_sign.jpg" alt="everaldo's logo" width="136" height="39"/></a></td>
                <td width="425"><div align="right"><strong><%=Cargo%> : <%=Nombres + ' ' + Apellidos%></strong></div></td>
                <td width="62"><div align="center"><a href="../logoutpersonal"><img src="images/button_cancel.png" alt="Salir" width="22" height="22"></a></div></td>
              </tr>
            </table>
        </div>
	    <div></div>
      </div>
	  <div id="body">
        <div class="border-splash"></div>
	    <!--<div class="topof"></div>-->
        <div id="splashdd">
          <div align="center"><img src="images/cliente.jpg"  alt="splash crystal" /></div>
        </div>
	    <div class="border-splash"></div>
	    <div id="side_sep">
          <div id="right_box">
            <div class="clear"></div>
            <p id="phi_title"><a href="Pedidos.jsp" target="pedidos">Pedidos por Pagar</a><br>
            </p>
            <form action="Pedidos.jsp" method="post" name="form1" target="pedidos">
              Ingrese Codigo Pedido o IdCliente: 
                <input type="text" name="txtfiltro" id="txtfiltro">
                        <label>
                        <input type="submit" name="button" id="button" value="Filtrar">
              </label>
            </form>
            <p>
              <iframe name="pedidos" width="600px" height="200px"  src="Pedidos.jsp" 
scrolling="yes" frameborder="1px" > </iframe>
            </p>
            <p id="obj_title"> <a href="Compras.jsp" target="ventas">Ventas por Recoger</a><br>
            </p>
            <form action="Compras.jsp" method="post" name="form1" target="ventas">
              Ingrese Codigo Pedido o IdCliente:
              <input type="text" name="txtfiltro" id="txtfiltro">
    <label>
    <input type="submit" name="button2" id="button2" value="Filtrar">
    </label>
            </form>
            <p>
              <iframe name="ventas" width="600px" height="200px"  src="Compras.jsp" 
scrolling="yes" frameborder="1px" > </iframe>
            </p>
          </div>
	      <div id="sidebar">
            <div class="clear"></div>
	        <div class="sep2"></div>
	        <div id="links_side">
              <p id="title_links">Reportes Mensuales</p>
	          <p class="links"><a href="../jasper/TotalVentasMes.pdf" target="_blank">- Total Ventas</a></p>
	          <p class="links"><a href="../jasper/ProductoTopmes.pdf" target="_blank">- Producto Top</a></p>
	          <p class="links"><a href="../jasper/ClientesTopmes.pdf" target="_blank">- Cliente Top</a></p>
	        </div>
	        <div class="sep2"></div>
	        <div id="search_side">
	          <p id="title_search">Reportes Anuales</p>
	          <p class="links"><a href="../jasper/TotalVentasAno.pdf" target="_blank">- Total Ventas</a></p>
              <p class="links"><a href="../jasper/ProductoTopAno.pdf" target="_blank">- Producto Top</a></p>
              <p class="links"><a href="../jasper/ClientesTopAno.pdf" target="_blank">- Cliente Top</a></p>
	        </div>
	        <div class="sep2"></div>
	        </div>
	      <div class="border-splash"></div>
        </div>
	    <div id="clear-body"></div>
      </div>
	  <script type="text/javascript">
	var input = document.getElementById('q');
	input.setAttribute('type', 'search');
    </script>
      <div id="bottom-body">
        <p id="relio"><a href="#" target="_blank" title="Porta-Solutions"></a></p>
        <p id="yellowicon"><a href="#" target="_blank" title="Porta-Solutions"></a></p>
      </div>
    </div>
</body>
</html>
