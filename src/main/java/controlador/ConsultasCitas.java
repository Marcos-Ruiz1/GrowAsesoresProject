/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controlador;

import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author marco
 */
public class ConsultasCitas extends Conexion{
    public ConsultasCitas(){};
    
    public boolean registrarCita(String horario, String descripcion, String estado, int idSolicitud) {
        
        PreparedStatement pst = null;
        
        try {
            
            
            String consulta = "INSERT INTO cita (horario, descripcion, estado, id_solicitud) VALUES (?, ?, ?, ?)";
            pst = getConexion().prepareStatement(consulta);
            pst.setString(1, horario);
            pst.setString(2, descripcion);
            pst.setString(3, estado);
            pst.setInt(4, idSolicitud);
            
            int filasInsertadas = pst.executeUpdate();
            
            // Verificar si se insertó correctamente una fila
            return filasInsertadas == 1;
            
        } catch (SQLException e) {
            System.err.println("Error al registrar cita: " + e.getMessage());
        } finally {
            try {
                if (pst != null) {
                    pst.close();
                }
                if (getConexion() != null) {
                    getConexion().close();
                }
            } catch (SQLException e) {
                System.err.println("Error al cerrar conexión: " + e.getMessage());
            }
        }
        
        return false;
    }
    
    public boolean eliminarCitaPorIdSolicitud(int idSolicitud) {
       
        PreparedStatement pst = null;
        
        try {
            
            
            String consulta = "DELETE FROM cita WHERE id_solicitud = ?";
            pst = getConexion().prepareStatement(consulta);
            pst.setInt(1, idSolicitud);
            
            int filasEliminadas = pst.executeUpdate();
            
            // Verificar si se eliminó correctamente una fila
            return filasEliminadas > 0;
            
        } catch (SQLException e) {
            System.err.println("Error al eliminar cita: " + e.getMessage());
        } finally {
           
        }
        
        return false;
    }
    
}
