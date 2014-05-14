<%-- 
    Document   : about
    Created on : 07-may-2014, 12:08:06
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
  <title>Restaurante ISST | Sobre nosotros</title>
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
						<li ><a href="index.jsp">Home</a></li>
						<li class="active"><a href="about.jsp">Sobre nosotros</a></li>
						<li><a href="services.jsp">Servicios</a></li>
						<li><a href="gallery.jsp">Galeria</a></li>
						<li><a href="contact.jsp">Contacto</a></li>
                                                
                                                <%
                                                    Boolean logged = (Boolean)session.getAttribute("logged");
                                                    if (logged == null || !logged){
                                                        System.out.println("anon");
                                                    String visibility = "hidden";
                                                    
                                                    %>
                                                
                                                <li><a style="visibility:<%=visibility%>" href="productos.jsp"> Añadir Productos</a></li> 
                                                <li><a style="visibility:<%=visibility%>" href="eliminarproductos.jsp"> Eliminar Productos</a></li>                                                
						<li><a style="visibility:<%=visibility%>" href="estadisticas.jsp">Estadisticas</a></li>
                                                        <% } else { %>
                                                <li><a  href="eliminarproductos.jsp">Eliminar Productos</a></li> 
                                                <li><a  href="productos.jsp"> Añadir Productos</a></li>
						<li><a  href="estadisticas.jsp">Estadisticas</a></li>
                                                <% } %>
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
		 	<!---start-about---->
		 	<div class="about-us">
		 			<div class="wrap">
						<div class="about-header">
							<h3>Sobre nosotros</h3>
							<div class="clear"> </div>
						</div>
						<div class="about-info">
							<a href="#">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Praesent vestibulum molestie lacus.</a>
							<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Praesent vestibulum molestie lacus. Aenean nonummy hendrerit mauris. Phasellus porta. Fusce suscipit varius mi. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Praesent vestibulum molestie lacus. Morbi nunc odio, gravida at, cursus nec, luctus a, lorem. Maecenas tristique orci ac sem. Duis ultricies pharetra magna. Donec accumsan malesuada orci. Donec sit amet eros. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Mauris dictum magna. Sed laoreet aliquam leo. Ut tellus dolor, dapibus eget, vel, cursus eleifend, elit. Aenean auctor wisi et urna. Aliquam erat volutpat. Duis ac turpis. Integer rutrum ante eu lacus. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Praesent vestibulum molestie lacus. Aenean nonummy hendrerit mauris. Phasellus porta. Fusce suscipit varius mi. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Praesent vestibulum molestie lacus. Morbi nunc odio, gravida at, cursus nec, luctus a, lorem. Maecenas tristique orci ac sem. Duis ultricies pharetra magna. Donec accumsan malesuada orci. Donec sit amet eros. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Mauris fermentum dictum magna. Sed laoreet aliquam leo. Ut tellus dolor, dapibus eget, elementum vel, cursus eleifend, elit. Aenean auctor wisi et urna. Aliquam erat volutpat. Duis ac turpis. Integer rutrum ante eu lacus. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Praesent vestibulum molestie lacus. Aenean nonummy hendrerit mauris. Phasellus porta. Fusce suscipit varius mi. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Praesent vestibulum molestie lacus. Morbi nunc odio, gravida at, cursus nec, luctus a, lorem. Maecenas tristique orci ac sem. Duis ultricies pharetra magna. Donec accumsan male</p>
						</div>
					<div class="specials">
					<div class="specials-heading">
						<h3>Platos especiales de hoy</h3>
						<div class="clear"> </div>
					</div>
					<div class="clear"> </div>
					<div class="specials-grids">
						<div class="special-grid">
							<img src="images/slider2.jpg" title="image-name">
							<a href="#">Lorem ipsum dolor</a>
							<p>Lorem ipsum dolor sit amet consectetur adiing elit. In volutpat luctus eros ac placerat. Quisque erat metus facilisis non feu,aliquam hendrerit quam. Donec ut lectus vel dolor adipiscing tincnt.</p>
						</div>
						<div class="special-grid">
							<img src="images/slider1.jpg" title="image-name">
							<a href="#">volutpat luctus</a>
							<p>Lorem ipsum dolor sit amet consectetur adiing elit. In volutpat luctus eros ac placerat. Quisque erat metus facilisis non feu,aliquam hendrerit quam. Donec ut lectus vel dolor adipiscing tincnt.</p>
						</div>
						<div class="special-grid spe-grid">
							<img src="images/slider4.jpg" title="image-name">
							<a href="#">Quisque erat metus</a>
							<p>Lorem ipsum dolor sit amet consectetur adiing elit. In volutpat luctus eros ac placerat. Quisque erat metus facilisis non feu,aliquam hendrerit quam. Donec ut lectus vel dolor adipiscing tincnt.</p>
						</div>
						<div class="clear"> </div>
					</div>
					<div class="clear"> </div>
					</div>
					</div>
					<div class="testmonials">
						<div class="wrap">
							<div class="testmonial-grid">
								<h3>Testimonios :</h3>
								<p>" Despues de comer aqui nunca mas voy a comer en la cafeteria de Teleco" - Nos contaba un estudiante con los ojos llenos de lagrimas de alegria. - </p>
								<p>" ¡Fui un Jueves y no tenian paella!" - Comentaba ilusionado.</p>
								<a href="#"> - Ignacio Corcuera</a>
							</div>
						</div>
					</div>
		 	<!---End-about---->
		 </div>
		 <!---End-content---->
		 <!---start-footer---->
		
			</div>
			<div class="clear"> </div>
		</div>
		<div class="clear"> </div>
	</div>
		 <!---End-footer---->
	</body>
</html>

