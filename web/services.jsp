<%-- 
    Document   : services
    Created on : 07-may-2014, 12:19:15
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
  <title>Restaurante ISST | Servicios</title>
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
						<li><a href="about.jsp">Sobre nosotros</a></li>
						<li class="active"><a href="services.jsp">Servicios</a></li>
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
						<li><a style="visibility:<%=visibility%>" href="ofertas.jsp">Ofertas</a></li>
                                                        <% } else { %>
                                                <li><a  href="eliminarproductos.jsp">Eliminar Productos</a></li> 
                                                <li><a  href="productos.jsp"> Añadir Productos</a></li>
						<li><a  href="ofertas.jsp">Ofertas</a></li>
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
		 	<!---start-services---->
		 	<div class="services">
		 		<div class="wrap">
					<div class="services-header">
						<h3>Servicios</h3>
						<div class="clear"> </div>
					</div>
					<div class="services-grids">
						<div class="services-grid">
							<a href="#">consectetur adiing</a>
							<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Praesent vestibulum molestie lacus. Aenean nonummy hendrerit mauris. Phasellus porta. Fusce suscipit varius mi.</p>
						</div>
						<div class="services-grid">
							<a href="#">consectetur adiing</a>
							<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Praesent vestibulum molestie lacus. Aenean nonummy hendrerit mauris. Phasellus porta. Fusce suscipit varius mi.</p>
						</div>
						<div class="services-grid">
							<a href="#">consectetur adiing</a>
							<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Praesent vestibulum molestie lacus. Aenean nonummy hendrerit mauris. Phasellus porta. Fusce suscipit varius mi.</p>
						</div>
						<div class="services-grid">
							<a href="#">consectetur adiing</a>
							<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Praesent vestibulum molestie lacus. Aenean nonummy hendrerit mauris. Phasellus porta. Fusce suscipit varius mi.</p>
						</div>
						<div class="services-grid">
							<a href="#">consectetur adiing</a>
							<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Praesent vestibulum molestie lacus. Aenean nonummy hendrerit mauris. Phasellus porta. Fusce suscipit varius mi.</p>
						</div>
						<div class="services-grid">
							<a href="#">consectetur adiing</a>
							<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Praesent vestibulum molestie lacus. Aenean nonummy hendrerit mauris. Phasellus porta. Fusce suscipit varius mi.</p>
						</div>
						<div class="services-grid">
							<a href="#">consectetur adiing</a>
							<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Praesent vestibulum molestie lacus. Aenean nonummy hendrerit mauris. Phasellus porta. Fusce suscipit varius mi.</p>
						</div>
						<div class="services-grid">
							<a href="#">consectetur adiing</a>
							<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Praesent vestibulum molestie lacus. Aenean nonummy hendrerit mauris. Phasellus porta. Fusce suscipit varius mi.</p>
						</div>
						 <div class="clear"> </div>
					</div>
				
				<div class="specials">
					<div class="specials-heading">
						<h3>Platos especiales</h3>
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
				</div>
		 	<!---End-services---->
		 <!---End-content---->
		 <!---start-footer---->

	</div>
		 <!---End-footer---->
	</body>
</html>

