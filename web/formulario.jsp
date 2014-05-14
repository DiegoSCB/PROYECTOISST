<%-- 
    Document   : formulario
    Created on : 07-may-2014, 12:17:20
    Author     : Juan Manuel
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
 <html lang="en"> 
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title>Gestor</title>
  <link rel="stylesheet" href="css/style2.css">
 
</head>
<body>
  <section class="container">
      <%
          String visibility_login = null;
          if(session.getAttribute("user") == null){
             visibility_login = "";
          }else{
             visibility_login = "hidden";
        }
      %>
      <div class="login"  <%=visibility_login %>>
      <h1>Acceso</h1>
      <form method="post" action="LoginServlet">
        <p><input type="text" name="login" value="" placeholder="Username or Email"></p>
        <p><input type="password" name="password" value="" placeholder="Password"></p>
        <p class="remember_me">
          <label>
            <input type="checkbox" name="remember_me" id="remember_me">
            Recordarme en este este equipo
          </label>
        </p>
        <p class="submit"><input type="submit" name="commit" value="Login"></p>
      </form>
    </div>

    <div class="login-help" <%=visibility_login %>>
      <p>¿olvidaste la contraseña? <a href="contactoadmin.jsp">Contacta con el administrador</a>.</p>
      </div>
      <%
          String visibility_logout = null;
          if(session.getAttribute("user") == null){
             visibility_logout = "hidden";
          }else{
              visibility_logout= "";
        }
      %>
      <div class="container" <%=visibility_logout %> >
           <form method="post" action="LogoutServlet">
        <p class="submit" ><input type="submit" name="commit" value="Logout"></p>
      </form>
      </div>
      <div class="container">
         <a class="button1" href="index.jsp">Volver</a>
      </div>
  </section>

 
</body>
</html>
