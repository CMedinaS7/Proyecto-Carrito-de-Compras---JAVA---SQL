<%-- 
    Document   : PruebaGaficos
    Created on : 21/09/2010, 06:09:46 PM
    Author     : Carlos Medina
--%>
 <%
					String codigo =request.getParameter("cod");					
                                                                               String a="";
					String ene ="";
					String feb ="";
					String mar ="";
					String abr ="";
					String may ="";
					String jun ="";
					String jul ="";
					String ago ="";
					String sep ="";
					String oct ="";
					String nov ="";
					String dic ="";
					Connection cn;
                                        conexion con = new conexion();
                    try {
                		
						cn = con.conectar();
                        Statement stmt = cn.createStatement();

                       
						a="exec PruebaGraficos '" +codigo+ "'";
                   
						ResultSet rs = stmt.executeQuery(a);
						
                         				  
                        while (rs.next()) {

						    
                                                        ene=String.valueOf(rs.getString(1));
							feb=String.valueOf(rs.getString(2));
							mar=String.valueOf(rs.getString(3));
							abr=String.valueOf(rs.getString(4));
							may=String.valueOf(rs.getString(5));
							jun=String.valueOf(rs.getString(6));
							jul=String.valueOf(rs.getString(7));
							ago=String.valueOf(rs.getString(8));
							sep=String.valueOf(rs.getString(9));
							oct=String.valueOf(rs.getString(10));
							nov=String.valueOf(rs.getString(11));
							dic=String.valueOf(rs.getString(12));
						   
							
							}
                 
                %>
                <%
                    } catch (SQLException ex) {
                        System.out.println(ex.toString());
                    }         

%>
<%@page contentType="text/html" pageEncoding="UTF-8" import=" Dao.conexion,java.sql.*,java.util.Date"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
</head>
    <body>

          
<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=8,0,0,0" name="Column3D" width="530" height="300" id="Column3D" >
<param name="movie" value="FusionCharts_Evaluation/Charts/Column3D.swf" />
   <param name="FlashVars" value="&dataXML=<chart caption='Record de Compras' subcaption='Del Año 2011' xAxisName='Mes' yAxisName='Nº Compras' numberPrefix=''><set label='Ene' value='<%=ene%>' /><set label='Feb' value='<%=feb%>' /><set label='Mar' value='<%=mar%>' /><set label='Abr' value='<%=abr%>' /><set label='May' value='<%=may%>' /><set label='Jun' value='<%=jun%>' /><set label='Jul' value='<%=jul%>' /><set label='Ago' value='<%=ago%>' /><set label='Sep' value='<%=sep%>' /><set label='Oct' value='<%=oct%>' /><set label='Nov' value='<%=nov%>' /><set label='Dic' value='<%=dic%>' /></chart>">
   <param name="quality" value="high" />
   <embed src="FusionCharts_Evaluation/Charts/Column3D.swf" flashVars="&dataXML=<chart caption='Record De Compras' subcaption='Del Año 2011' xAxisName='Mes' yAxisName='Nº Compras' numberPrefix=''><set label='Ene' value='<%=ene%>' /><set label='Febo' value='<%=feb%>' /><set label='Mar' value='<%=mar%>' /><set label='Abr' value='<%=abr%>' /><set label='May' value='<%=may%>' /><set label='Jun' value='<%=jun%>' /><set label='Jul' value='<%=jul%>' /><set label='Ago' value='<%=ago%>' /><set label='Sep' value='<%=sep%>' /><set label='Oct' value='<%=oct%>' /><set label='Nov' value='<%=nov%>' /><set label='Dic' value='<%=dic%>' /></chart>" quality="high" width="530" height="300" name="Column3D" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" />
</object>
</body>
</html>
