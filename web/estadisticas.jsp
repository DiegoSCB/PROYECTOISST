<%-- 
    Document   : estadisticas
    Created on : 14-may-2014, 16:35:14
    Author     : Juan Manuel
--%>

<%@page import="es.teleco.isst.Estadisticas"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Restaurante ISST | Estadisticas</title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <link href="css/style.css" rel="stylesheet" type="text/css"  media="all" />
        <link href="css/tables.css" rel="stylesheet" type="text/css"  media="all" />
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
                            <li><a href="mesasLibres.jsp">Mesas Libres</a></li>
                            <li><a style="display:<%=displayCliente%>" href="contact.jsp">Contacto</a></li>
                            <li><a href="services.jsp">Servicios</a></li>
                            <li><a href="gallery.jsp">Galeria</a></li>
                            <li><a style="display:<%=displayGestor%>" href="productos.jsp"> Añadir Productos</a></li> 
                            <li><a style="display:<%=displayGestor%>" href="eliminarproductos.jsp"> Eliminar Productos</a></li>                                                
                            <li class="active"><a style="display:<%=displayGestor%>" href="estadisticas.jsp">Estadisticas</a></li>

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



                        <div class="col span_2_of_3">
                            <div class="contact-form">
                                <h3>Estadísticas:</h3>
                                <form method="post" action="/ISST/CrearProducto">
                                    <div>
                                        <%
                                            Estadisticas estadistica1 = new Estadisticas();
                                            String[][] topventas = estadistica1.masVendido();
                                            int longitud = topventas.length;
                                        %>
                                        <table class="bordered">
                                            <thead>
                                                <tr>
                                                    <th>Productos más vendidos</th><th>Nº Unidades</th>
                                                </tr>
                                            </thead>
                                            <%
                                                for (int i = 0; i < longitud; i++) {
                                            %>
                                            <tbody>
                                                <tr>
                                                    <td><%=topventas[i][0]%></td><td><%=topventas[i][1]%></td>
                                                </tr> 
                                            </tbody>
                                            <%}%>
                                        </table>

                                    </div>
                                    <div>
                                        <%
                                            Estadisticas estadistica2 = new Estadisticas();
                                            String[][] lessventas = estadistica2.menosVendido();
                                            int longitud2 = lessventas.length;
                                        %>
                                        <table class="bordered">
                                            <thead>
                                                <tr>
                                                    <th>Productos menos vendidos</th><th>Nº Unidades</th>
                                                </tr>
                                            </thead>
                                            <%
                                                for (int i = 0; i < longitud2; i++) {
                                            %>
                                            <tbody
                                                <tr>
                                                    <td><%=lessventas[i][0]%></td><td><%=lessventas[i][1]%></td>
                                                </tr> 
                                            </tbody>
                                            <%}%>
                                        </table>

                                    </div>
                                    <div>
                                        <%
                                            Estadisticas estadistica3 = new Estadisticas();
                                            String[][] lentos = estadistica3.platosMasLentos();
                                            int longitud3 = lentos.length;
                                        %>
                                        <table class="bordered">
                                            <thead>
                                                <tr>
                                                    <th>Productos más lentos</th><th>Tiempo medio (minutos)</th>
                                                </tr>
                                            </thead>
                                            <%
                                                for (int i = 0; i < longitud3; i++) {
                                            %>
                                            <tbody
                                                <tr>
                                                    <td><%=lentos[i][0]%></td><td><%=lentos[i][1]%></td>
                                                </tr> 
                                            </tbody>
                                            <%}%>
                                        </table>

                                    </div>
                                    <div>
                                        <%
                                            Estadisticas estadistica4 = new Estadisticas();
                                            String[][] cajaDias = estadistica4.cajaDias();
                                            int longitud4 = cajaDias.length;
                                        %>
                                        <table class="bordered">
                                            <thead>
                                                <tr>
                                                    <th>Dias</th><th>Dinero acumulado (euros)</th>
                                                </tr>
                                            </thead>
                                            <%
                                                for (int i = 0; i < longitud4; i++) {
                                            %>
                                            <tbody>
                                                <tr>
                                                    <td><%=cajaDias[i][0]%></td><td><%=cajaDias[i][1]%></td>
                                                </tr> 
                                            </tbody>
                                            <%}%>
                                        </table>
                                    </div>

                                    <div>

                                        <%
                                            Estadisticas estadistica5 = new Estadisticas();
                                            String[][] cajaActual = estadistica5.cajaActual();
                                            int longitud5 = cajaActual.length;
                                        %>
                                        <table class="bordered">
                                            <thead>
                                                <tr>
                                                    <th>Caja del día en curso</th>
                                                </tr>
                                            </thead>
                                            <%
                                                for (int i = 0; i < longitud5; i++) {
                                            %>

                                            <tbody>
                                                <tr>
                                                    <td><%=cajaActual[i][1]%> €</td>
                                                </tr> 
                                            </tbody> 
                                            <%}%>
                                        </table>

                                    </div>

                                </form>

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