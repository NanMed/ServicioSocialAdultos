package objetos;

public class Usuario{
    private int id; 
    private int cuenta;
    private String contrasenia; 
    private String nombre;
    private String genero;
    private String cumple;
    private String correo;
    private String telefono;

    public Usuario(){

    }

    public Usuario(int id, int cuenta, String contrasenia){
        this.id = id; 
        this.cuenta = cuenta;
        this.contrasenia = contrasenia;
    }

    public Usuario(int id, int cuenta, String contrasenia, String nombre, String genero, String cumple, String correo, String telefono){
        this.id = id; 
        this.cuenta = cuenta;
        this.contrasenia = contrasenia;
        this.nombre = nombre;
        this.genero = genero;
        this.cumple = cumple;
        this.correo = correo;
        this.telefono = telefono;
    }

    public void setId(int id){
        this.id = id; 
    }
    public int getId(){
        return id;
    }

    public void setCuenta(int cuenta){
        this.cuenta = cuenta;
    }
    public int getCuenta(){
        return cuenta;
    }

    public String getContrasenia(){
        return contrasenia;
    }

    public void setContrasenia(String contrasenia){
        this.contrasenia = contrasenia;
    }

}