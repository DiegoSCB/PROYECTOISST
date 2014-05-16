/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package es.teleco.isst;

/**
 *
 * @author coki1306
 */
public class Mesa {
    private int  id, available;
    private String idMesa ,availableMesa;
    
    public Mesa(int id, int available){
    this.id = id;
    this.available = available;
    }
    
    public boolean getAvailable(){
        if(available == 1)
            return true;
        return false;
    }
    
}
