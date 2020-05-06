
package Modelo;

public class Persona {
  int Id;
  String Nombres, Dni;

    public Persona() {
    }

    public Persona(String Nombres, String Dni, int Id) {
        this.Nombres = Nombres;
        this.Dni = Dni;
        this.Id = Id;
    }

    public int getId() {
        return Id;
    }

    public void setId(int Id) {
        this.Id = Id;
    }

    public String getNombres() {
        return Nombres;
    }

    public void setNombres(String Nombres) {
        this.Nombres = Nombres;
    }

    public String getDni() {
        return Dni;
    }

    public void setDni(String Dni) {
        this.Dni = Dni;
    }

   
  
    
}
