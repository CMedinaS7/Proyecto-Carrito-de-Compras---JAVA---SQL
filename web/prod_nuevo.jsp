<%-- 
    Document   : prod_nuevos
    Created on : 22/02/2011, 07:04:55 PM
    Author     : Carlos Medina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"  import="Dao.conexion,java.sql.*,java.util.Date"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<title>G&amp;M - COMPUTER - 2011</title>
<link rel="stylesheet" type="text/css" href="style.css" />
<!--[if IE 6]>
<link rel="stylesheet" type="text/css" href="iecss.css" />
<![endif]-->
<script type="text/javascript" src="js/boxOver.js"></script>
<style type="text/css">
<!--
div.wrapper {margin: 0 auto; width: 982px;padding:0;}
-->
</style>
				
		<link rel="stylesheet" href="wp-content/themes/rt_infuse_wp/js/rokbox/themes/light/rokbox-style.css" type="text/css" />

					
		<link rel="stylesheet" href="wp-content/themes/rt_infuse_wp/css/template.css" type="text/css" />
		<link rel="stylesheet" href="wp-content/themes/rt_infuse_wp/css/style1.css" type="text/css" />
		<link rel="stylesheet" href="wp-content/themes/rt_infuse_wp/css/typography.css" type="text/css" />
		<link rel="stylesheet" href="wp-content/themes/rt_infuse_wp/js/rokstories/css/rokstories.css" type="text/css" />
		<link rel="stylesheet" href="wp-content/themes/rt_infuse_wp/css/menu-fusion.css" type="text/css" />
		
		<link rel="stylesheet" href="wp-content/themes/rt_infuse_wp/css/wp.css" type="text/css" />
		
		<link rel="stylesheet" href="wp-content/themes/rt_infuse_wp/style.css" type="text/css" media="screen" />
				
		<style type="text/css">
		/*<![CDATA[*/
		<!--
		
		
		div.wrapper { margin: 0 auto; width: 982px;padding:0;}
		body { min-width:982px;}
		#inset-block-left { width:0px;padding:0;}
		#inset-block-right { width:0px;padding:0;}
		#maincontent-block { margin-right:0px;margin-left:0px;}

		.s-c-s .colmid { left:280px;}
		.s-c-s .colright { margin-left:-560px;}
		.s-c-s .col1pad { margin-left:560px;}
		.s-c-s .col2 { left:280px;width:280px;}
		.s-c-s .col3 { width:280px;}

		.s-c-x .colright { left:280px;}
		.s-c-x .col1wrap { right:280px;}
		.s-c-x .col1 { margin-left:280px;}
		.s-c-x .col2 { right:280px;width:280px;}

		.x-c-s .colright { margin-left:-280px;}
		.x-c-s .col1 { margin-left:280px;}
		.x-c-s .col3 { left:280px;width:280px;}
		
		
		-->
		/*]]>*/
		</style>
		
		<script type="text/javascript" src="wp-content/themes/rt_infuse_wp/js/mootools.js"></script>
		
				
				
		  		
  			<script type="text/javascript">var rokboxPath = "wp-content/themes/rt_infuse_wp/js/rokbox/index.html";</script>
  			<script type="text/javascript" src="wp-content/themes/rt_infuse_wp/js/rokbox/rokbox.js"></script>
  			<script type="text/javascript" src="wp-content/themes/rt_infuse_wp/js/rokbox/themes/light/rokbox-config.js"></script>
  			
  		  		
  		<script type="text/javascript" src="wp-content/themes/rt_infuse_wp/js/rokfonts.js"></script>
  		<script type="text/javascript" src="wp-content/themes/rt_infuse_wp/js/rokutils.js"></script>
		<script type="text/javascript" src="wp-content/themes/rt_infuse_wp/js/rokutils.inputs.js"></script>
		
		<script type="text/javascript" src="wp-content/themes/rt_infuse_wp/js/roktabs/roktabs.js"></script>
 		
 		<script type="text/javascript" src="wp-content/themes/rt_infuse_wp/js/rokstories/js/rokstories.js"></script>
 		<script type="text/javascript">var RokStoriesImage = {}, RokStoriesLinks = {};</script>
 		
 				
		<script type="text/javascript">
		//<![CDATA[
		window.addEvent('domready', function() {
			var modules = ['side-mod', 'showcase-panel', 'moduletable', 'article-rel-wrapper'];
			var header = ['h3','h2','h1'];
			RokBuildSpans(modules, header);
		});
		InputsExclusion.push('.content_vote')
		//]]>
		</script>
		
				
		<link rel='stylesheet' id='A2A_SHARE_SAVE-css'  href='wp-content/plugins/add-to-any/addtoany.min4e44.css?ver=1.3' type='text/css' media='all' />
<link rel='stylesheet' id='NextGEN-css'  href='wp-content/plugins/nextgen-gallery/css/nggallery8a54.css?ver=1.0.0' type='text/css' media='screen' />
<link rel='stylesheet' id='shutter-css'  href='wp-content/plugins/nextgen-gallery/shutter/shutter-reloaded6f3e.css?ver=1.3.0' type='text/css' media='screen' />
<link rel='stylesheet' id='contact-form-7-css'  href='wp-content/plugins/contact-form-7/stylesb2da.css?ver=2.4.3' type='text/css' media='all' />
<script type='text/javascript'>
/* <![CDATA[ */
var shutterSettings = {
	msgLoading: "L O A D I N G",
	msgClose: "Click to Close",
	imageCount: "1"
};
/* ]]> */
</script>
<script type='text/javascript' src='wp-content/plugins/nextgen-gallery/shutter/shutter-reloaded6f3e.js?ver=1.3.0'></script>
<script type='text/javascript' src='wp-includes/js/jquery/jquery1159.js?ver=1.4.2'></script>
<script type='text/javascript' src='wp-content/plugins/nextgen-gallery/js/jquery.cycle.all.min892b.js?ver=2.88'></script>
<script type='text/javascript' src='wp-content/plugins/nextgen-gallery/js/ngg.slideshow.min289c.js?ver=1.03'></script>
<script type='text/javascript' src='wp-content/plugins/google-analyticator/external-tracking.min6a4d.js?ver=6.1.1'></script>
<link rel="EditURI" type="application/rsd+xml" title="RSD" href="xmlrpc0db0.php?rsd" />
<link rel="wlwmanifest" type="application/wlwmanifest+xml" href="wp-includes/wlwmanifest.xml" /> 
<link rel='index' title='Impulso Tecnológico' href='index.html' />
<!--[if IE]>
<style type="text/css">
.addtoany_list a img{filter:alpha(opacity=70)}
.addtoany_list a:hover img,.addtoany_list a.addtoany_share_save img{filter:alpha(opacity=100)}
</style>
<![endif]-->



<!-- /all in one seo pack -->
<script type="text/javascript">
//<![CDATA[
var _wpcf7 = { cached: 1 };
//]]>
</script>
<link rel="stylesheet" type="text/css" href="wp-content/plugins/pdf24-post-to-pdf/styles/cp/default_elbf.css" />
<link id='MediaRSS' rel='alternate' type='application/rss+xml' title='NextGEN Gallery RSS Feed' href='wp-content/plugins/nextgen-gallery/xml/media-rss.php' />

<!-- NextGeEN Gallery CoolIris/PicLens support -->
<script type="text/javascript" src="../lite.piclens.com/current/piclens_optimized.js"></script>
<!-- /NextGEN Gallery CoolIris/PicLens support -->
<meta name='NextGEN' content='1.7.3' />
<script type="text/javascript" src="wp-content/themes/rt_infuse_wp/features/RokMenu/themes/fusion/js/fusion.js"></script><script type="text/javascript">window.addEvent('domready', function() {
                new Fusion('ul.menutop', {
                    pill: 1,
                    effect: 'slide and fade',
                    opacity: 1,
                    hideDelay: 250,
                    centered: 0,
                    tweakInitial: {'x': -12, 'y': 2},
                    tweakSubsequent: {'x': -12, 'y': -14},
                    menuFx: {duration: 500, transition: Fx.Transitions.Cubic.easeOut},
                    pillFx: {duration: 400, transition: Fx.Transitions.Quint.easeOut}
                });
            });</script>
<script type="text/javascript">
    window.addEvent('domready', function() {
	var select = $('variation_chooser'), preview = $('variation_preview'), next = $('variation_chooser_next'), prev = $('variation_chooser_prev');
	if (select && preview && prev && next) {
		select.addEvent('change', function(e) {
			new Event(e).stop();
			selectImage(select.selectedIndex);
		});
		prev.addEvent('click', function() {
			var index = select.selectedIndex;
			if (index - 1 < 0) index = select.options.length - 1;
			else index -= 1;
			select.selectedIndex = index;
			selectImage(index);
		});
		next.addEvent('click', function() {
			var index = select.selectedIndex;
			if (index + 1 >= select.options.length) index = 0;
			else index += 1;
			select.selectedIndex = index;
			selectImage(index);
		});
		
		var asset;
		var selectImage = function(index) {
			preview.setStyle('background', 'url(http://empresa.impulsotecnologico.com/wp-content/themes/rt_infuse_wp/includes/widgets/rokswitcher/images/loading.gif) center center no-repeat');
			asset = new Asset.image('http://empresa.impulsotecnologico.com/wp-content/themes/rt_infuse_wp/includes/widgets/rokswitcher/images/ss_' + select.options[index].value + '.jpg', {
				onload: function() { 
					if (index == select.selectedIndex) preview.setStyle('background-image', 'url(' + this.src + ')');
				}
			});
		};
		
		selectImage(select.selectedIndex);
	};
});
</script>
<!-- Google Analytics Tracking by Google Analyticator 6.1.1: http://ronaldheft.com/code/analyticator/ -->
<script type="text/javascript">
	var analyticsFileTypes = [''];
	var analyticsEventTracking = 'enabled';
</script>
<script type="text/javascript">
	var _gaq = _gaq || [];
	_gaq.push(['_setAccount', 'UA-241146-10']);
	_gaq.push(['_trackPageview']);


	(function() {
		var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
		ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
		var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
	})();
</script>

<script> 
function enviar_formulario(){ 
   document.formulario1.submit() 
} 
</script> 


<style type="text/css">
<!--
div.wrapper1 {margin: 0 auto; width: 982px;padding:0;}
div.wrapper1 {
	margin: 0 auto;
	width: 982px;
	padding:0;
	height: 80px;
}
-->
</style>
</head>
<body bgcolor="#FFFFFF">
<%
                    Connection cn;
                    conexion con = new conexion();
                    try {
                		
		        	    cn = con.conectar();
						
                        Statement stmt = cn.createStatement();
						String codigo="";
						String nombre="";
						String marca="";
						String color="";
						String foto="";
						int pre=0;
						int precio=0;
														
						String a="exec prod_nuevo";               
						ResultSet rs = stmt.executeQuery(a);
											
					                      
						  
						while (rs.next()) {
						codigo=String.valueOf(rs.getString(1));
                        nombre=String.valueOf(rs.getString(2));
                        marca=String.valueOf(rs.getString(3));
                        color=String.valueOf(rs.getString(4));
                        foto="Intranet/" + String.valueOf(rs.getString(5));
                       	precio=Integer.parseInt(rs.getString(6));
                        pre=precio - 87;
                        

	    					}									
					     %>
<div class="border_box">
  <div class="product_img"><a href="details.jsp?codigo=<%=codigo%>" target="_blank"><span class="product_title"><%=nombre + " " + marca%></span><img src="<%=foto%>" alt="" title="" width="160" height="105"  border="0" /></a><br />
      <span class="prod_price"><span class="reduce"><%=pre%>$</span> <span class="price"><%=precio%>$</span></span></div>
</div>
<!-- end of main_container -->
</body>
 <%
                    } catch (SQLException ex) {
                        System.out.println(ex.toString());
                    }         

%>
</html>