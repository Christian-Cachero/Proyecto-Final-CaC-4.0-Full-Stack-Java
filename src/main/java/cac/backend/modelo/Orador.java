package cac.backend.modelo;


import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Date;

//Bean
public class Orador implements Serializable {

    private int id;
    private String nombre, apellido, fechaDeAlta;

    public Orador(){

    }

    public Orador(int id, String nombre, String apellido, String fechaDeAlta) {
       setId(id);
       setNombre(nombre);
       setApellido(apellido);
       this.fechaDeAlta = fechaDeAlta;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        if (id < 0) {
            throw new RuntimeException("Valor para ID inconsistente");
        }
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        if (nombre == null || nombre.trim().isEmpty()) {
            throw new RuntimeException("No se ha provisto un nombre");
        }
        this.nombre = nombre.trim();
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        if (apellido == null || apellido.trim().isEmpty()) {
            throw new RuntimeException("No se ha provisto un apellido");
        }
        this.apellido = apellido.trim();
    }


    public String getFechaDeAlta() {
      if (fechaDeAlta == null) {
          Date fecha = new Date();
          SimpleDateFormat formateaFechas = new SimpleDateFormat("dd/MM/yyyy");
          fechaDeAlta = formateaFechas.format(fecha);
          return fechaDeAlta;
      }
        return fechaDeAlta;
    }

    public void setFechaDeAlta(String fechaDeAlta) {
        this.fechaDeAlta = fechaDeAlta;
    }


    @Override
    public String toString() {
        return "Orador{" +
                "nombre='" + nombre + '\'' +
                ", apellido='" + apellido + '\'' +
                '}';
    }
}
