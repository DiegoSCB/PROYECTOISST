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
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Juan Manuel
 */
@WebServlet(urlPatterns = {"/EliminarProducto"})
public class EliminarProducto extends HttpServlet {

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
         String idParam = request.getParameter("productid");
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            if (idParam == null) out.println("ERROR");
            else {
                out.println("Me ha llegado " + idParam );
                try {
                int id = Integer.valueOf(idParam);
                Class.forName("com.mysql.jdbc.Driver");
                    Connection connection = DriverManager.getConnection(
                            "jdbc:mysql://localhost/restaurante", "isst", "isst");
                    String query = "DELETE FROM products WHERE id_product=?";
                    PreparedStatement pst = connection.prepareStatement(query);
                    pst.setInt(1, id);
                    pst.executeUpdate();
                    out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head> ");
            out.println("<meta http-equiv=\"Refresh\" content=\"3;url=gallery.jsp\">");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Producto eliminado con exito</h1>");
            out.println("<h1>Espere para redirección</h1>");
            out.println("</body>");
            out.println("</html>");
                } catch(Exception ex) { out.println("Algo ha fallado!"); }
            }
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
