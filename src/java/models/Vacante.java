package models;

import java.util.Date;

/**
 *
 * @author diego
 */
public class Vacante {

    private int id;
    private Date fechaPublicacion;
    private String nombre;
    private String detalle;
    private String descripcion;

    public Vacante() {
    }

    public Vacante(int id) {
        this.fechaPublicacion = new java.util.Date();
        this.id = id;
    }

    public Vacante(int id, Date fechaPublicacion, String nombre, String detalle, String descripcion) {
        this.id = id;
        this.fechaPublicacion = fechaPublicacion;
        this.nombre = nombre;
        this.detalle = detalle;
        this.descripcion = descripcion;

    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getFechaPublicacion() {
        return fechaPublicacion;
    }

    public void setFechaPublicacion(Date fechaPublicacion) {
        this.fechaPublicacion = fechaPublicacion;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDetalle() {
        return detalle;
    }

    public void setDetalle(String detalle) {
        this.detalle = detalle;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    @Override
    public String toString() {
        return "Vacante{" + "id=" + id + ", fechaPublicacion=" + fechaPublicacion + ", nombre=" + nombre + ", detalle=" + detalle + ", descripcion=" + descripcion + '}';
    }

}
