/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlet;

import controlador.ConsultasUsuario;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author waw
 */
@WebServlet(name = "PersonalizarUsuario", urlPatterns = {"/PersonalizarUsuario"})
public class PersonalizarUsuario extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet PersonalizarUsuario</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet PersonalizarUsuario at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String accion = request.getParameter("accion");
        String valor = request.getParameter("valor");
        ConsultasUsuario sql = new ConsultasUsuario();
        HttpSession objSesion = request.getSession(true);

        Integer id_usuario = (Integer) objSesion.getAttribute("id_usuario");
        if (id_usuario == null) {
            response.getWriter().write("Sesión inválida");
            return;
        }

        if (accion != null && accion.equals("actualizarnombre")) {
            String resultado = sql.actualizarNombre(valor, id_usuario);
            if (!resultado.isEmpty()) {
                response.getWriter().write(resultado);
            } else {
                response.getWriter().write("Error al actualizar el nombre");
            }
        } else if (accion != null && accion.equals("actualizarpaterno")) {
            String resultado = sql.actualizarApellidoPaterno(valor, id_usuario);
            if (!resultado.isEmpty()) {
                response.getWriter().write(resultado);
            } else {
                response.getWriter().write("Error al actualizar el apellido paterno");
            }

        } else if (accion != null && accion.equals("actualizarmaterno")) {
            String resultado = sql.actualizarApellidoMaterno(valor, id_usuario);
            if (!resultado.isEmpty()) {
                response.getWriter().write(resultado);
            } else {
                response.getWriter().write("Error al actualizar el apellido materno");
            }

        } else if (accion != null && accion.equals("actualizarpassword")) {

            String resultado = sql.actualizarPassword(valor, id_usuario);
            if (!resultado.isEmpty()) {
                response.getWriter().write(resultado);
            } else {
                response.getWriter().write("Error al actualizar el password");
            }
        } else if (accion != null && accion.equals("actualizartelefono")) {
            String resultado = sql.actualizarTelefono(valor, id_usuario);
            if (!resultado.isEmpty()) {
                response.getWriter().write(resultado);
            } else {
                response.getWriter().write("Error al actualizar el telefono");
            }

        } else {
            response.getWriter().write("Acción no reconocida");
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
