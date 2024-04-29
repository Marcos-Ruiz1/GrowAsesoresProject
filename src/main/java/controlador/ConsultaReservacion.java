/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controlador;

import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author waw
 */
public class ConsultaReservacion extends Conexion {

    public boolean registrar(String motivo, String estado) {
        PreparedStatement pst = null;
        try {
            String consulta = "INSERT INTO solicitud_cita (motivo, estado) VALUES (?, ?)";
            pst = getConexion().prepareStatement(consulta);
            pst.setString(1, motivo);
            pst.setString(2, estado);
           
            // Ejecutar la consulta y verificar si se ha insertado correctamente
            return pst.executeUpdate() == 1;
        } catch (SQLException e) {
            System.err.println("Error en la consulta: " + e.getMessage());
        } finally {
            try {
                if (getConexion() != null) {
                    getConexion().close();
                }
                if (pst != null) {
                    pst.close();
                }
            } catch (SQLException e) {
                System.out.println("Error SQL en: " + e.getMessage());
            }
        }
        return false;
    }

}
