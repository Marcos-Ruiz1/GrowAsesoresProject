/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controlador;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import modelo.SolicitudCita;

/**
 *
 * @author xfs85
 */
public class ConsultasSolicitudes {
    Conexion con = new Conexion();
    
    public boolean registrarSolicitud(String estado, String horarioPreferido, String motivo) throws SQLException{
       PreparedStatement pst = null;
       String query = "insert into solicitud_cita(estado,horario,motivo,id_usuario) values(?,?,?,?)";
       System.out.println("Consulta es: " +query);
       pst = con.getConexion().prepareStatement(query);
        return false;
    }
    
    public List<SolicitudCita> obtenerSolicitudesPorId(int id_usuario) throws SQLException {
        
        PreparedStatement pst = null;
        ResultSet rs = null;
        List<SolicitudCita> solicitudes = new ArrayList<>();
        
        try {
          
            String query = "SELECT * FROM solicitud_cita WHERE id_usuario = ?";
            pst = con.getConexion().prepareStatement(query);
            pst.setInt(1, id_usuario);
            
            rs = pst.executeQuery();
            
            while (rs.next()) {
                // Obtener los campos de cada solicitud desde el ResultSet
                int id = rs.getInt("id");
                String horario = rs.getString("horario");
                String estado = rs.getString("estado");
                String motivo = rs.getString("motivo");
                int idUsuario = rs.getInt("id_usuario");
                
                SolicitudCita solicitud = new SolicitudCita(id,horario, estado, motivo, idUsuario);
                solicitudes.add(solicitud);
            }
        } finally {
            
            
        }
        
        return solicitudes;
    }
    
    
    public boolean actualizarSolicitudPorId(int idSolicitud) throws SQLException {
    PreparedStatement pst = null;
    
    try {
        // Consulta SQL para actualizar el estado de la solicitud
        String query = "UPDATE solicitud_cita SET estado = ? WHERE id = ?";
        pst = con.getConexion().prepareStatement(query);
        pst.setString(1, "Aceptada");
        pst.setInt(2, idSolicitud);
        
        int filasActualizadas = pst.executeUpdate();
        
        // Devuelve true si se actualizó al menos una fila, indicando que la actualización fue exitosa
        return filasActualizadas > 0;
    } finally {
        // Cerrar recursos en orden inverso de apertura para evitar fugas de recursos
        if (pst != null) {
            pst.close();
        }
        if (con.getConexion() != null) {
            con.getConexion().close();
        }
    }
}

    
    // Método para eliminar todas las solicitudes de un usuario por su ID
    public boolean eliminarSolicitudesPorIdUsuario(int idUsuario) throws SQLException {
        
        PreparedStatement pst = null;
        
        try {
        
            String query = "DELETE FROM solicitud_cita WHERE id_usuario = ?";
            pst = con.getConexion().prepareStatement(query);
            pst.setInt(1, idUsuario);
            
            int filasEliminadas = pst.executeUpdate();
            
            // Verificar si se eliminaron correctamente al menos una fila
            return filasEliminadas > 0;
        } finally {
            // Cerrar recursos en orden inverso de apertura para evitar fugas de recursos
            if (pst != null) {
                pst.close();
            }
            if (con.getConexion() != null) {
                con.getConexion().close();
            }
        }
    }
    
}
