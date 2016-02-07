<%-- 
    Document   : registro
    Created on : 20/02/2011, 05:03:07 PM
    Author     : Carlos Medina
--%>

<%
	String resp = request.getParameter("resp");
	String mensaje = request.getParameter("msg");
	java.util.Calendar f = java.util.Calendar.getInstance();
                        
                                String dia=String.valueOf(f.get(java.util.Calendar.DATE));
                                int mes=Integer.parseInt(String.valueOf(f.get(java.util.Calendar.MONTH))) + 1;
                                String ano=String.valueOf(f.get(java.util.Calendar.YEAR));

                        String fecha=dia + "/" + mes + "/" + ano;
						
%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.Date"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
  <link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="stylesheet" type="text/css"/>
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>
  <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"></script>
  
    <link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="stylesheet" type="text/css"/>
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>
  <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"></script>
  
  <script type="text/javascript" src="js/vanadium.js"></script>
  <link rel="stylesheet" href="js/style1.css" type="text/css" />
  
  <script>
  $(document).ready(function() {
    $("#tabs").tabs();
  });
  </script>
  <style type="text/css">
<!--
.Estilo2 {color: #FFFFFF}
-->
  </style>
<title>G&amp;M - COMPUTER - 2011</title></head>
<body style="font-size:62.5%;">
  
<div id="tabs">
    <ul>
        <li><a href="#fragment-1"><span>Natural</span></a></li>
        <li><a href="#fragment-2"><span>Juridico</span></a></li>
        
    </ul>
    <div id="fragment-1">
        <p>
      
      <form id="form1" name="form1" method="post" action="moduloCliente">
<p>Nombres:<br />
  <input name="txtnombres" type="text" id="txtnombres" size="36" class=":required" />
  <span class="Estilo2">
  <input name="txtfecha" type="hidden" id="txtfecha" value="<%=fecha%>">
  </span></p>
<p> Apellidos:<br />
    <input name="txtapellidos" type="text" id="txtapellidos" size="36" class=":required" />
</p>
<p>DNI:<br />
    <input name="txtdni" type="text" id="txtdni" size="36" class=":length;8 :integer" />
</p>
<p>Sexo:<br />
  <label>
  <input type="radio" name="txtsexo" id="txtsexo" value="MASCULINO" />
  </label> 
  Masculino 
  <label>
  <input type="radio" name="txtsexo" id="txtsexo2" value="FEMENINO" />
  </label>
  Femenino
</p>
<p>Direccion:<br />
    <input name="txtdireccion" type="text" id="txtdireccion" size="36" class=":required" />
</p>
<p>E-mail:<br />
    <input name="txtemail" type="text" id="txtemail" size="36" class=":email" />
</p>
<p>Telefono:<br />
    <input name="txttelefono" type="text" id="txttelefono" size="36" class=":integer :required" />
</p>
<p>Usuario:<br />
    <input name="txtusuario" type="text" id="txtusuario" size="36" class=":required" />
</p>
<p>Clave:<br />
    <input name="txtclave" type="password" id="txtclave" size="36" class=":required" />
</p>
<p>
    <input type="submit" name="natural1" id="natural1" value="Registro" />
</p>
</form></p>
        
    </div>
<div id="fragment-2">
      <form id="form2" name="form1" method="post" action="moduloCliente">
      <p>Razon Social:<br />
            <input name="txtrz" type="text" id="txtrz" size="36" class=":required" />
            <span class="Estilo2">
            <input name="txtfecha" type="hidden" id="txtfecha" value="<%=fecha%>">
        </span></p>
      <p>Representante:<br />
            <input name="txtrubro" type="text" id="txtrubro" size="36" class=":required" />
        </p>
        <p>RUC:<br />
            <input name="txtruc" type="text" id="txtruc" size="36" class=":length;11 :integer" />
        </p>
        <p>Direccion:<br />
          <input name="txtdireccion" type="text" id="txtdireccion" size="36" class=":required" />
        </p>
        <p>E-mail:<br />
            <input name="txtemail" type="text" id="txtemail" size="36" class=":email" />
        </p>
        <p>Telefono:<br />
            <input name="txttelefono" type="text" id="txttelefono" size="36" class=":integer :required" />
        </p>
        <p>Usuario:<br />
            <input name="txtusuario" type="text" id="txtusuario" size="36" class=":required" />
        </p>
        <p>Clave:<br />
            <input name="txtclave" type="password" id="txtclave" size="36" class=":required" />
        </p>
        <p>
          <input type="submit" name="juridico1" id="juridico1" value="Registrarse" />
        </p>
      </form>
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
</html>