<%-- 
    Document   : mesasLibres
    Created on : 16-may-2014, 12:25:50
    Author     : coki1306
--%>

<%@page import="java.util.Random"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="es.teleco.isst.ListaMesas"%>
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
            <%
                 Boolean logged = (Boolean) session.getAttribute("logged");
                 String displayGestor = "";
                 String displayCliente = "";
                 String entrar = "Entrar";
                 String gestor = "Bienvenido, Gestor";
                 String userActual = "";
                 if (logged == null || !logged) {
                     System.out.println("anon");
                     displayGestor = "none";
                     displayCliente = "";
                     userActual = entrar;
                 } else {
                     displayGestor = "";
                     displayCliente = "none";
                     userActual = gestor;
                 }
             %>
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
                            <li><a class="button1" href="formulario.jsp"><%=userActual%></a></li>
                        </ul>
                    </div>
                    <div class="clear"> </div>
                </div>
                <!---start-top-nav---->
                <div class="top-nav">
                    <div class="top-nav-left">
                        <ul>
                            <li><a href="index.jsp">Home</a></li>
                            <li><a style="display:<%=displayCliente%>" href="about.jsp">Sobre nosotros</a></li>
                            <li class="active"><a href="mesasLibres.jsp">Mesas Libres</a></li>
                            <li><a style="display:<%=displayCliente%>" href="contact.jsp">Contacto</a></li>
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
            <div style="padding:30px 0 50px 0" class="wrap">
                <%
                    ListaMesas c = new ListaMesas();
                    int longitud = c.listarMesas().size();
                    Random random = new Random();
                    String [] mesaLibre = {"images/mesa1libre.png","images/mesa2libre.png"};
                    String [] mesaOcupada = {"images/mesa1ocupada.png","images/mesa2ocupada.png"};
                    String[] estadoMesa = new String[longitud];
                %>
                <div style="font-family: 'Open Sans'; color: #363638" >
                    <h1> Numero de mesas: <%=longitud%></h1>
                    <h2>Numero de mesas disponibles: <%=c.cuentaMesasDisponibles()%></h2>
                </div>
                <div class="gallery-grids" style="margin-top: 50px">
                    <%
                        for (int i = 0; i < longitud; i++) {
                            Boolean disponible = c.listarMesas().get(i).getAvailable();
                            if (disponible) {
                                estadoMesa[i] = mesaLibre[random.nextInt(2)];
                            } else {
                                estadoMesa[i] = mesaOcupada[random.nextInt(2)];
                            }
                    %>

                    <div class="gallery-grid" style="max-width: 270px">
                        <img width="208px" height="165px" src="<%=estadoMesa[i]%>"
                             </img>
                    </div>
                    <%}%>
                </div>
            </div>
        </div>               
        <!---End-content---->
    </body>
</html>