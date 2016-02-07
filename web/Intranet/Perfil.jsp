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
			            LlenarCombo1 combo = new LlenarCombo1();
            Vector Aux = new Vector();
            %>
<%@page contentType="text/html" pageEncoding="UTF-8" import="Util.LlenarCombo1,java.util.Vector,Beans.personal" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />		
		<link href="perfil/style.css" rel="stylesheet" type="text/css" media="screen" />
				<link rel="shortcut icon" type="image/x-icon" href="../img/icon.ico" />
		<link rel="alternate" type="application/rss+xml" title="RSS 2.0" href="blog/indexd784.html?feed=rss2" />
		<script src="../www.google-analytics.com/urchin.js" type="text/javascript"></script>
		<script type="text/javascript">
			_uacct = "UA-1868752-8";
			urchinTracker();
		</script>
		<script src="effects.js" type="text/javascript"></script>
		<title>Perfil</title>
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
        <table width="872" border="0">
          <tr>
            <td width="1">&nbsp;</td>
            <td width="366"><a href="index.html" title="Home"><img src="images/eve_sign.jpg" alt="everaldo's logo" width="136" height="39"/></a></td>
            <td width="425"><div align="right"><strong><%=Cargo%> : <%=Nombres + ' ' + Apellidos%></strong></div></td>
            <td width="62"><div align="center"><a href="../logoutpersonal"><img src="images/button_cancel.png" alt="Salir" width="22" height="22"></a></div></td>
          </tr>
        </table>
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
            <p id="phi_title">Mi Perfil</p>
            <p class="text"> <a href="../moduloPersonal?perfil=<%=DNI%>">Mostrar mis Datos</a></p>
            <p class="text">&nbsp;</p>
            <table width="449" border="0" bgcolor="#FFFFFF">
              <tr>
                <td width="66"></td>
                <td width="367"><form name="form2" method="post" action="../moduloPersonal">
                    <table width="377" border="0" align="center" bgcolor="#FFFFFF">
                      <tr>
                        <td width="14"><input name="txtcodigo" type="hidden" id="txtcodigo" value="<%=request.getParameter("codigo")%>"></td>
                        <td width="151"><div align="right"><strong>Nombres:</strong></div></td>
                        <td width="19">&nbsp;</td>
                        <td width="156"><label><span class="maternidad_txt_destacado">
                          <%         
    if ("3".equals(resp)) {
    %>
                          <input name="txtnombres" type="text" id="txtnombres" onKeyUp="this.value = this.value.replace (/[^A-Z&Ntilde;a-z&ntilde; ]/, '');" value="<%=request.getParameter("nombres")%>">
                          </span><span class="maternidad_txt_destacado">
                          <% } else { %>
                          <input type="text" name="txtnombres" id="txtnombres" onKeyUp="this.value = this.value.replace (/[^A-Z&Ntilde;a-z&ntilde; ]/, '');">
                          <% } %>
                        </span> </label></td>
                        <td width="7">&nbsp;</td>
                      </tr>
                      <tr>
                        <td>&nbsp;</td>
                        <td><p align="right"><strong>Apellidos:</strong></p></td>
                        <td>&nbsp;</td>
                        <td><label><span class="maternidad_txt_destacado">
                          <%         
    if ("3".equals(resp)) {
    %>
                          </span><span class="maternidad_txt_destacado">
                          <input name="txtapellidos" type="text" id="txtapellidos" onKeyUp="this.value = this.value.replace (/[^A-Z&Ntilde;a-z&ntilde; ]/, '');" value="<%=request.getParameter("apellidos")%>">
                          <% } else { %>
                          <input type="text" name="txtapellidos" id="txtapellidos" onKeyUp="this.value = this.value.replace (/[^A-Z&Ntilde;a-z&ntilde; ]/, '');">
                          <% } %>
                        </span></label></td>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td>&nbsp;</td>
                        <td><div align="right"><strong>DNI:</strong></div></td>
                        <td>&nbsp;</td>
                        <td><label><span class="maternidad_txt_destacado">
                          <%         
    if ("3".equals(resp)) {
    %>
                          <input name="txtdni" type="text" id="txtdni" onKeyUp="this.value = this.value.replace (/[^0-9]/,'');" value="<%=request.getParameter("dni")%>" size="10" maxlength="8">
                          </span><span class="maternidad_txt_destacado">
                          <% } else { %>
                          <input name="txtdni" type="text" id="txtdni" onKeyUp="this.value = this.value.replace (/[^0-9]/,'');" size="10" maxlength="8">
                          <% } %>
                        </span></label></td>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td>&nbsp;</td>
                        <td><div align="right"><strong>Direcci&oacute;n:</strong></div></td>
                        <td>&nbsp;</td>
                        <td><label><span class="maternidad_txt_destacado">
                          <%         
    if ("3".equals(resp)) {
    %>
                          <input name="txtdireccion" type="text" id="txtdireccion" value="<%=request.getParameter("direccion")%>">
                          </span><span class="maternidad_txt_destacado">
                          <% } else { %>
                          <input type="text" name="txtdireccion" id="txtdireccion">
                          <% } %>
                        </span></label></td>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td>&nbsp;</td>
                        <td><div align="right"><strong>Tel&eacute;fono</strong></div></td>
                        <td>&nbsp;</td>
                        <td><label><span class="maternidad_txt_destacado">
                          <%         
    if ("3".equals(resp)) {
    %>
                          <input name="txttelefono" type="text" id="txttelefono" onKeyUp="this.value = this.value.replace (/[^0-9]/,'');" value="<%=request.getParameter("telefono")%>" size="10" maxlength="9">
                          </span><span class="maternidad_txt_destacado">
                          <% } else { %>
                          <input name="txttelefono" type="text" id="txttelefono" onKeyUp="this.value = this.value.replace (/[^0-9]/,'');" size="10" maxlength="9">
                          <% } %>
                        </span></label></td>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td>&nbsp;</td>
                        <td><div align="right"><strong>Email:</strong></div></td>
                        <td>&nbsp;</td>
                        <td><label><span class="maternidad_txt_destacado">
                          <%         
    if ("3".equals(resp)) {
    %>
                          <input name="txtemail" type="text" id="txtemail" value="<%=request.getParameter("email")%>">
                          </span><span class="maternidad_txt_destacado">
                          <% } else { %>
                          <input type="text" name="txtemail" id="txtemail">
                          <% } %>
                        </span></label></td>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td>&nbsp;</td>
                        <td><div align="right"><strong>Cargo:</strong></div></td>
                        <td>&nbsp;</td>
                        <td><label>
                          <select name="cbocargo" id="cbocargo">
                            <option value="C0001">Administrador</option>
                            <option value="C0002">Vendedor</option>
                            <%
           Aux = combo.llenarCargo();
           String[] datos=new String[2];
           for(int i=0; i<Aux.size();i++){
               datos=(String[])Aux.elementAt(i);
%>
                            <%
  }


%>
                          </select>
                        </label></td>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td>&nbsp;</td>
                        <td colspan="3"><label></label>
                            <label>
                            <div align="center">
                              <input type="submit" name="modificar1" id="modificar1" value="Modificar">
                              <input type="reset" name="button4" id="button4" value="Restablecer">
                            </div>
                          </label></td>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                      </tr>
                    </table>
                  <br>
                </form></td>
              </tr>
            </table>
          </div>
	      <div id="sidebar">
            <div class="clear"></div>
	        <div id="menu_side">
              <p id="title_menu">Cambiar Clave</p>
	          <table width="241" border="0">
                <tr>
                  <td width="53">&nbsp;</td>
                  <td width="178"><form name="form1" method="post" action="../moduloPersonal">
                    Clave Actual
                    :<br>
                                    <label>
                                    <input type="password" name="txtclave" id="txtclave"  />
                                    <input name="cod" type="hidden" id="cod" value="<%=DNI%>">
                                    <br>
                                    Clave Nueva
                    :
                                    <input type="password" name="txtclavenueva" id="txtclavenueva">
                                    <br>
                                    </label>
<p>
                                      <label></label>
                                      <label>
                                      <input type="submit" name="cambiar" id="cambiar" value="Cambiar">
                                      </label>
                                      <label></label></p>
                  </form></td>
                </tr>
              </table>
	          <p class="links"></p>
            </div>
	        <div class="sep2"></div>
	        <div id="links_side">
              <p id="title_links">Reportar</p>
	          <p class="links"><a href="http://www.kde.org/" target="_blank" title="KDE.org">- Generar mi reporte</a></p>
            </div>
	        <div class="sep2"></div>
	        <div class="sep2"></div>
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
      <% 
                        if("5".equals(resp)){
                        %>
                        <script language='javaScript' >
                            alert("Clave Modificada Correctamente!");
                        </script>
                      	<% } %>
                          <% 
                        if("6".equals(resp)){
                        %>
                        <script language='javaScript' >
                            alert("Error al Cambiar Clave!");
                        </script>
                      	<% } 
                                                 %>
                       
    
</body>
</html>
