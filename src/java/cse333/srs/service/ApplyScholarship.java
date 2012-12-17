/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package cse333.srs.service;

import cse333.srs.dao.ApplicationsDao;
import cse333.srs.domain.Applications;
import cse333.srs.domain.Scholarships;
import cse333.srs.domain.Students;
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
public class ApplyScholarship extends HttpServlet {

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
        HttpSession session = request.getSession();
        ApplicationsDao dao = new ApplicationsDao();
        Applications app = new Applications();
        Students student = ((Users)session.getAttribute("user")).getStudents();
        Scholarships scholarship = (Scholarships) session.getAttribute("scholarship");
        app.setStudentsId(student);
        app.setScholarshipsId(scholarship);
        app.setStatus("Pending Review");
        String statement = request.getParameter("statement");
        String recommendation = request.getParameter("recommendation");
        String resume = request.getParameter("resume");
        app.setRecommendation(recommendation);
        app.setResume(resume);
        app.setStatement(statement);
        dao.saveOrUpdate(app);     
        request.getRequestDispatcher("userapplications.jsp?alert='success'").forward(request, response);
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
