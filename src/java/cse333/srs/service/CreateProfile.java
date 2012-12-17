/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package cse333.srs.service;

import cse333.srs.dao.StudentsDao;
import cse333.srs.dao.UsersDao;
import cse333.srs.domain.Students;
import cse333.srs.domain.Users;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Howie
 */
public class CreateProfile extends HttpServlet {

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

        String firstname = request.getParameter("firstname");
        String middlename = request.getParameter("middlename");
        String lastname = request.getParameter("lastname");
        String address = request.getParameter("address");
        String address2 = request.getParameter("address2");
        String city = request.getParameter("city");
        String state = request.getParameter("state");
        String zipcode = request.getParameter("zipcode");
        String country = request.getParameter("country");
        String sex = request.getParameter("sex");
        String ethnicity = request.getParameter("ethnicity");
        String veteran = request.getParameter("veteran");
        String disabled = request.getParameter("disable");
        String major = request.getParameter("major");
        String minor = request.getParameter("minor");
        String gpa = request.getParameter("gpa");

        Users user = (Users) session.getAttribute("user");
        Students s = user.getStudents();
        StudentsDao sdao = new StudentsDao();
        if (s == null) {
            s = new Students();
            s.setAddress(address);
            s.setAddress2(address2);
            s.setCity(city);
            s.setCountry(country);
            s.setEthnicity(ethnicity);
            s.setFirstname(firstname);
            s.setGpa(gpa);
            s.setLastname(lastname);
            s.setGraduationYear(null);
            s.setMajor(major);
            s.setMiddlename(middlename);
            s.setMinor(minor);
            s.setSex(sex);
            s.setState(state);
            s.setZipcode(zipcode);
            s.setUserId(user);
            user.setStudents(s);
            sdao.saveOrUpdate(s);
        } else {
            s.setAddress(address);
            s.setAddress2(address2);
            s.setCity(city);
            s.setCountry(country);
            s.setEthnicity(ethnicity);
            s.setFirstname(firstname);
            s.setGpa(gpa);
            s.setLastname(lastname);
            s.setGraduationYear(null);
            s.setMajor(major);
            s.setMiddlename(middlename);
            s.setMinor(minor);
            s.setSex(sex);
            s.setState(state);
            s.setZipcode(zipcode);
            s.setUserId(user);
            user.setStudents(s);
            sdao.update(s);
        }
        session.setAttribute("user", user);
        request.getRequestDispatcher("home.jsp").forward(request, response);

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
