/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package es.teleco.isst;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author thaerlo
 */
public class Estadisticas {

    public String [][] masVendido() { //Devuelve un array bidi con Nombre prod en 1st col y numero de unidades en 2nd col
        
        String [][] resultado = new String[5][2];
        try { 
            Class.forName("com.mysql.jdbc.Driver");

            Connection connection = DriverManager.getConnection(
                    "jdbc:mysql://localhost/isst", "isst", "isst");
            /*String query = "SELECT orders.id_product, products.price FROM orders, products where orders.id_product = products.id_product ";*/
            String query = "SELECT name, COUNT(products.id_product) mycount from orders\n" +
                           "RIGHT JOIN products\n" +
                           "ON products.id_product = orders.id_product\n" +
                           "group by products.id_product\n" +
                           "order by mycount desc;";

            PreparedStatement pst = connection.prepareStatement(query);

            ResultSet rs = pst.executeQuery();
            int i = 0;
            while(rs.next()){
                resultado[i][0] = rs.getString(1);
                resultado[i][1] = Integer.toString(rs.getInt(2));
                i++;
            }
        } //Este cierra try
        catch (Exception ex) {
            ex.printStackTrace();
        }
        return resultado;
    }
    public String [][] menosVendido() { //Devuelve un array bidi con Nombre prod en 1st col y numero de unidades en 2nd col
        
        String [][] resultado = new String[5][2];
        try { 
            Class.forName("com.mysql.jdbc.Driver");

            Connection connection = DriverManager.getConnection(
                    "jdbc:mysql://localhost/isst", "isst", "isst");
            /*String query = "SELECT orders.id_product, products.price FROM orders, products where orders.id_product = products.id_product ";*/
            String query = "SELECT name, COUNT(products.id_product) mycount from orders\n" +
                           "RIGHT JOIN products\n" +
                           "ON products.id_product = orders.id_product\n" +
                           "group by products.id_product\n" +
                           "order by mycount;";

            PreparedStatement pst = connection.prepareStatement(query);

            ResultSet rs = pst.executeQuery();
            int i = 0;
            while(rs.next()){
                resultado[i][0] = rs.getString(1);
                resultado[i][1] = Integer.toString(rs.getInt(2));
                i++;
            }
        } //Este cierra try
        catch (Exception ex) {
            ex.printStackTrace();
        }
        return resultado;
    }
    
    public String [][] platosMasLentos() { //Devuelve un array bidi con Nombre prod en 1st col y numero de unidades en 2nd col
        
        String [][] resultado = new String[15][2];
        try { 
            Class.forName("com.mysql.jdbc.Driver");

            Connection connection = DriverManager.getConnection(
                    "jdbc:mysql://localhost/isst", "isst", "isst");
            /*String query = "SELECT orders.id_product, products.price FROM orders, products where orders.id_product = products.id_product ";*/
            String query = "SELECT name,avg(TIMESTAMPDIFF(MINUTE,creation_date,prepared_date)) \n" +
                            "AS tiempoMedio\n" +
                            "FROM orders\n" +
                            "LEFT JOIN products \n" +
                            "ON products.id_product = orders.id_product\n" +
                            "GROUP BY orders.id_product\n" +
                            "ORDER by tiempoMedio desc;";

            PreparedStatement pst = connection.prepareStatement(query);

            ResultSet rs = pst.executeQuery();
            int i = 0;
            while(rs.next()){
                resultado[i][0] = rs.getString(1);
                resultado[i][1] = Integer.toString(rs.getInt(2));
                i++;
            }
        } //Este cierra try
        catch (Exception ex) {
            ex.printStackTrace();
        }
        return resultado;
    }
    
    
    public String [][] cajaDias() { //Devuelve un array bidi con Nombre prod en 1st col y numero de unidades en 2nd col
        
        String [][] resultado = new String[7][2];
        try { 
            Class.forName("com.mysql.jdbc.Driver");

            Connection connection = DriverManager.getConnection(
                    "jdbc:mysql://localhost/isst", "isst", "isst");
            /*String query = "SELECT orders.id_product, products.price FROM orders, products where orders.id_product = products.id_product ";*/
            String query = "SELECT DATE_FORMAT(delivered_date, '%W') AS dia, ROUND(SUM(price),2)\n" +
                            "FROM orders\n" +
                            "LEFT JOIN products\n" +
                            "ON products.id_product = orders.id_product\n" +
                            "GROUP BY dia;";

            PreparedStatement pst = connection.prepareStatement(query);

            ResultSet rs = pst.executeQuery();
            int i = 0;
            while(rs.next()){
                resultado[i][0] = rs.getString(1);
                resultado[i][1] = Double.toString(rs.getDouble(2));
                i++;
            }
        } //Este cierra try
        catch (Exception ex) {
            ex.printStackTrace();
        }
        return resultado;
    }
    
    public String [][] cajaActual() { //Devuelve un array bidi con Nombre prod en 1st col y numero de unidades en 2nd col
        
        String [][] resultado = new String[1][2];
        try { 
            Class.forName("com.mysql.jdbc.Driver");

            Connection connection = DriverManager.getConnection(
                    "jdbc:mysql://localhost/isst", "isst", "isst");
            /*String query = "SELECT orders.id_product, products.price FROM orders, products where orders.id_product = products.id_product ";*/
            String query = "SELECT DATE_FORMAT(delivered_date, '%W') AS dia, ROUND(SUM(price),2)\n" +
                            "FROM orders\n" +
                            "LEFT JOIN products\n" +
                            "ON products.id_product = orders.id_product\n" +
                            "WHERE DATE(delivered_date) = DATE(NOW())\n" +
                            "GROUP BY dia;";

            PreparedStatement pst = connection.prepareStatement(query);

            ResultSet rs = pst.executeQuery();
            
            rs.next();
            resultado[0][0] = rs.getString(1);
            resultado[0][1] = Double.toString(rs.getDouble(2));
        } //Este cierra try
        catch (Exception ex) {
            ex.printStackTrace();
        }
        return resultado;
    }
    
    
}
