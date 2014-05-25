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
 *
 * @author coki1306
 */
public class ListaMesas {
        ArrayList<Mesa> mesas = new ArrayList<>();
    
    public ListaMesas(){
    try{
            Class.forName("com.mysql.jdbc.Driver");
        
        Connection connection = DriverManager.getConnection(
                "jdbc:mysql://localhost/isst", "isst", "isst");
            String query = "SELECT * FROM tables";
            PreparedStatement pst = connection.prepareStatement(query);
            ResultSet rs = pst.executeQuery();
            System.out.println("sacando mesas");
            while(rs.next()){
                Mesa mesa = new Mesa(rs.getInt(1), rs.getInt(2));
                mesas.add(mesa);
            }
        }
        catch(ClassNotFoundException | SQLException ex){
            ex.printStackTrace();
        }
    }
    public  ArrayList<Mesa> listarMesas() throws ClassNotFoundException, SQLException{
        
    return mesas;
    
}
    public int cuentaMesasDisponibles(){
    int contador = 0;
        for (Mesa i : mesas){
            if(i.getAvailable() == true){
                contador++;
            }
        }
        return contador;
    }
    
    
}
