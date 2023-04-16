/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Customer;
import model.CustomerDB;

/**
 *
 * @author ACER NITRO
 */
public class UpdatePassword extends HttpServlet {

    
   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet UpdatePassword</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UpdatePassword at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

   @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
         String pass1 = request.getParameter("pass1");
        String pass2 = request.getParameter("pass2");
        HttpSession session = request.getSession();
        CustomerDB cdb = new CustomerDB();
        if(pass1.equals(pass2)){
            Customer user = (Customer) session.getAttribute("user");
            System.out.println(user);
            user.setPassword(pass1);
             try {
                 cdb.updateCustomer(user);
             } catch (SQLException ex) {
                 Logger.getLogger(UpdatePassword.class.getName()).log(Level.SEVERE, null, ex);
             }
            request.setAttribute("message", "Update success");
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
    }
   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
