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
			
			            LlenarCombo1 combo = new LlenarCombo1();
                                    Vector Aux = new Vector();

            String foto="productos/15.jpg";
			  String foto1="productos/blank.jpg";
			    String foto2="productos/blank.jpg";
				  String foto3="productos/blank.jpg";
            %>

<%@page contentType="text/html" pageEncoding="UTF-8" import="Util.LlenarCombo1,java.util.Vector,Beans.Producto"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />		
		<link href="producto/style.css" rel="stylesheet" type="text/css" media="screen" />
				<link rel="shortcut icon" type="image/x-icon" href="../img/icon.ico" />
		<link rel="alternate" type="application/rss+xml" title="RSS 2.0" href="blog/indexd784.html?feed=rss2" />
		<script src="../www.google-analytics.com/urchin.js" type="text/javascript"></script>
		<script type="text/javascript">
			_uacct = "UA-1868752-8";
			urchinTracker();
		</script>
		<script src="effects.js" type="text/javascript"></script>
		<title>Producto</title>
	    <style type="text/css">
<!--
.Estilo2 {color: #FFFFFF}
.Estilo11 {color: #333333}
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
            <p id="phi_title">Mantenimiento de Productos</p>
            <p class="text"> Este formulario permite ingresar - modificar - eliminar Productos. </p>
            <p class="text">&nbsp;</p>
            <table width="550" border="0" bgcolor="#FFFFFF">
              <tr>
                <td width="66">&nbsp;</td>
                <td width="367"><form name="form2" method="post" action="../moduloProducto">
<table width="435" border="0" align="center" bgcolor="#FFFFFF">
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td><input name="txtcodigo" type="hidden" id="txtcodigo" value="<%=request.getParameter("codigo")%>"></td>
    <td width="104" rowspan="13"> 
      <%         
    if ("3".equals(resp)) {
	  foto1=request.getParameter("foto");
	  foto2=request.getParameter("foto1");
	  foto3=request.getParameter("foto2");
    %>
    
    <img src="<%=foto1%>" width="87" height="76"><br>
      <br>
      <img src="<%=foto2%>" width="89" height="76"><br>
<br>
      <img src="<%=foto3%>" width="89" height="76">
      <% } %>      </td>
  </tr>
  <tr>
    <td width="-1">&nbsp;</td>
    <td width="74"><div align="right"><strong>Nombre:</strong></div></td>
    <td width="1">&nbsp;</td>
    <td width="235"><label><span class="maternidad_txt_destacado">
      <%         
    if ("3".equals(resp)) {
    %>
      </span><span class="maternidad_txt_destacado">
        <input name="txtnombre" type="text" id="txtnombre" onKeyUp="this.value = this.value.replace (/[^A-Z&Ntilde;a-z&ntilde; 32]/, '');" value="<%=request.getParameter("nombre")%>">
        <% } else { %>
        <input type="text" name="txtnombre" id="txtnombre" onKeyUp="this.value = this.value.replace (/[^A-Z&Ntilde;a-z&ntilde; 32]/, '');">
        <% } %>
      </span> </label></td>
    </tr>
  <tr>
    <td>&nbsp;</td>
    <td><p align="right"><strong>Color:</strong></p></td>
    <td>&nbsp;</td>
    <td><label><span class="maternidad_txt_destacado">
      <%         
    if ("3".equals(resp)) {
    %>
      <input name="txtcolor" type="text" id="txtcolor" onKeyUp="this.value = this.value.replace (/[^A-Z&Ntilde;a-z&ntilde; 32]/, '');" value="<%=request.getParameter("color")%>">
      </span><span class="maternidad_txt_destacado">
        <% } else { %>
        <input type="text" name="txtcolor" id="txtcolor" onKeyUp="this.value = this.value.replace (/[^A-Z&Ntilde;a-z&ntilde; 32]/, '');">
        <% } %>
      </span></label></td>
    </tr>
  <tr>
    <td>&nbsp;</td>
    <td><div align="right"><strong>Marca:</strong></div></td>
    <td>&nbsp;</td>
    <td><label>
      <select name="cbomarca" id="cbomarca">
        <option value="M0001">HP</option>
        <option value="M0002">LG</option>
        <option value="M0003">ACER</option>
        <option value="M0004">AVATEC</option>
        <option value="M0005">KINGTON</option>
        <option value="M0006">HALION</option>
        <option value="M0007">MICRONICS</option>
        <option value="M0008">SAMSUNG</option>
        <option value="M0009">MICROSOFT</option>
        <option value="M0010">SONY</option>
        <%
           Aux = combo.llenarMarca();
           String[] datos=new String[2];
           for(int i=0; i<Aux.size();i++){
               datos=(String[])Aux.elementAt(i);        
%>
        <%
  }
%>
      </select>
    </label></td>
    </tr>
  <tr>
    <td>&nbsp;</td>
    <td><div align="right"><strong>Precio:</strong></div></td>
    <td>&nbsp;</td>
    <td><label><span class="maternidad_txt_destacado">
      <%         
    if ("3".equals(resp)) {
    %>
      <input name="txtprecio" type="text" id="txtprecio" onKeyUp="this.value = this.value.replace (/[^0-9]/,'');" value="<%=request.getParameter("precio")%>" size="10" maxlength="11">
      </span><span class="maternidad_txt_destacado">
        <% } else { %>
        <input name="txtprecio" type="text" id="txtprecio" onKeyUp="this.value = this.value.replace (/[^0-9]/,'');" size="10" maxlength="11">
        <% } %>
      </span></label></td>
    </tr>
  <tr>
    <td>&nbsp;</td>
    <td><div align="right"><strong>Descripci&oacute;n:</strong></div></td>
    <td>&nbsp;</td>
    <td><label><span class="maternidad_txt_destacado">
      <%         
    if ("3".equals(resp)) {
    %>
    </span>
        <textarea name="txtdescripcion" id="txtdescripcion" cols="30" rows="5"><%=request.getParameter("descripcion")%></textarea>
        <span class="maternidad_txt_destacado">        </span><span class="maternidad_txt_destacado">
        <% } else { %>
        <textarea name="txtdescripcion" id="txtdescripcion" cols="30" rows="5"></textarea>
        <% } %>
      </span></label></td>
    </tr>
  <tr>
    <td>&nbsp;</td>
    <td><div align="right"><strong>Stock</strong></div></td>
    <td>&nbsp;</td>
    <td><label><span class="maternidad_txt_destacado">
      <%         
    if ("3".equals(resp)) {
    %>
      </span><span class="maternidad_txt_destacado">
        <input name="txtstock" type="text" id="txtstock" onKeyUp="this.value = this.value.replace (/[^0-9]/,'');" value="<%=request.getParameter("stock")%>" size="10" maxlength="9">
        <% } else { %>
        <input name="txtstock" type="text" id="txtstock" onKeyUp="this.value = this.value.replace (/[^0-9]/,'');" size="10" maxlength="9">
        <% } %>
      </span></label></td>
    </tr>
  <tr>
    <td>&nbsp;</td>
    <td><div align="right"><strong>Foto</strong></div></td>
    <td>&nbsp;</td>
    <td><label>
      <input type="file" name="txtfoto" id="txtfoto">
    </label></td>
    </tr>
  <tr>
    <td>&nbsp;</td>
    <td><div align="right"><strong>Foto1</strong></div></td>
    <td>&nbsp;</td>
    <td><label>
      <input type="file" name="txtfoto1" id="txtfoto1">
    </label></td>
    </tr>
  <tr>
    <td>&nbsp;</td>
    <td><div align="right"><strong>Foto2</strong></div></td>
    <td>&nbsp;</td>
    <td><label>
      <input type="file" name="txtfoto2" id="txtfoto2">
    </label></td>
    </tr>
  <tr>
    <td>&nbsp;</td>
    <td><div align="right"><strong>Tags:</strong></div></td>
    <td>&nbsp;</td>
    <td><span class="maternidad_txt_destacado">
      <%         
    if ("3".equals(resp)) {
    %>
      <input name="txttags" type="text" id="txttags" onKeyUp="this.value = this.value.replace (/[^A-Z&Ntilde;a-z&ntilde; 32]/, '');" value="<%=request.getParameter("tags")%>" />
    </span><span class="maternidad_txt_destacado">
    <% } else { %>
    <input type="text" name="txttags" id="txttags" onKeyUp="this.value = this.value.replace (/[^A-Z&Ntilde;a-z&ntilde; 32]/, '');" />
    <% } %>
    </span></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    </tr>
  <tr>
    <td>&nbsp;</td>
    <td colspan="3"><div align="center">
      <input name="grabar" type="submit" class="set" id="grabar" value="Grabar"  width="20" height="20">
      <input type="submit" name="modificar" id="modificar" value="Modificar">
      <input type="reset" name="button4" id="button4" value="Restablecer">
    </div></td>
    </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
                </form></td>
              </tr>
            </table>
          </div>
          <div id="sidebar">
            <div class="clear"></div>
	        <div id="menu_side">
              <p id="title_menu">Buscar Producto</p>
	          <table width="222" border="0">
                <tr>
                  <td width="53">&nbsp;</td>
                  <td width="178"><p align="center">
                      <%                                    if ("3".equals(resp)) {
	  foto=request.getParameter("foto");
	  
	  
	  }
    %>
                      <img src="<%=foto%>" width="101" height="76"></p>
                      <form name="form1" method="post" action="../moduloProducto">
                        C&oacute;digo
                        :<br>
                              <label>
                              <input type="text" name="txtcod" id="txtcod"  placeholder="Ej. W0001" />
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
              </table>
	          <p class="links">&nbsp;</p>
	          <p class="links"></p>
	          <p class="links"></p>
            </div>
	        <div class="sep2"></div>
	        <div id="links_side">
              <p id="title_links">Reportes</p>
	          <p class="links"><a href="../jasper/ProductosMarca.pdf" target="_blank">- Productos por Marca</a></p>
	          <p class="links"><a href="../jasper/ProductosAgotados.pdf" target="_blank">- Productos Agotados</a></p>
	          <p class="links"><a href="../jasper/ProductosTodos.pdf" target="_blank">- Todos</a></p>
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
    <% String msg=request.getParameter("msg");
                        if("Ok".equals(msg)){
                        %>
                        <script language='javaScript' >
                            alert("Producto registrado correctamente!");
                        </script>
<% }else{
                            if(msg=="Falso"){
                      %>
                  <script language='javaScript'>
                           alert("Error al registrar Producto");
                        </script>
<% }} %>
                       
                       
                       
                        <% 
                        if("1".equals(resp)){
                        %>
                        <script language='javaScript' >
                            alert("Producto Modificado correctamente!");
                        </script>
                      	<% } %>
                        
                        <% 
                        if("2".equals(resp)){
                        %>
                        <script language='javaScript' >
                            alert("Error al Modificar Producto!");
                        </script>
                      	<% } %>
                        
                        <% 
                        if("3".equals(resp)){
                        %>
                        <script language='javaScript' >
                            alert("Producto encontrado!");
                        </script>
                      	<% } %>
                        
                        <% 
                        if("4".equals(resp)){
                        %>
                        <script language='javaScript' >
                            alert("Producto no Existe!");
                        </script>
<% } %>
                       
			            <% 
                        if("5".equals(resp)){
                        %>
                        <script language='javaScript' >
                            alert("Producto Eliminado!");
                        </script>
                      	<% } %>
                          <% 
                        if("6".equals(resp)){
                        %>
                        <script language='javaScript' >
                            alert("Error al Eliminar!");
                        </script>
                      	<% } %>
                         <% 
                        if("ok".equals(mensaje)){
                        %>
                        <script language='javaScript' >
                            alert("Producto Registrado Correctamente!");
                        </script>
                      	<% } %>
<%                                    if ("3".equals(resp)) {
                       
						int minimo=0;
						minimo= Integer.parseInt(request.getParameter("stock"));
						%>
          
                         <% 
                        if(minimo <= 5 ){
                        %>
                        <script language='javaScript' >
                            alert("Stock agotado Porfavor realizar Pedido!");
                        </script>
                      	<% } }%>
                        
                        
</body>
</html>
