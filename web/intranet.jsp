<%-- 
    Document   : index
    Created on : 13/02/2011, 02:44:13 PM
    Author     : Carlos Medina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
   <head>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<link rel="stylesheet" type="text/css" href="css/login.css" /> 
 <link rel="shortcut icon" type="image/x-icon" href="img/icon.ico" />
<title>Login</title>
</head>
<body>

<table width="100%" height="550" bgcolor="" cellpadding="0" cellspacing="0" style="position:relative; top:-25px; background-color: #999999; layer-background-color: #999999; border: 1px none #000000;">
<tr>
		<td>&nbsp;</td>
		<td width="198" bgcolor="" style="background-image:url(images/login-left.jpg);background-repeat: no-repeat;background-position: bottom center">&nbsp;</td>
		<td width="285" valign="top">
						<div style="cursor:pointer;position:absolute;top:0px;background-color:;height:75px;width:285px;background-image:url(images/login-bgtop-trans.png);background-repeat: no-repeat;background-position: top center"></div>
						<table width="100%" bgcolor="#999999" cellpadding="0" cellspacing="0">
				<tr height="147" bgcolor="">
					<td valign="bottom">				<img style="cursor:pointer;" width="285" height="119" src="images/login-logo.jpg" border="0" >
					</td>
				</tr>
				<tr height="403" valign="top">
					<td style="background-image:url(images/login-center.jpg);background-repeat:no-repeat;background-position: bottom center"><br><br>
						<div style="position:relative">
						<form  id='formaction' action="validarpersonal" method="post">
							<table class="activity" style="background-color:;">
								<tr>
									<td class="labels">Usuario:</td><td><input type="text" name="txtusuario" class="usertext" size="15" value="" id="txtusuario" /></td>
								</tr>
								<tr>
									<td class="labels">Clave:</td>
								  <td><input type="password" name="txtclave" class="usertext" size="15" value="" id="txtclave" /></td>
								</tr>
								<tr bgcolor=""><td colspan="2" style="height:8px;"></td></tr>
								<tr>
									<td width="80">&nbsp;</td>
							  <td align="right">
										<input id='tsubmit' class="login_button" type="button" style="" value="" onclick="document.getElementById('tsubmit').style.display='none'; document.getElementById('loadeux').style.display=''; document.getElementById('formaction').submit();">
										<img id='loadeux' src="images/loader.gif" style="display:none;position:relative;top:-5px;">
<input type="submit" style="display:none;">
										<!-- <input class="new_button_large" type="button" onclick="document.location='http://admin.myvirtualpaper.com/forgotpassword'" style="font-size:10px; width:120px; padding-top:2px;" value="Forgot password">--></td>
								</tr>
							</table>
							<br><br><br>							<div style="color:#747474; font-size:12px;"><input type="checkbox" name="doRememberUsername"> 
							Recordar mi usuario</div>
							<div style="color:#747474; font-size:12px;"><input type="checkbox" name="doRememberPassword"> 
							Recordar mi clave...</div>
							<br>
						</form>
						<div id="me_box">
																				</div>
						</div>
					
					</td>
				</tr>
		 	</table>
		</td>
		<td width="201" style="background-image:url(images/login-right.jpg);background-repeat: no-repeat;background-position: bottom center">&nbsp;</td>
		<td><p>&nbsp;</p>
	    <p>&nbsp;</p>
	    <p>&nbsp;</p>
	    <p>&nbsp;</p></td>
</table>
<table width="100%" bgcolor="#999999">
<tr>
<td><font color="#999999">a</font></td>
</tr>
<tr>
<td><font color="#999999">a</font></td>
</tr>
<tr>
<td><font color="#999999">a</font></td>
</tr>
<tr>
<td><font color="#999999">a</font></td>
</tr>
<tr>
<td><font color="#999999">a</font></td>
</tr>
<tr>
<td><font color="#999999">a</font></td>
</tr>
<tr>
<td><font color="#999999">a</font></td>
</tr>
<tr>
<td><font color="#999999">a</font></td>
</tr>
<tr>
<td><font color="#999999">a</font></td>
</tr>
</table>


</body>


</html>
