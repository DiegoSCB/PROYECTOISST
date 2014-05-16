<%-- 
    Document   : gallery
    Created on : 07-may-2014, 12:18:39
    Author     : Juan Manuel
--%>

<%@page import="es.teleco.isst.ListaProductos"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%
    /*String nombre = "pepe";
    
    Class.forName("com.mysql.jdbc.Driver");
        Connection connection = DriverManager.getConnection(
                "jdbc:mysql://localhost/restaurante", "isst", "isst");
        String query = "SELECT * FROM products";
        PreparedStatement pst = connection.prepareStatement(query);
        ResultSet rs = pst.executeQuery();
*/
             
%> 

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
	  <title>Restaurante ISST | Galeria</title>
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
                                                <li><a style="display:<%=displayCliente%>" href="contact.jsp">Contacto</a></li>
                                                <li><a href="services.jsp">Servicios</a></li>
						<li class="active"><a href="gallery.jsp">Galeria</a></li>
                                                <li><a style="display:<%=displayGestor%>" href="productos.jsp"> Añadir Productos</a></li> 
                                                <li><a style="display:<%=displayGestor%>" href="eliminarproductos.jsp"> Eliminar Productos</a></li>                                                
						<li><a style="display:<%=displayGestor%>" href="estadisticas.jsp">Estadisticas</a></li>
						
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
		 	<!---start-gallery----->
		 	<div class="gallerys">
		 		<div class="wrap">
					<h3>Galeria</h3>
					<div class="gallery-grids">
                                                  <%     
                                                        ListaProductos c = new ListaProductos();
                                                         int longitud = c.listarProductos().size();
                                                         for (int i=0;i<longitud;i++){
                                                             String imagenurl = c.listarProductos().get(i).getImagen();
                                                             String nombreproducto = c.listarProductos().get(i).getNombre();
                                                             String descripcion = c.listarProductos().get(i).getDescripcion();
                                                             int id = c.listarProductos().get(i).getId();
                                                             int precio = c.listarProductos().get(i).getPrecio();
                                                                     
                                                  
                                                  %>
                                                         <div class="gallery-grid">
                                                             <a class="resized-images" href="#"><img class="resized-images" src="<%=imagenurl%>" alt="" /><span><%=precio%>€</span></a>
                                                             <div class="footer-images">
                                                                <h4><%=nombreproducto%></h4>
                                                        
                                                                <p><%=descripcion%></p>
                                                             </div>
                                                  
                                                        
						</div>
                                                         <% System.out.println(id+","+ nombreproducto);} 
                                                                      %>
						
						</div>
						
						<div class="clear"> </div>
					</div>
					<!--div class="gallery-grids">
						<div class="gallery-grid">
							<a href="#"><img src="images/slider3.jpg" alt=""><span>$55</span></a>
							<h4>Fusce suscipit varius mi. Cum</h4>
							<p>Praesent vestibulum molestie lacus. Aenean nonummy hendrerit mauris. Phasellus porta. Fusce suscipit varius mi. Cum sociis natoque penatibus et magnis dis parturient montes.</p>
							<div class="gallery-button"><a href="#">Más Info</a></div>
						</div>
						<div class="gallery-grid grid2">
							<a href="#"><img src="images/slider1.jpg" alt=""><span>$75</span></a>
							<h4>sociis natoque penatibus et</h4>
							<p>Praesent vestibulum molestie lacus. Aenean nonummy hendrerit mauris. Phasellus porta. Fusce suscipit varius mi. Cum sociis natoque penatibus et magnis dis parturient montes.</p>
							<div class="gallery-button"><a href="#">Más Info</a></div>
						</div>
						<div class="gallery-grid">
							<a href="#"><img src="images/slider2.jpg" alt=""><span>$42</span></a>
							<h4>hendrerit mauris. Phasellus</h4>
							<p>Praesent vestibulum molestie lacus. Aenean nonummy hendrerit mauris. Phasellus porta. Fusce suscipit varius mi. Cum sociis natoque penatibus et magnis dis parturient montes.</p>
							<div class="gallery-button"><a href="#">Más Info</a></div>
						</div>
					</div-->					
				    <div class="clear"> </div>
				    <div class="projects-bottom-paination">
						<ul>
							<li class="active"><a href="#">1</a></li>
							
						</ul>
					</div>
				</div>
				</div>
		 	<!---End-gallery----->
		 <!---End-content---->
		 <!---start-footer---->
		 
			
			<div class="clear"> </div>
		
		<div class="clear"> </div>
	
	
		 <!---End-footer---->
	</body>
</html>

