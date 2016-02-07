<%-- 
    Document   : Inicio
    Created on : 13/02/2011, 02:48:35 PM
    Author     : Carlos Medina
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"  import="Util.LlenarCombo1,java.util.Vector,Beans.personal" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
	<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />		
		<link href="personal/style.css" rel="stylesheet" type="text/css" media="screen" />
				<link rel="shortcut icon" type="image/x-icon" href="../img/icon.ico" />
		<link rel="alternate" type="application/rss+xml" title="RSS 2.0" href="blog/indexd784.html?feed=rss2" />
	<script src="../www.google-analytics.com/urchin.js" type="text/javascript"></script>
	<script type="text/javascript">
			_uacct = "UA-1868752-8";
			urchinTracker();
		</script>
	<script src="effects.js" type="text/javascript"></script>
	<title>Personal</title>
	    <style type="text/css">
<!--
.Estilo11 {
	color: #333333;
	font-weight: bold;
}
-->
        </style>
        
        
    <script language="JavaScript" type="text/javascript">
<!--
function PopWindow()
{
window.open('AsignarUsuario.jsp?codigo=<%=request.getParameter("codigo")%>','360','width=400,height=400,menubar=no,scrollbars=no,toolbar=no,location=no,directories=no,resizable=no,top=0,left=0');
}
//-->
</script>

</head>
<body>
<form method="post" action="../AsignarUsuario">
<table width="270" height="124" border="0" align="center" bgcolor="#FFFFFF">
  <tr>
    <td width="122"><input name="codigo" type="hidden" id="codigo" value="<%=request.getParameter("codigo")%>"></td>
    <td width="74"><div align="right"><strong>Usuario:</strong></div></td>
    <td width="10">&nbsp;</td>
    <td width="124"><label><span class="maternidad_txt_destacado">
      <input type="text" name="usuario" id="usuario">
    </span> </label></td>
    <td width="297">&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td><div align="right"><strong>Clave:</strong></div></td>
    <td>&nbsp;</td>
    <td><label><span class="maternidad_txt_destacado">
      <input type="password" name="clave" id="clave">
    </span></label></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td colspan="3"><label></label>
        <label>
        <div align="center">
          <input name="grabar" type="submit" class="set" id="grabar" value="+ Asignar"  width="20" height="20">
          <label>
          <input type="reset" name="button" id="button" value="Restablecer">
          </label>
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
</form>
</body>

 <% String msg=request.getParameter("msg");
                        if("1".equals(msg)){
                        %>
                        <script language='javaScript' >
                            alert("Usuario Asignado Correctamente!");
							self.close();
                        </script>
    <% } %>
                       
                 
                       
                        <% 
                        if("2".equals(msg)){
                        %>
                        <script language='javaScript' >
                            alert("Error al Asignar Usuario!");
							self.close();
                        </script>
                      	<% } %>
                        
                        
                        
</html>
