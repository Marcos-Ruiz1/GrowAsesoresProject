/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo;

/**
 *
 * @author marco
 */
public class Cita {
    
    private int id_cita;
    private String horario;
    private String descripcion;
    private String estado;
    private int id_solicitud;
    
    public Cita(){
        
    }

    public Cita(int id_cita, String horario, String descripcion, String estado, int id_solicitud) {
        this.id_cita = id_cita;
        this.horario = horario;
        this.descripcion = descripcion;
        this.estado = estado;
        this.id_solicitud = id_solicitud;
    }

    public int getId_cita() {
        return id_cita;
    }

    public void setId_cita(int id_cita) {
        this.id_cita = id_cita;
    }

    public String getHorario() {
        return horario;
    }

    public void setHorario(String horario) {
        this.horario = horario;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public int getId_solicitud() {
        return id_solicitud;
    }

    public void setId_solicitud(int id_solicitud) {
        this.id_solicitud = id_solicitud;
    }

    
    
    
}
