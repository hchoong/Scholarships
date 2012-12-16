/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package cse333.srs.service;

import cse333.srs.dao.UsersDao;
import cse333.srs.domain.Users;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Howie
 */
public class Login extends HttpServlet {

    private static String ERROR_INCORRECT_USERNAME = "e_iu";
    private static String ERROR_INCORRECT_PASSWORD = "e_ip";

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String redirectURL = "";
        HttpSession session = request.getSession();

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        UsersDao dao = new UsersDao();
        Users user = (Users) dao.findByLogin(username, password);

        if (user == null) {
            //Return when failed to verify user
            redirectURL = "login.jsp?p=" + ERROR_INCORRECT_USERNAME;
        } else {
            session.setAttribute("user", user);
            if (user.getType() == 1) {
                redirectURL = "admin_manage.jsp";
            } else {
                redirectURL = "home.jsp";
            }
        }
        request.getRequestDispatcher(redirectURL).forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
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
     * Handles the HTTP
     * <code>POST</code> method.
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
