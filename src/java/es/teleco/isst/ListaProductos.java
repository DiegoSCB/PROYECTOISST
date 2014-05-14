package es.teleco.isst;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Juan Manuel
 */
public class ListaProductos {
   
    
    ArrayList<Producto> productos = new ArrayList<>();
    
    public ListaProductos(){
    try{
            Class.forName("com.mysql.jdbc.Driver");
        
        Connection connection = DriverManager.getConnection(
                "jdbc:mysql://localhost/restaurante", "isst", "isst");
            String query = "SELECT * FROM products";
            PreparedStatement pst = connection.prepareStatement(query);
            ResultSet rs = pst.executeQuery();
            System.out.println("AJKF");
            while(rs.next()){
                Producto producto = new Producto(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5), rs.getInt(6), rs.getString(7), rs.getInt(8), rs.getInt(9));
                productos.add(producto);
            }
        }
        catch(ClassNotFoundException | SQLException ex){
            ex.printStackTrace();
        }
    }
    public  ArrayList<Producto> listarProductos() throws ClassNotFoundException, SQLException{
        
    return productos;
}
}
