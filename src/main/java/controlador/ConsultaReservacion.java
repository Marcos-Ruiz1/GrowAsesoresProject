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
 * @author waw
 */
public class ConsultaReservacion extends Conexion {

    public boolean registrar(String horario, String motivo, String estado, int id_usuario) {
        PreparedStatement pst = null;
        try {
            String consulta = "INSERT INTO solicitud_cita (horario, motivo, estado, id_usuario) VALUES (?, ?, ?, ?)";
            pst = getConexion().prepareStatement(consulta);
            pst.setString(1, horario);

            pst.setString(2, motivo);
            pst.setString(3, estado);
            pst.setInt(4, id_usuario);

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

    public List<SolicitudCita> consultarSolicitudes() {
        List<SolicitudCita> solicitudes = new ArrayList<>();
        PreparedStatement pst = null;
        ResultSet rs = null;
        try {
            String consulta = "SELECT motivo, estado FROM solicitud_cita";
            pst = getConexion().prepareStatement(consulta);
            rs = pst.executeQuery();
            while (rs.next()) {

                String motivo = rs.getString("motivo");
                String estado = rs.getString("estado");

                SolicitudCita solicitud = new SolicitudCita(motivo, estado);
                solicitudes.add(solicitud);
            }
        } catch (SQLException e) {
            System.err.println("Error en la consulta: " + e.getMessage());
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }
                if (pst != null) {
                    pst.close();
                }
                if (getConexion() != null) {
                    getConexion().close();
                }
            } catch (SQLException e) {
                System.out.println("Error SQL en: " + e.getMessage());
            }
        }
        return solicitudes;
    }

}
