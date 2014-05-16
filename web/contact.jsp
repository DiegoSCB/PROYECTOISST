<%-- 
    Document   : contact
    Created on : 07-may-2014, 12:15:21
    Author     : Juan Manuel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>
  <title>Restaurante ISST | Contacto</title>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <link href="css/style.css" rel="stylesheet" type="text/css"  media="all" />
  <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
 </head>
  <body>
	<!----start-header----->
	 <div class="header">
	     <div class="wrap">
			<div class="top-header">
				<div class="logo">
					<a href="index.jsp"><img src="images/logo.png" title="logo" /></a>
				</div>
				<div class="social-icons">
					<ul>
						<li><a href="#"><img src="images/facebook.png" title="facebook" /></a></li>
						<li><a href="#"><img src="images/twitter.png" title="twitter" /></a></li>
						<li><a href="#"><img src="images/google.png" title="google pluse" /></a></li>
						<li><a class="button1" href="formulario.jsp">Entrar</a></li>
					</ul>
				</div>
				<div class="clear"> </div>
			</div>
			<!---start-top-nav---->
			<div class="top-nav">
				<div class="top-nav-left">
					<ul>
						<li><a href="index.jsp">Home</a></li>
                                                <%
                                                    Boolean logged = (Boolean)session.getAttribute("logged");
                                                    String displayGestor = "";
                                                    String displayCliente = "";
                                                    if (logged == null || !logged){
                                                        System.out.println("anon");
                                                        displayGestor = "none";
                                                        displayCliente = "";
                                                    } else {
                                                        displayGestor = "";
                                                        displayCliente = "none";
                                                    }
                                                %>
                                                <li><a style="display:<%=displayCliente%>" href="about.jsp">Sobre nosotros</a></li>
                                                <li><a href="mesasLibres.jsp">Mesas Libres</a></li>
                                                <li class="active"><a style="display:<%=displayCliente%>" href="contact.jsp">Contacto</a></li>
                                                <li><a href="services.jsp">Servicios</a></li>
						<li><a href="gallery.jsp">Galeria</a></li>
                                                <li><a style="display:<%=displayGestor%>" href="productos.jsp"> Añadir Productos</a></li> 
                                                <li><a style="display:<%=displayGestor%>" href="eliminarproductos.jsp"> Eliminar Productos</a></li>                                                
						<li><a style="display:<%=displayGestor%>" href="estadisticas.jsp">Estadisticas</a></li>
                                                
						<div class="clear"> </div>
					</ul>
				</div>
				
				<div class="clear"> </div>
			</div>
			<!---End-top-nav---->
		</div>
	</div>
   <!----End-header----->
		 <!---start-content---->
		 <div class="content">
		 	<!---start-contact---->
		 	<div class="contact">
		 		<div class="wrap">
				<div class="section group">				
				<div class="col span_1_of_3">
					<div class="contact_info">
			    	 	<h3>Encuentranos aqui</h3>
			    	 		<div class="map">
					   			<iframe width="100%" height="175" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.es/maps?f=q&amp;source=s_q&amp;hl=es&amp;geocode=&amp;q=40.452389,-3.726888&amp;aq=&amp;sll=40.452385,-3.727884&amp;sspn=0.009846,0.021136&amp;g=40.452389,-3.727888&amp;ie=UTF8&amp;ll=40.452385,-3.727884&amp;spn=0.004923,0.010568&amp;t=m&amp;z=14&amp;output=embed"></iframe><br /><small><a href="https://maps.google.es/maps?f=q&amp;source=embed&amp;hl=es&amp;geocode=&amp;q=40.452389,-3.726888&amp;aq=&amp;sll=40.452385,-3.727884&amp;sspn=0.009846,0.021136&amp;g=40.452389,-3.727888&amp;ie=UTF8&amp;ll=40.452385,-3.727884&amp;spn=0.004923,0.010568&amp;t=m&amp;z=14" style="color:#666;text-align:left;font-size:0.85em">Ver mapa más grande</a></small>
					   		</div>
      				</div>
      			<div class="company_address">
				     	<h3>Información :</h3>
						    	<p>Avenida Complutense,</p>
						   		<p>28800, Madrid,</p>
						   		<p>Spain</p>
				   		<p>Telefono:(34) 000 000 000</p>
				   		<p>Fax: (34) 000 00 00 0</p>
				 	 	<p>Email: <span><a href="#">isst(at)etsit.com</span></a></p>
				   		<p>Siguenos en: <span><a href="#">Facebook</a></span>, <span><a href="#">Twitter</a></span></p>
				   </div>
				</div>				
				<div class="col span_2_of_3">
				  <div class="contact-form">
				  	<h3>Contacta con nosotros</h3>
					    <form method="post" action="contact-post.jsp">
					    	<div>
						    	<span><label>NOMBRE</label></span>
						    	<span><input name="userName" type="text" class="textbox"></span>
						    </div>
						    <div>
						    	<span><label>E-MAIL</label></span>
						    	<span><input name="userEmail" type="text" class="textbox"></span>
						    </div>
						    <div>
						     	<span><label>MOVIL</label></span>
						    	<span><input name="userPhone" type="text" class="textbox"></span>
						    </div>
						    <div>
						    	<span><label>ASUNTO</label></span>
						    	<span><textarea name="userMsg"> </textarea></span>
						    </div>
						   <div>
						   		<span><input type="submit" class="mybutton" value="Submit"></span>
						  </div>
					    </form>

				    </div>
  				</div>				
			  </div>
			</div>
			</div>
		 	<!---End-contact---->
		 <!---End-content---->
		 <!---start-footer---->
		
	</div>

		 <!---End-footer---->
	</body>
</html>

