package es.teleco.isst;


public class Producto {
    private int  id, idcategoria,disponibilidad,precio,idmenu;
    private String nombre, descripcion ,ingredientes,imagen;
    
    public Producto( int id, String nombre , String descripcion, String ingredientes, int idmenu,int idcategoria,String imagen, int disponibilidad, int precio){
        this.id = id;
        this.idcategoria = idcategoria;
        this.disponibilidad = disponibilidad;
        this.precio = precio;
        this.idmenu =idmenu;
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.ingredientes = ingredientes;
        this.imagen = imagen;
    }
        
        public int getId(){
            return id;
            }
        public String getNombre(){
            return nombre;
        }
        public String getDescripcion(){
            return descripcion;
        }
        public String getIngredientes(){
            return ingredientes;
        }
        public int getIdmenu(){
            return idmenu;
        }
        public int getIdcategoria(){
            return idcategoria;
        }
        public int getDisponibilidad(){
            return disponibilidad;
        }
        public int getPrecio(){
            return precio;
        }
        public String getImagen(){
            return imagen;
        }
    }

