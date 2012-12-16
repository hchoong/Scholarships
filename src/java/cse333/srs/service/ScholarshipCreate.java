/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package cse333.srs.service;

import cse333.srs.dao.CriteriaDao;
import cse333.srs.dao.ScholarshipsDao;
import cse333.srs.domain.Criteria;
import cse333.srs.domain.Scholarships;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Howie
 */
public class ScholarshipCreate extends HttpServlet {

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
        String name = request.getParameter("name");
        String descriptions = request.getParameter("descriptions");
        String qualifications = request.getParameter("qualifications");
        int amount = Integer.parseInt(request.getParameter("amount"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        Date deadline = null;
        try {
            deadline = new SimpleDateFormat("MM/dd/yyyy").parse(request.getParameter("deadline"));
        } catch (ParseException ex) {
            Logger.getLogger(ScholarshipCreate.class.getName()).log(Level.SEVERE, null, ex);
        }
        String year = request.getParameter("academic_year");

        Scholarships s = new Scholarships();
        s.setName(name);
        s.setAcademicYear(year);
        s.setAmount(amount);
        s.setDeadline(deadline);
        s.setDescriptions(descriptions);
        s.setQuantity(quantity);
        s.setQualifications(qualifications);
        //Criteria
//        int gpa = 0;
//        String gpa_string = request.getParameter("gpa");
//        if (gpa_string != null || !gpa_string.equals("")) {
//            gpa = Integer.parseInt(gpa_string);            
//        }
//        String major = request.getParameter("major");
//        String ethnicity = request.getParameter("statement");
//        String recommendation = request.getParameter("recommendation");
//        if (major != null && ethnicity != null && recommendation != null) {
//            Criteria c = new Criteria();
//            //c.setGpa(gpa);
//            c.setEthnicity(ethnicity);
//            c.setMajor(major);
//            c.setRecommendation(recommendation);
//            c.setStatement(name);
//            s.setCriteria(c);
//        }

        ScholarshipsDao sdao = new ScholarshipsDao();
        sdao.saveOrUpdate(s);
        request.getRequestDispatcher("ScholarshipList").forward(request, response);
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
