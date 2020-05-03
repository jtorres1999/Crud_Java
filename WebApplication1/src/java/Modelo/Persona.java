
package Modelo;

public class Persona {
  int Id;
  String Nombres, Dni;

    public Persona() {
    }

    public Persona(String Nombres, String Dni) {
        this.Nombres = Nombres;
        this.Dni = Dni;
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
