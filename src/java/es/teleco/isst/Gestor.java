/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package es.teleco.isst;

/**
 *
 * @author Juan Manuel
 */
public class Gestor {
    private String nombre, login ,password;
    private int id;
    public Gestor(int id, String nombre, String login, String password){
      this.id=id;
        this.nombre=nombre;
      this.login=login;
      this.password=password;
    }
       public int getId(){
            return id;
        }
        public String getNombre(){
            return nombre;
        }
        public String getLogin(){
            return login;
        }
        public String getPassword(){
            return password;
        }
    }


