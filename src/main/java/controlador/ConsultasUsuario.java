/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controlador;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
/**
 *
 * @author marco
 */
public class ConsultasUsuario extends Conexion{
    public ConsultasUsuario(){}
    
    public boolean autenticacionUsuarioNormal(String usuario, String clave){
        PreparedStatement pst = null;
        ResultSet rs = null;
        try{
            String consulta = "select * from usuario where correo=? and password=?";
            System.out.println("Consulta es: " + consulta);
            pst = getConexion().prepareStatement(consulta);
            pst.setString(1, usuario);
            pst.setString(2, clave);
            rs = pst.executeQuery();
            
            if(rs.next()){
                return true;
            }
            
        }catch(SQLException e){
            System.out.println("Error en: " +e.getMessage());
        }finally{
            try{
                if(getConexion() != null)
                    getConexion().close();
                if(pst != null) pst.close();
                if(rs != null) rs.close();
            }catch(Exception e){
                System.out.println("Error en: " +e);
            }
        }
        return false;
    }
    
    public boolean registrar(String nombres, String apellidoPaterno, String apellidoMaterno, 
            String telefono, String correoElectronico, String contraseña, boolean isAdmin){
        PreparedStatement pst = null;
        try{
            String consulta = "insert into usuario (nombre,apellidoPaterno,apellidoMaterno,telefono, correo,password,isAdmin) values(?,?,?,?,?,?,?)";
            System.out.println("Consulta es: " +consulta);
            pst = getConexion().prepareStatement(consulta);
            pst.setString(1, nombres);
            pst.setString(2, apellidoPaterno);
            pst.setString(3, apellidoMaterno);
            pst.setString(4, telefono);
            pst.setString(5, correoElectronico);
            pst.setString(6, contraseña);
            pst.setBoolean(7, isAdmin);
        
            
            if(pst.executeUpdate() == 1){
                return true;
            }
            
        }catch(SQLException e){
            System.err.println("Error en la consulta: " +e.getMessage());
        }finally{
            try{
                if(getConexion() != null) getConexion().close();
                if(pst != null) pst.close();
            }catch(SQLException e){
                System.out.println("Error SQL en: " +e.getMessage());
            }
        }
        return false;
    }
}
