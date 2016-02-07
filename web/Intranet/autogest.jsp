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
    </style>
    <script language="Javascript" src="autosuggest.js"></script>
  </head>
  <body>
	<div id="autosuggest"><ul></ul></div>
	<h1>AutoSuggest v1.0</h1>
	<h3>An attempt at a simple method for javascript-based suggestion dropdowns for autocompletion</h3>

	<p>Text input fields with customized automatic completion have lots of great uses. However, I've found that
	many of the scripts available on the Internet are hard to follow, poorly documented, or difficult to hack.</p>

	<p>This script is an attempt at providing a solution to the problem that is clear and modular enough to be
	easily hacked up and modified for other uses.</p>

	<h3>An example implementation with in-line javascript</h3>
	<p>Here's a quick example that was instantiated by adding javascript in-line with the form:</p>

	<p><pre>
		&lt;input type="text" name="state" id="state"&gt;
		&lt;script language="Javascript"&gt;
			var states = new Array("Alabama","Alaska","American Samoa", ...
			new AutoSuggest(document.getElementById('state'),states);
		&lt;/script&gt;
	</pre></code></p>
	<form>
		<fieldset>
		<legend>State</legend>
		<p>(Up and down arrows highlight a suggestion. Tab key inserts the highlighted suggestion. Escape hides the list.)</p>
		<label for="state">Please enter a State:</label>
		<input type="text" name="state" id="state" />
		<script language="Javascript">
			var states = new Array(<%
                    Connection cn;
                    conexion con = new conexion();
                    try {
                    cn = con.conectar();
                    Statement stmt = cn.createStatement();

						String codigo="";
                                                String a="exec autogest";
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
		<input type="submit" />
		</p>
		</fieldset>
	</form>

	<p>While this is easy to demonstrate, it does tend to crap javascript all over your pretty HTML, ruining the separation of structure and behavior. I've also included <a href="clean_binding.html">an example demonstrating a cleaner way to bind the script to the input.</a> I wouldn't recommend adding the script in-line, it just makes for an easy example.</p>

	<h3>Requirements</h3>

	<p>Unfortunately, the page requires a little set-up at this point to make the script work.</p>
	<p>You'll need to add the following to your HTML:</p>

	<p><code><pre>
		&lt;div id="autosuggest"&gt;&lt;ul&gt;&lt;/ul&gt;&lt;/div&gt;
	</pre></code></p>

	<p>You'll also want to add some rules to your CSS to define the look of your dropdown:</p>

	<p><code><pre>
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
	</pre></code></p>

	<h3>To-Do</h3>
	<p>There are still lots of improvements that could be made to this script:</p>
	<ul>
		<li><strong>Automatic Div Creation:</strong> It sucks that you have to hack an 'autosuggest' div into your HTML. Unfortunately, I had poor luck with adding div's automatically. Maybe it's just me. Eliminating the need for HTML changes would be great.</li>
		<li><strong>Automatic Style Creation:</strong> Adding style rules just to set up a default appearance also sort of sucks. A cleaner way would be to distribute a default css file with the script that gets added dynamically to the page when the first AutoSuggest is instantiated. With this and the dynamic creation of the div, no HTML or CSS changes would be required to make this thing go.</li>
		<li><strong>Support for Safari:</strong> ...would be groovy.</li>
	</ul>
	<p>There are plenty of other fun features that could be added. The goal for this release is to get the job done with clean, legible code that's easy to hack, so I just stuck with the basics. Go nuts, make something cool, and send it my way.</p>
	<h3>License</h3>
	<p>This code is available for use under the terms of the <a href="http://www.gnu.org/copyleft/lesser.html">LGPL</a>. That means you can use it however you want, even in for-fee applications. If you make any modifications to it, though, they must also be made available via the LGPL.</p>
	<p>If you make any nifty improvements, I'd love to hear about them. Drop me a line at joekepley at yahoo&middot;com.</p>

	<h3>Credit</h3>
	<p>This release &copy;2005 The Sling &amp; Rock Design Group Inc., released via <a href="http://www.gadgetopia.com">Gadgetopia.com</a>.</p>
  </body>
</html>
                <%
                    } catch (SQLException ex) {
                        System.out.println(ex.toString());
                    }

%>