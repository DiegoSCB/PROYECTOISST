package es.teleco.isst;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.HashMap;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Juan Manuel
 */
@WebServlet(urlPatterns = {"/CrearProducto"})
public class CrearProducto extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String[] keys = {"nombre","descripcion", "categoria", "ingredientes","precio"};
        HashMap<String,String> producto = new HashMap<String,String>();
        for(String k : keys) {
            String param = request.getParameter(k);
            producto.put(k, param);
            System.out.println(k + ": " + param);
        }
        try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection connection = DriverManager.getConnection(
                "jdbc:mysql://localhost/sql", "isst", "isst");
        String query = "INSERT INTO products(name, description, ingredients, id_menu, id_category, image, availability, price) VALUES(?, ?, ?, ?, ?, ?, ?, ?)";
        PreparedStatement pst = connection.prepareStatement(query);
        pst.setString(1, producto.get("nombre"));
        pst.setString(2, producto.get("descripcion"));
        pst.setString(3, producto.get("ingredientes"));
        if(producto.get("id_menu")== null){
        pst.setString(4, "0");}
        pst.setString(5, producto.get("categoria"));
        pst.setString(6, "jjh");
        pst.setString(7, "2");
        pst.setString(8, producto.get("precio"));
        pst.executeUpdate();
        connection.close();
        }catch(Exception ex) {ex.printStackTrace();}
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head> ");
            out.println("<meta http-equiv=\"Refresh\" content=\"2;url=productos.jsp\">");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Producto creado con exito</h1>");
            out.println("<h1>Espere para redirección</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
