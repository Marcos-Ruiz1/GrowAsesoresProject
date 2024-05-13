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
import modelo.Usuario;

/**
 *
 * @author marco
 */
public class ConsultasUsuario extends Conexion {

    public ConsultasUsuario() {
    }

    public boolean autenticacionUsuario(String usuario, String clave) {
        PreparedStatement pst = null;
        ResultSet rs = null;
        try {
            String consulta = "select * from usuario where correo = ? and password = ?";
            System.out.println("Consulta es: " + consulta);
            pst = getConexion().prepareStatement(consulta);
            pst.setString(1, usuario);
            pst.setString(2, clave);
            rs = pst.executeQuery();

            if (rs.next()) {
                return true;
            }

        } catch (SQLException e) {
            System.out.println("Error en: " + e.getMessage());
        }

        return false;
    }

    public boolean registrar(String nombres, String apellidoPaterno, String apellidoMaterno,
            String telefono, String correoElectronico, String contraseña, boolean isAdmin) {
        PreparedStatement pst = null;
        try {
            String consulta = "insert into usuario (nombre,apellidoPaterno,apellidoMaterno,telefono, correo,password,isAdmin) values(?,?,?,?,?,?,?)";
            System.out.println("Consulta es: " + consulta);
            pst = getConexion().prepareStatement(consulta);
            pst.setString(1, nombres);
            pst.setString(2, apellidoPaterno);
            pst.setString(3, apellidoMaterno);
            pst.setString(4, telefono);
            pst.setString(5, correoElectronico);
            pst.setString(6, contraseña);
            pst.setBoolean(7, isAdmin);

            if (pst.executeUpdate() == 1) {
                return true;
            }

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

    public List<Usuario> obtenerUsuariosNoAdmin() {
        PreparedStatement pst = null;
        ResultSet rs = null;
        List<Usuario> usuarios = new ArrayList<>();

        try {
            String consulta = "SELECT * FROM usuario WHERE isAdmin = ?";
            pst = getConexion().prepareStatement(consulta);
            pst.setBoolean(1, false);

            rs = pst.executeQuery();

            while (rs.next()) {
                Usuario usuario = new Usuario();
                usuario.setId(rs.getInt("id_usuario"));
                usuario.setNombres(rs.getString("nombre"));
                usuario.setApellidoPaterno(rs.getString("apellidoPaterno"));
                usuario.setApellidoMaterno(rs.getString("apellidoMaterno"));
                usuario.setTelefono(rs.getString("telefono"));
                usuario.setCorreoElectronico(rs.getString("correo"));
                usuario.setContraseña(rs.getString("password"));
                usuario.setIsAdmin(rs.getBoolean("isAdmin"));
                usuarios.add(usuario);
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
                System.err.println("Error SQL en: " + e.getMessage());
            }
        }

        return usuarios;
    }

    public boolean actualizar(int id, String nombre, String apellidoPaterno, String apellidoMaterno, String telefono, String correo) {
        PreparedStatement pst = null;
        try {
            String consulta = "UPDATE usuario SET nombre = ?, apellidoPaterno = ?, apellidoMaterno = ?, telefono = ?, correo = ? WHERE id_usuario = ?";
            pst = getConexion().prepareStatement(consulta);
            pst.setString(1, nombre);
            pst.setString(2, apellidoPaterno);
            pst.setString(3, apellidoMaterno);
            pst.setString(4, telefono);
            pst.setString(5, correo);

            if (pst.executeUpdate() == 1) {
                return true;
            }

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
                System.err.println("Error SQL en: " + e.getMessage());
            }
        }
        return false;
    }

    public boolean eliminar(int id) {
        PreparedStatement pst = null;
        try {
            String consulta = "DELETE FROM usuario WHERE id_usuario = ?";
            pst = getConexion().prepareStatement(consulta);
            pst.setInt(1, id);

            if (pst.executeUpdate() == 1) {
                return true;
            }

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
                System.err.println("Error SQL en: " + e.getMessage());
            }
        }
        return false;
    }

    public boolean esAdmin(String usuario, String clave) {
        PreparedStatement pst = null;
        ResultSet rs = null;
        boolean isAdmin = false;

        try {
            String consulta = "SELECT isAdmin FROM usuario WHERE correo = ? AND password = ?";
            pst = getConexion().prepareStatement(consulta);
            pst.setString(1, usuario);
            pst.setString(2, clave);
            rs = pst.executeQuery();

            if (rs.next()) {
                isAdmin = rs.getBoolean("isAdmin");
            }

        } catch (SQLException e) {
            System.out.println("Error en la consulta SQL: " + e.getMessage());
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
                System.out.println("Error al cerrar la conexión: " + e.getMessage());
            }
        }

        return isAdmin;
    }

    public int consultaUsuarioConCredenciales(String usuario, String clave) {
        PreparedStatement pst = null;
        ResultSet rs = null;
        try {
            String consulta = "select * from usuario where correo = ? and password = ?";
            System.out.println("Consulta es: " + consulta);
            pst = getConexion().prepareStatement(consulta);
            pst.setString(1, usuario);
            pst.setString(2, clave);
            rs = pst.executeQuery();

            if (rs.next()) {
                return rs.getInt("id_usuario");
            }

        } catch (SQLException e) {
            System.out.println("Error en: " + e.getMessage());
        }

        return -1;
    }

    public Usuario consultaUsuarioConId(int id_usuario) {
        PreparedStatement pst = null;
        ResultSet rs = null;
        try {
            String consulta = "select * from usuario where id_usuario = ? ";
            System.out.println("Consulta es: " + consulta);
            pst = getConexion().prepareStatement(consulta);
            pst.setInt(1, id_usuario);

            rs = pst.executeQuery();

            if (rs.next()) {
                int id_usuario_encontrado = rs.getInt("id_usuario");
                String nombre = rs.getString("nombre");
                String apellidoPaterno = rs.getString("apellidoPaterno");
                String apellidoMaterno = rs.getString("apellidoMaterno");
                String telefono = rs.getString("telefono");
                String correo = rs.getString("correo");
                String password = rs.getString("password");

                Usuario usuarioEncontrado = new Usuario(id_usuario, nombre, apellidoPaterno, apellidoMaterno, telefono, correo, password, false);
                return usuarioEncontrado;
            }

        } catch (SQLException e) {
            System.out.println("Error en: " + e.getMessage());
        }

        return null;
    }

    public String actualizarNombre(String nuevoNombre, int id_usuario) {
        String consulta = "UPDATE usuario SET nombre = ? WHERE id_usuario = ?";
        try (PreparedStatement pst = getConexion().prepareStatement(consulta)) {
            pst.setString(1, nuevoNombre);
            pst.setInt(2, id_usuario);
            int result = pst.executeUpdate();

            return nuevoNombre; 
        } catch (SQLException e) {
            System.out.println("Error en: " + e.getMessage());
            // Depending on your error handling policy, you might want to rethrow, wrap the exception, or log it
        }
        return "";
    }
    
    
    public String actualizarApellidoPaterno(String nuevoPaterno, int id_usuario) {
        String consulta = "UPDATE usuario SET apellidoPaterno = ? WHERE id_usuario = ?";
        try (PreparedStatement pst = getConexion().prepareStatement(consulta)) {
            pst.setString(1, nuevoPaterno);
            pst.setInt(2, id_usuario);
            int result = pst.executeUpdate();

            return nuevoPaterno; 
        } catch (SQLException e) {
            System.out.println("Error en: " + e.getMessage());
            // Depending on your error handling policy, you might want to rethrow, wrap the exception, or log it
        }
        return "";
    }
    
        public String actualizarApellidoMaterno(String nuevoMaterno, int id_usuario) {
        String consulta = "UPDATE usuario SET apellidoMaterno = ? WHERE id_usuario = ?";
        try (PreparedStatement pst = getConexion().prepareStatement(consulta)) {
            pst.setString(1, nuevoMaterno);
            pst.setInt(2, id_usuario);
            int result = pst.executeUpdate();

            return nuevoMaterno; 
        } catch (SQLException e) {
            System.out.println("Error en: " + e.getMessage());
            // Depending on your error handling policy, you might want to rethrow, wrap the exception, or log it
        }
        return "";
    }
        public String actualizarPassword(String nuevoPassword, int id_usuario) {
        String consulta = "UPDATE usuario SET password   = ? WHERE id_usuario = ?";
        try (PreparedStatement pst = getConexion().prepareStatement(consulta)) {
            pst.setString(1, nuevoPassword);
            pst.setInt(2, id_usuario);
            int result = pst.executeUpdate();

            return nuevoPassword; 
        } catch (SQLException e) {
            System.out.println("Error en: " + e.getMessage());
            // Depending on your error handling policy, you might want to rethrow, wrap the exception, or log it
        }
        return "";
    }
    
        public String actualizarTelefono(String nuevoTelefono, int id_usuario) {
        String consulta = "UPDATE usuario SET telefono = ? WHERE id_usuario = ?";
        try (PreparedStatement pst = getConexion().prepareStatement(consulta)) {
            pst.setString(1, nuevoTelefono);
            pst.setInt(2, id_usuario);
            int result = pst.executeUpdate();

            return nuevoTelefono; 
        } catch (SQLException e) {
            System.out.println("Error en: " + e.getMessage());
            // Depending on your error handling policy, you might want to rethrow, wrap the exception, or log it
        }
        return "";
    }
    
}
