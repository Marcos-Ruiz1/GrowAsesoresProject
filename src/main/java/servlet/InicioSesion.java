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
 * @author marco
 */
@WebServlet(name = "iniciar", urlPatterns = {"/iniciar"})
public class InicioSesion extends HttpServlet {

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
        PrintWriter out = response.getWriter();
        
        String usuario = request.getParameter("txtUser");
        String clave = request.getParameter("txtClave");
        System.out.println("Usuario: " +usuario);
        System.out.println("Clave: " +clave);
        
        ConsultasUsuario sql = new ConsultasUsuario();
        System.out.println("Objeto consultas creado con exito");
        
        if (sql.autenticacionUsuario(usuario, clave)) {
            HttpSession objSesion = request.getSession(true);
            objSesion.setAttribute("id_usuario", sql.consultaUsuarioConCredenciales(usuario, clave));
            if(sql.esAdmin(usuario, clave)){
                //HttpSession objSesion = request.getSession(true);
                //objSesion.setAttribute("usuario", usuario);
                response.sendRedirect("adminView.jsp");
            }else{
                //HttpSession objSesion = request.getSession(true);
                //objSesion.setAttribute("usuario", usuario);
                response.sendRedirect("usuarioReservacion.jsp");
            }
            
        } else {
            response.sendRedirect("indexLoggeado.jsp");
        }
        //"iniciar" en el action del form para acceder a este servlet
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

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
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
