<%-- 
    Document   : index
    Created on : 07-may-2014, 11:06:12
    Author     : Diego San Cristóbal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head> 
  <title>Restaurante ISST | Home</title>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <link href="css/style.css" rel="stylesheet" type="text/css"  media="all" />
  <link href="http://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet" type="text/css">
  <link href="css/slider.css" rel="stylesheet" type="text/css"  media="all" />
  
  <link rel="stylesheet" type="text/css" href="css/lightbox.css" media="screen" />
	  
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
						<li class="active"><a href="index.jsp">Home</a></li>
						<li><a href="about.jsp">Sobre nosotros</a></li>
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
	       <!--start-image-slider---->
			    <div class="slider">					     
					<div class="camera_wrap camera_azure_skin" id="camera_wrap_1">									           
						<div data-src="images/slider1.jpg">  </div> 
						<div data-src="images/slider2.jpg">  </div>
						<div data-src="images/slider3.jpg">  </div>
						<div data-src="images/slider4.jpg">  </div>
					</div>
					<div class="clear"> </div>					       
			</div>					
         <!--End-image-slider---->
		 <!---start-content---->
		 <div class="content">
		 	<div class="mid-grid">
		 		<div class="wrap">
			 		<h1>Bienvenidos a nuestra página!!</h1>
			 		<h2>Proyecto ISST</h2>
			 		<p>Esta es la primera versión de nuestra pagina web de cliente para el proyecto de ISST 2013/2014</p>
			 		<a class="button1" href="#">Más Info</a>
		 		</div>
		 	</div>
		 	<div class="bottom-grids">
							<div class="wrap">
								<div class="bottom-grid1">
									<h3>Información</h3>
									<span>Conoce todas las ventajas de nuestro restaurante</span>
									<p></p>
									<ul>
										<li><a href="#">Calidad superior a Ramiro.</a></li>
										<li><a href="#">Situado en el corazon de CIU.</a></li>
										<li><a href="#">Mari, un Mixto Huevo.</a></li>
										<li><a href="#">¿Arterias saturadas? Eso q es lo q es.</a></li>
										<li><a href="#">Sin paella los jueves.</a></li>
										<li><a href="#">La comida de un dia no se sirve al siguiente.</a></li>
										<li><a href="#">Puedes jugar al mus despues de la una.</a></li>
										<li><a href="#">No perseguimos a la gente con el convoi.</a></li>
									</ul>
									<a class="button" href="contact.jsp">Más Info</a>
								</div>
								<div class="bottom-grid2 bottom-mid">
									<h3>Especialidades de la casa</h3>
									<span>Estos son los platos recomentados por nuestro chef</span>
									<p>
									</p>
									<div class="gallery">
										<ul>
												<li><a href="images/slider1.jpg"><img src="images/slider1.jpg" alt=""></a></li>
												<li><a href="images/slider2.jpg"><img src="images/slider2.jpg" alt=""></a></li>
												<li><a href="images/slider3.jpg"><img src="images/slider3.jpg" alt=""></a></li>
												<li><a href="images/slider4.jpg"><img src="images/slider4.jpg" alt=""></a></li>
												<li><a href="images/slider1.jpg"><img src="images/slider1.jpg" alt=""></a></li>
												<li><a href="images/slider2.jpg"><img src="images/slider2.jpg" alt=""></a></li>											
											<div class="clear"> </div>
										</ul>										
								 </div>
								 <a class="button" href="gallery.jsp">Más Info</a>
							</div>
							<div class="bottom-grid1 bottom-last">
									<h3>Información de ultima hora</h3>
									<span>Conoce las ultimas novedades de nuestro restaurante.</span>
									<p>Cena gratis para todos aquellos que aprueben IACR a la primera. Aun no se ha dado ningun caso.</p>
									<p>Si cenas a las 23:59 te libras de la entrega de RCMO. Oferta ya no valida.</p>
									<p>Carta para jovenes realizadas con diagramas UML. ¡Hazte con todos los actores!</p>
									<p>Nueva receta de Grooming para los mas atrevidos. ¡Te lo cocinará el Rol correspondiente!</p>
									<a class="button" href="#">Más Info</a>
								</div>
								<div class="clear"> </div>
							</div>
							<div class="clear"> </div>
	<!--end-wrap--->
	 </div>
		 </div>
		 <!---End-content---->
		 <!---start-footer---->
		 
	</div>

	</body>
</html>

