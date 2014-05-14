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
 * @author Juan Manuel
 */
public class Registrados {
    ArrayList<Gestor> gestores= new ArrayList<Gestor>();
    public Registrados(){
        
    try{
        Class.forName("com.mysql.jdbc.Driver");
        
        Connection connection = DriverManager.getConnection(
                "jdbc:mysql://localhost/restaurante", "isst", "isst");
            String query = "SELECT * FROM gestor";
            PreparedStatement pst = connection.prepareStatement(query);
            ResultSet rs = pst.executeQuery();
            while(rs.next()){
            Gestor gestor = new Gestor(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4));
            gestores.add(gestor);
            }
        }
        catch(ClassNotFoundException | SQLException ex){
            ex.printStackTrace();
        }
    
}
    public ArrayList<Gestor> listaRegistros(){
        return gestores;
    }
}