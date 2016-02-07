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

			String doc="";
			  java.util.Calendar f = java.util.Calendar.getInstance();
                        
                                String dia=String.valueOf(f.get(java.util.Calendar.DATE));
                                int mes=Integer.parseInt(String.valueOf(f.get(java.util.Calendar.MONTH))) + 1;
                                String ano=String.valueOf(f.get(java.util.Calendar.YEAR));

                        String fecha=dia + "/" + mes + "/" + ano;
						
            %>
<%@page contentType="text/html" pageEncoding="UTF-8" import=" Dao.conexion,java.sql.*,java.util.Date"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
    
     <style type="text/css">
	.suggestion_list
	{
	background: white;
	border: 1px solid;
	padding: 4px;
	}

	.suggestion_list ul
	{
	padding: 0;
	margin: 0;
	list-style-type: none;
	}

	.suggestion_list a
	{
	text-decoration: none;
	color: navy;
	}

	.suggestion_list .selected
	{
	background: navy;
	color: white;
	}

	.suggestion_list .selected a
	{
	color: white;
	}

	#autosuggest
	{
	display: none;
	}
    </style>
    
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />		
		<link href="cliente/style.css" rel="stylesheet" type="text/css" media="screen" />
		<link rel="shortcut icon" href="favicon.ico" type="image/x-icon"/>
		<link rel="alternate" type="application/rss+xml" title="RSS 2.0" href="blog/indexd784.html?feed=rss2" />
		<script src="../www.google-analytics.com/urchin.js" type="text/javascript"></script>
		<script type="text/javascript">
			_uacct = "UA-1868752-8";
			urchinTracker();
		</script>
		<script src="effects.js" type="text/javascript"></script>
		<title>Cliente</title>
	    <style type="text/css">
<!--
.Estilo2 {color: #FFFFFF}
.Estilo11 {color: #333333}
-->
        </style>
        
  
   
                
        <link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="stylesheet" type="text/css"/>
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>
  <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"></script>
  <script type="text/javascript" src="js/vanadium.js"></script>
 <link rel="shortcut icon" type="image/x-icon" href="../img/icon.ico" />
   <script language="Javascript" src="autosuggest.js"></script>
   
  <script>
  $(document).ready(function() {
    $("#tabs").tabs();
  });
  </script>
  
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
            <p id="phi_title">Formulario Clientes</p>
            <table width="531" border="0" align="center">
              <tr>
                <td width="591"><div id="tabs">
                  <ul>
                    <li><a href="#fragment-1"><span>Natural</span></a></li>
                    <li><a href="#fragment-2"><span>Juridico</span></a></li>
                    <li><a href="#fragment-3"><span>Historial</span></a></li>
                  </ul>
                  <div id="fragment-1">
                    <p>
                    <form id="form1" name="form1" method="post" action="../moduloCliente">
                      <table width="449" border="0" bgcolor="#FFFFFF">
                        <tr>
                          <td width="19">&nbsp;</td>
                          <td width="420"><table width="377" border="0" align="center" bgcolor="#FFFFFF">
                              <tr>
                                <td width="14"><span class="Estilo2">
                                  <input name="txtcodigo" type="hidden" id="txtcodigo" value="<%=request.getParameter("codigo")%>">
                                </span></td>
                                <td width="151"><div align="right" class="Estilo2"><strong>Nombres:</strong></div></td>
                                <td width="19"><span class="Estilo2"></span></td>
                                <td width="156"><span class="Estilo2">
                                  <label>
                                  <%         
    if ("3".equals(resp)) {
    %>
                                  <input name="txtnombres" type="text" id="txtnombres" onKeyUp="this.value = this.value.replace (/[^A-Z&Ntilde;a-z&ntilde; ]/, '');" value="<%=request.getParameter("nombres")%>">
                                  <% } else { %>
                                  <input type="text" name="txtnombres" id="txtnombres" onKeyUp="this.value = this.value.replace (/[^A-Z&Ntilde;a-z&ntilde; ]/, '');" required autofocus />
                                  <% } %>
                                  </label>
                                </span></td>
                                <td width="7"><span class="Estilo2"></span></td>
                              </tr>
                              <tr>
                                <td><span class="Estilo2">
                                  <input name="txtfecha" type="hidden" id="txtfecha" value="<%=fecha%>">
                                </span></td>
                                <td><p align="right" class="Estilo2"><strong>Apellidos:</strong></p></td>
                                <td><span class="Estilo2"></span></td>
                                <td><span class="Estilo2">
                                  <label>
                                  <%         
    if ("3".equals(resp)) {
    %>
                                  <input name="txtapellidos" type="text" id="txtapellidos" onKeyUp="this.value = this.value.replace (/[^A-Z&Ntilde;a-z&ntilde; ]/, '');" value="<%=request.getParameter("apellidos")%>">
                                  <% } else { %>
                                  <input type="text" name="txtapellidos" id="txtapellidos" onKeyUp="this.value = this.value.replace (/[^A-Z&Ntilde;a-z&ntilde; ]/, '');" required />
                                  <% } %>
                                  </label>
                                </span></td>
                                <td><span class="Estilo2"></span></td>
                              </tr>
                              <tr>
                                <td><span class="Estilo2"></span></td>
                                <td><div align="right" class="Estilo2"><strong>DNI:</strong></div></td>
                                <td><span class="Estilo2"></span></td>
                                <td><span class="Estilo2">
                                  <label>
                                  <%         
    if ("3".equals(resp)) {
    %>
                                  <input name="txtdni" type="text" id="txtdni" onKeyUp="this.value = this.value.replace (/[^0-9]/,'');" value="<%=request.getParameter("dni")%>" size="10" maxlength="8">
                                  <% } else { %>
                                  <input name="txtdni" type="text" id="txtdni" onKeyUp="this.value = this.value.replace (/[^0-9]/,'');" size="10" maxlength="8" required />
                                  <% } %>
                                  </label>
                                </span></td>
                                <td><span class="Estilo2"></span></td>
                              </tr>
                              <tr>
                                <td><span class="Estilo2"></span></td>
                                <td><div align="right" class="Estilo2"><strong>Direcci&oacute;n:</strong></div></td>
                                <td><span class="Estilo2"></span></td>
                                <td><span class="Estilo2">
                                  <label>
                                  <%         
    if ("3".equals(resp)) {
    %>
                                  <input name="txtdireccion" type="text" id="txtdireccion" value="<%=request.getParameter("direccion")%>">
                                  <% } else { %>
                                  <input type="text" name="txtdireccion" id="txtdireccion" required />
                                  <% } %>
                                  </label>
                                </span></td>
                                <td><span class="Estilo2"></span></td>
                              </tr>
                              <tr>
                                <td><span class="Estilo2"></span></td>
                                <td><div align="right" class="Estilo2"><strong>Tel&eacute;fono</strong></div></td>
                                <td><span class="Estilo2"></span></td>
                                <td><span class="Estilo2">
                                  <label>
                                  <%         
    if ("3".equals(resp)) {
    %>
                                  <input name="txttelefono" type="text" id="txttelefono" onKeyUp="this.value = this.value.replace (/[^0-9]/,'');" value="<%=request.getParameter("telefono")%>" size="10" maxlength="9">
                                  <% } else { %>
                                  <input name="txttelefono" type="text" id="txttelefono" onKeyUp="this.value = this.value.replace (/[^0-9]/,'');" size="10" maxlength="9" required />
                                  <% } %>
                                  </label>
                                </span></td>
                                <td><span class="Estilo2"></span></td>
                              </tr>
                              <tr>
                                <td><span class="Estilo2"></span></td>
                                <td><div align="right" class="Estilo2"><strong>Email:</strong></div></td>
                                <td><span class="Estilo2"></span></td>
                                <td><span class="Estilo2">
                                  <label>
                                  <%         
    if ("3".equals(resp)) {
    %>
                                  <input name="txtemail" type="text" id="txtemail" value="<%=request.getParameter("email")%>">
                                  <% } else { %>
                                  <input type="text" name="txtemail" id="txtemail" required />
                                  <% } %>
                                  </label>
                                </span></td>
                                <td><span class="Estilo2"></span></td>
                              </tr>
                              <tr>
                                <td>&nbsp;</td>
                                <td><div align="right" class="Estilo2"><strong>Sexo:</strong></div></td>
                                <td>&nbsp;</td>
                                <td><label>
                                  <input type="radio" name="txtsexo" id="radio" value="MASCULINO">
                                  </label>
                                  Maculino
                                  <label>
                                    <input type="radio" name="txtsexo" id="radio2" value="FEMENINO">
                                    Femenino</label></td>
                                <td>&nbsp;</td>
                              </tr>
                              <tr>
                                <td><span class="Estilo2"></span></td>
                                <td><div align="right"><span class="Estilo2"></span></div></td>
                                <td><span class="Estilo2"></span></td>
                                <td><span class="Estilo2"></span></td>
                                <td><span class="Estilo2"></span></td>
                              </tr>
                              <tr>
                                <td><span class="Estilo2"></span></td>
                                <td><div align="right" class="Estilo2"><strong>Usuario:</strong></div></td>
                                <td><span class="Estilo2"></span></td>
                                <td><span class="Estilo2">
                                  <label>
                                  <%         
    if ("3".equals(resp)) {
    %>
                                  <input name="txtusuario" type="text" id="txtusuario" value="<%=request.getParameter("usuario")%>">
                                  <% } else { %>
                                  <input type="text" name="txtusuario" id="txtusuario" required />
                                  <% } %>
                                  </label>
                                </span></td>
                                <td><span class="Estilo2"></span></td>
                              </tr>
                              <tr>
                                <td><span class="Estilo2"></span></td>
                                <td><div align="right" class="Estilo2"><strong>Clave:</strong></div></td>
                                <td><span class="Estilo2"></span></td>
                                <td><span class="Estilo2">
                                  <label>
                                  <%         
    if ("3".equals(resp)) {
    %>
                                  <input name="txtclave" type="password" id="txtclave" value="<%=request.getParameter("clave")%>">
                                  <% } else { %>
                                  <input type="password" name="txtclave" id="txtclave" required />
                                  <% } %>
                                  </label>
                                </span></td>
                                <td><span class="Estilo2"></span></td>
                              </tr>
                              <tr>
                                <td><span class="Estilo2"></span></td>
                                <td><span class="Estilo2"></span></td>
                                <td><span class="Estilo2"></span></td>
                                <td><span class="Estilo2"></span></td>
                                <td><span class="Estilo2"></span></td>
                              </tr>
                              <tr>
                                <td><span class="Estilo2"></span></td>
                                <td colspan="3"><span class="Estilo2">
                                    <label></label>
                                    <label>
                                    <div align="center" class="Estilo2">
                                      <input name="natural" type="submit" class="set" id="natural" value="Grabar"  width="20" height="20">
                                      <input type="submit" name="modificarn" id="modificarn" value="Modificar">
                                      <input type="submit" name="eliminar" id="eliminar" value="Desactivar">
                                      <input type="reset" name="button4" id="button4" value="Restablecer">
                                  </div></td>
                                <td><span class="Estilo2"></span></td>
                              </tr>
                          </table></td>
                        </tr>
                      </table>
                    </form>
                    </p>
                  </div>
                  <div id="fragment-2">
                    <form id="form2" name="form1" method="post" action="../moduloCliente">
                      <table width="449" border="0" bgcolor="#FFFFFF">
                        <tr>
                          <td width="19">&nbsp;</td>
                          <td width="420"><table width="377" border="0" align="center" bgcolor="#FFFFFF">
                              <tr>
                                <td width="14"><span class="Estilo2">
                                  <input name="txtcodigo" type="hidden" id="txtcodigo" value="<%=request.getParameter("codigo")%>">
                                </span></td>
                                <td width="151"><div align="right" class="Estilo2"><strong>Razon Social:</strong></div></td>
                                <td width="19"><span class="Estilo2"></span></td>
                                <td width="156"><span class="Estilo2">
                                  <label>
                                  <%         
    if ("3".equals(resp)) {
    %>
                                  <input name="txtrz" type="text" id="txtrz" onKeyUp="this.value = this.value.replace (/[^A-Z&Ntilde;a-z&ntilde; ]/, '');" value="<%=request.getParameter("rz")%>">
                                  <% } else { %>
                                  <input type="text" name="txtrz" id="txtrz" onKeyUp="this.value = this.value.replace (/[^A-Z&Ntilde;a-z&ntilde; ]/, '');" required autofocus />
                                  <% } %>
                                  </label>
                                </span></td>
                                <td width="7"><span class="Estilo2"></span></td>
                              </tr>
                              <tr>
                                <td><span class="Estilo2">
                                  <input name="txtfecha" type="hidden" id="txtfecha" value="<%=fecha%>">
                                </span></td>
                                <td><p align="right" class="Estilo2"><strong>Representante:</strong></p></td>
                                <td><span class="Estilo2"></span></td>
                                <td><span class="Estilo2">
                                  <label>
                                  <%         
    if ("3".equals(resp)) {
    %>
                                  <input name="txtrubro" type="text" id="txtrubro" onKeyUp="this.value = this.value.replace (/[^A-Z&Ntilde;a-z&ntilde; ]/, '');" value="<%=request.getParameter("rubro")%>">
                                  <% } else { %>
                                  <input type="text" name="txtrubro" id="txtrubro" onKeyUp="this.value = this.value.replace (/[^A-Z&Ntilde;a-z&ntilde; ]/, '');" required />
                                  <% } %>
                                  </label>
                                </span></td>
                                <td><span class="Estilo2"></span></td>
                              </tr>
                              <tr>
                                <td><span class="Estilo2"></span></td>
                                <td><div align="right" class="Estilo2"><strong>RUC:</strong></div></td>
                                <td><span class="Estilo2"></span></td>
                                <td><span class="Estilo2">
                                  <label>
                                  <%         
    if ("3".equals(resp)) {
    %>
                                  <input name="txtruc" type="text" id="txtruc" onKeyUp="this.value = this.value.replace (/[^0-9]/,'');" value="<%=request.getParameter("ruc")%>" size="11" maxlength="11">
                                  <% } else { %>
                                  <input name="txtruc" type="text" id="txtruc" onKeyUp="this.value = this.value.replace (/[^0-9]/,'');" size="11" maxlength="11" required />
                                  <% } %>
                                  </label>
                                </span></td>
                                <td><span class="Estilo2"></span></td>
                              </tr>
                              <tr>
                                <td><span class="Estilo2"></span></td>
                                <td><div align="right" class="Estilo2"><strong>Direcci&oacute;n:</strong></div></td>
                                <td><span class="Estilo2"></span></td>
                                <td><span class="Estilo2">
                                  <label>
                                  <%         
    if ("3".equals(resp)) {
    %>
                                  <input name="txtdireccion" type="text" id="txtdireccion" value="<%=request.getParameter("direccion")%>">
                                  <% } else { %>
                                  <input type="text" name="txtdireccion" id="txtdireccion" required />
                                  <% } %>
                                  </label>
                                </span></td>
                                <td><span class="Estilo2"></span></td>
                              </tr>
                              <tr>
                                <td><span class="Estilo2"></span></td>
                                <td><div align="right" class="Estilo2"><strong>Tel&eacute;fono</strong></div></td>
                                <td><span class="Estilo2"></span></td>
                                <td><span class="Estilo2">
                                  <label>
                                  <%         
    if ("3".equals(resp)) {
    %>
                                  <input name="txttelefono" type="text" id="txttelefono" onKeyUp="this.value = this.value.replace (/[^0-9]/,'');" value="<%=request.getParameter("telefono")%>" size="10" maxlength="9">
                                  <% } else { %>
                                  <input name="txttelefono" type="text" id="txttelefono" onKeyUp="this.value = this.value.replace (/[^0-9]/,'');" size="10" maxlength="9" required />
                                  <% } %>
                                  </label>
                                </span></td>
                                <td><span class="Estilo2"></span></td>
                              </tr>
                              <tr>
                                <td><span class="Estilo2"></span></td>
                                <td><div align="right" class="Estilo2"><strong>Email:</strong></div></td>
                                <td><span class="Estilo2"></span></td>
                                <td><span class="Estilo2">
                                  <label>
                                  <%         
    if ("3".equals(resp)) {
    %>
                                  <input name="txtemail" type="text" id="txtemail" value="<%=request.getParameter("email")%>">
                                  <% } else { %>
                                  <input type="text" name="txtemail" id="txtemail" required />
                                  <% } %>
                                  </label>
                                </span></td>
                                <td><span class="Estilo2"></span></td>
                              </tr>
                              <tr>
                                <td><span class="Estilo2"></span></td>
                                <td><div align="right"><span class="Estilo2"></span></div></td>
                                <td><span class="Estilo2"></span></td>
                                <td><span class="Estilo2"></span></td>
                                <td><span class="Estilo2"></span></td>
                              </tr>
                              <tr>
                                <td><span class="Estilo2"></span></td>
                                <td><div align="right" class="Estilo2"><strong>Usuario:</strong></div></td>
                                <td><span class="Estilo2"></span></td>
                                <td><span class="Estilo2">
                                  <label>
                                  <%         
    if ("3".equals(resp)) {
    %>
                                  <input name="txtusuario" type="text" id="txtusuario" value="<%=request.getParameter("usuario")%>">
                                  <% } else { %>
                                  <input type="text" name="txtusuario" id="txtusuario" required />
                                  <% } %>
                                  </label>
                                </span></td>
                                <td><span class="Estilo2"></span></td>
                              </tr>
                              <tr>
                                <td><span class="Estilo2"></span></td>
                                <td><div align="right" class="Estilo2"><strong>Clave:</strong></div></td>
                                <td><span class="Estilo2"></span></td>
                                <td><span class="Estilo2">
                                  <label>
                                  <%         
    if ("3".equals(resp)) {
    %>
                                  <input name="txtclave" type="password" id="txtclave" value="<%=request.getParameter("clave")%>">
                                  <% } else { %>
                                  <input type="password" name="txtclave" id="txtclave" required />
                                  <% } %>
                                  </label>
                                </span></td>
                                <td><span class="Estilo2"></span></td>
                              </tr>
                              <tr>
                                <td><span class="Estilo2"></span></td>
                                <td><span class="Estilo2"></span></td>
                                <td><span class="Estilo2"></span></td>
                                <td><span class="Estilo2"></span></td>
                                <td><span class="Estilo2"></span></td>
                              </tr>
                              <tr>
                                <td><span class="Estilo2"></span></td>
                                <td colspan="3"><span class="Estilo2">
                                    <label></label>
                                    <label>
                                    <div align="center" class="Estilo2">
                                      <input name="juridico" type="submit" class="set" id="juridico" value="Grabar"  width="20" height="20">
                                      <input type="submit" name="modificarj" id="modificarj" value="Modificar">
                                      <input type="submit" name="eliminar" id="eliminar" value="Desactivar">
                                      <input type="reset" name="button" id="button" value="Restablecer">
                                  </div></td>
                                <td><span class="Estilo2"></span></td>
                              </tr>
                          </table></td>
                        </tr>
                      </table>
                    </form>
                  </div>
                  <div id="fragment-3">
                    <p>grafica                  </p>
                    <p>
                      <iframe name="celda-de-destino" width="525px" height="300px"  src="PruebaGaficos.jsp?cod=<%=request.getParameter("codigo")%>" 
scrolling="no" frameborder="1px" target="_self"> </iframe>
</p>
                  </div>
                </div></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
              </tr>
            </table>
            <br>
            <p class="text"> Este formulario permite ingresar - modificar - eliminar Clientes.<br>
              <br>
            </p>
          </div>
          <div id="sidebar">
            <div class="clear"></div>
	        <div id="menu_side">
              <p id="title_menu">Bucar Cliente</p>
	          <table width="244" border="0">
                <tr>
                  <td>&nbsp;</td>
                  <td width="44">&nbsp;</td>
                  <td width="187"><form name="form1" method="post" action="../moduloCliente">
                    <label><span class="Estilo11">Documento
                        :</span><br>
                    <input name="txtcod" type="text" id="txtcod" maxlength="11" placeholder="Ej. 47641184" />
                    </label>
                    <p>
                      <label></label>
                      <label>
                      <input type="submit" name="buscar" id="buscar" value="Buscar">
                      </label>
                      <label></label>
                    </p>
                  </form></td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td><div id="autosuggest">
	 
	</div>
    <form name="sugest" action="../moduloCliente" method="post">
                    <label for="state"><span class="Estilo11">Apellidos
                      :</span><br>
                    </label>
                    <input type="text" name="state" id="state" />
                    <script language="Javascript">
			var states = new Array(<%
                    Connection cn;
                    conexion con = new conexion();
                    try {
                    cn = con.conectar();
                    Statement stmt = cn.createStatement();

						String codigo="";
                                                String a="exec buscaClienteApellido";
						ResultSet rs = stmt.executeQuery(a);

                                                while (rs.next()) {
						        codigo=String.valueOf(rs.getString(1));
                                                        out.print(codigo + ',');
				                                   }
                                                out.print('"');
                                                out.print('"');
                                                out.print(");");


					     %>

            new AutoSuggest(document.getElementById('state'),states);
		          </script>
                    <p>
                      <input name="buscarape" type="submit" id="buscarape" value="Buscar" />
                      <br>
                    </p>
                  </form></td>
                </tr>
              </table>
            </div>
	        <div class="sep2"></div>
	        <div id="links_side">
              <p id="title_links">Reportes</p>
	          <p class="links"><a href="../jasper/ClienteNatural.pdf" target="_blank" title="KDE.org">- Clientes Naturales</a></p>
	          <p class="links"><a href="../jasper/ClienteJuridico.pdf" target="_blank">- Clientes Juridico</a></p>
              <p class="links"><br>
              </p>
	        </div>
	        <div class="sep2"></div>
	        <div id="search_side">
              <p id="title_search">Activar un cliente</p>
              <table width="241" border="0">
                <tr>
                  <td width="53">&nbsp;</td>
                  <td width="178"><form name="form1" method="post" action="../moduloCliente">
                    <span class="Estilo11">Codigo</span><br>
                                              <label>
                                              <input name="txtactivar" type="text" id="txtactivar" placeholder="Ej. C0014">
                                              </label>
<p>
                                                <label></label>
                                                <label>
                                                <input type="submit" name="avtivar" id="avtivar" value="Activar">
                                                </label>
                                                <label></label>
                                              </p>
                  </form></td>
                </tr>
              </table>
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
    <% String msg=request.getParameter("msg");
                        if("Ok".equals(msg)){
                        %>
                        <script language='javaScript' >
                            alert("Cliente registrado correctamente!");
                        </script>
    <% }else{
                            if(msg=="Falso"){
                      %>
    <script language='javaScript'>
                           alert("Error al registrar Cliente");
                        </script>
<% }} %>
                       
                       
                       
                        <% 
                        if("1".equals(resp)){
                        %>
    <script language='javaScript' >
                            alert("Cliente Modificado correctamente!");
                        </script>
                      	<% } %>
                        
                        <% 
                        if("2".equals(resp)){
                        %>
    <script language='javaScript' >
                            alert("Error al Modificar Cliente!");
                        </script>
                      	<% } %>
                        
                        <% 
                        if("3".equals(resp)){
                        %>
    <script language='javaScript' >
                            alert("Cliente encontrado!");
                        </script>
                      	<% } %>
                        
                        <% 
                        if("4".equals(resp)){
                        %>
    <script language='javaScript' >
                            alert("Cliente no Existe!");
                        </script>
<% } %>
                       
			            <% 
                        if("5".equals(resp)){
                        %>
    <script language='javaScript' >
                            alert("Cliente Eliminado!");
                        </script>
                      	<% } %>
                          <% 
                        if("6".equals(resp)){
                        %>
    <script language='javaScript' >
                            alert("Error al Eliminar!");
                        </script>
                      	<% } 
                         if("ok".equals(mensaje)){
                        %>
    <script language='javaScript' >
                            alert("Cliente Registrado Correctamente!");
                        </script>
                      	<% } %>
                         <% 
                        if("8".equals(resp)){
                        %>
    <script language='javaScript' >
                            alert("Cliente Activado!");
                        </script>
                      	<% } 
                        
                         if("9".equals(resp)){
                        %>
    <script language='javaScript' >
                            alert("Error al Activar Cliente!");
                        </script>
                      	<% } %>
                        
</body>
</HTML>
               <%
                    } catch (SQLException ex) {
                        System.out.println(ex.toString());
                    }

%>