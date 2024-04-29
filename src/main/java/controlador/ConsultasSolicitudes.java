/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controlador;

import java.sql.PreparedStatement;
import java.sql.SQLException;

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
}
