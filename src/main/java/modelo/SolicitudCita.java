/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo;

/**
 *
 * @author marco
 */
public class SolicitudCita {
    private int id;
    private String horario;
    private String estado;
    private String motivo;
    private int id_usuario;
    
    public SolicitudCita(){
        
    }

    public SolicitudCita(String motivo, String estado){
        this.motivo = motivo;
        this.estado = estado;
    }
    
    public SolicitudCita(int id, String horario, String estado, String motivo, int id_usuario) {
        this.id = id;
        this.horario = horario;
        this.estado = estado;
        this.motivo = motivo;
        this.id_usuario = id_usuario;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getHorario() {
        return horario;
    }

    public void setHorario(String horario) {
        this.horario = horario;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getMotivo() {
        return motivo;
    }

    public void setMotivo(String motivo) {
        this.motivo = motivo;
    }

    public int getId_usuario() {
        return id_usuario;
    }

    public void setId_usuario(int id_usuario) {
        this.id_usuario = id_usuario;
    }

    
    
}
