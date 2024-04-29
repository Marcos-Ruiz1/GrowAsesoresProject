/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controlador;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
/**
 *
 * @author marco
 */
public class Conexion {
    private String USERNAME = "root";
    private String PASSWORD = "1234";
    private String HOST = "localhost";
    private String PORT = "3306";
    private String DATABASE = "growasesores";
    private String CLASSNAME = "com.mysql.cj.jdbc.Driver";
    private String URL = "jdbc:mysql://"+HOST+":"+PORT+"/"+DATABASE;
    private Connection con;
    
    public Conexion(){
        try{
            Class.forName(CLASSNAME);
            con = DriverManager.getConnection(URL, USERNAME, PASSWORD);
        }catch(ClassNotFoundException e){
            System.err.println("Error en: " +e.getMessage());
        }catch(SQLException e){
            System.err.println("Error en: " +e.getMessage());
        }
    }
    
    public Connection getConexion(){
        
        if(con == null){
            new Conexion();
        }
        return con;
    }
}
