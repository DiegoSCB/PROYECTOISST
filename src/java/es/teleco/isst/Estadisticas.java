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
import java.sql.SQLException;
import java.util.ArrayList;
/**
package es.teleco.isst;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
 *
 * @author Juan Manuel
 */
public class Estadisticas {
       public int masvendido=1;
       public int idmasvendido=1;
    Producto productoaux;
       int contadorproductos=0;
    public String cajaDia(){
       
       int contador=0;
    try{
            Class.forName("com.mysql.jdbc.Driver");
        
        Connection connection = DriverManager.getConnection(
                "jdbc:mysql://localhost/isst", "isst", "isst");
            /*String query = "SELECT orders.id_product, products.price FROM orders, products where orders.id_product = products.id_product ";*/
            String query ="SELECT * FROM orders";
            
            String query3="SELECT * FROM products";
        PreparedStatement pst = connection.prepareStatement(query);
        PreparedStatement pst3=connection.prepareStatement(query3);
        
        
            ResultSet rs = pst.executeQuery();
            ResultSet rs3 = pst3.executeQuery();
            
            while(rs3.next()){
                contadorproductos=contadorproductos+1;
            }
            while(rs.next()) {
               /* System.out.println("ID:" + rs.getInt(1) + " $:" + rs.getDouble(2));*/
                contador=contador+1;
            }
            int [] ventasdia = new int[contador];
            System.out.println(contador +"quecojones");
            System.out.println(contadorproductos +"quecojones222");
            int p=0;
            Connection connection2 = DriverManager.getConnection(
                "jdbc:mysql://localhost/isst", "isst", "isst");
            String query4="SELECT * FROM orders";
            PreparedStatement pst4=connection2.prepareStatement(query4);
            ResultSet rs4 = pst4.executeQuery();
            
            while(rs4.next()){
                System.out.println("ID:" + rs4.getInt(2));
                ventasdia[p]=rs4.getInt(2);
                p++;
            }
        calculaCaja(ventasdia);
           /*String elmasvendido = SacaMasVendido.Sacar(idmasvendido); */
    
            System.out.println(idmasvendido);
            if(productoaux!=null){
            return productoaux.getNombre();
            }
            else{
                return "no se ha vendido nada";
            }
        }
        catch(Exception ex){
            ex.printStackTrace();
        }
    return "error";
    }

    private Producto calculaCaja(int[] ventasdia) throws ClassNotFoundException, SQLException {
        
        int valormax=0;
        int posicion;
        for(int j =0; j<ventasdia.length-1;j++){
            if(ventasdia[j]>valormax){
                valormax= ventasdia[j];
            }
            else{valormax=valormax;
        }
        }
        int [] aux = new int [contadorproductos];
        for (int i=0; i<ventasdia.length-1;i++){
            posicion= ventasdia[i];
            aux[posicion]=aux[posicion]+1; //la posicion de este array va a coincidir con el id del producto, por tanto la posicion que tenga el valor mayor indicara el producto más vendido;
        }
        for(int k=0; k<aux.length-1;k++){
            if(aux[k]>masvendido){
                masvendido=aux[k];
                idmasvendido=k;
                
            }else{
                masvendido=masvendido;
                idmasvendido=idmasvendido;
            }
        }
       try{ /*Class.forName("com.mysql.jdbc.Driver");
        
        Connection connection2 = DriverManager.getConnection(
                "jdbc:mysql://localhost/isst", "isst", "isst");*/
            /*String query = "SELECT orders.id_product, products.price FROM orders, products where orders.id_product = products.id_product ";*/
          /*  String query =" SELECT * FROM products WERE id_product=?";
        PreparedStatement pst2 = connection2.prepareStatement(query);
        System.out.println(idmasvendido);
        pst2.setInt(1, idmasvendido);
        ResultSet rs2 = pst2.executeQuery();
        System.out.println("ID:" + rs2.getInt(1) + " nombre:" + rs2.getString(2));
        productoaux = new Producto(rs2.getInt(1), rs2.getString(2), rs2.getString(3), rs2.getString(4), rs2.getInt(5), rs2.getInt(6), rs2.getString(7), rs2.getInt(8), rs2.getInt(9));
        return productoaux;*/
        ListaProductos listaestadistica = new ListaProductos();
        int longitud = listaestadistica.listarProductos().size();
      System.out.println(longitud);
        int idaux;
        for (int t=0;t<longitud;t++){
            idaux=listaestadistica.listarProductos().get(t).getId();
            if(idaux==idmasvendido){
                System.out.println(idmasvendido);
                System.out.println(idaux);
                
                productoaux=listaestadistica.listarProductos().get(t);
                return productoaux;
            }
            else{}
            
        }
       }
       catch(Exception ex){
            ex.printStackTrace();
        }
        
    return productoaux;
    
}
}

