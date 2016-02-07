<%-- 
    Document   : autogest
    Created on : 17/02/2011, 11:30:55 AM
    Author     : Carlos Medina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import=" Dao.conexion,java.sql.*,java.util.Date"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
  <head>
    	<link href="sugest/style.css" rel="stylesheet" type="text/css" media="screen" />
    <title>AutoSuggest Sample</title>
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
    .Estilo11 {color: #333333}
    #apDiv1 {
	position:absolute;
	left:14px;
	top:8px;
	width:403px;
	height:370px;
	z-index:1;
}
    </style>
    <script language="Javascript" src="autosuggest.js"></script>
</head>
  <body>
	
	<div id="autosuggest">
	</div>
    <form action="../moduloCliente" method="post">
      <label for="state"><span class="Estilo11">Razon Social
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
                        String a="exec buscaClienteRuc";
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
        <input name="buscarrz" type="submit" id="buscarrz" value="Buscar" />
        <br>
      </p>
    </form>
</body>
</html>
                <%
                    } catch (SQLException ex) {
                        System.out.println(ex.toString());
                    }

%>