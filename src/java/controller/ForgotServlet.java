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


public class ForgotServlet extends HttpServlet {

  
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ForgotServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ForgotServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    
   @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("user");
        Customer u = new Customer();
        Customer u1 = new Customer();
        CustomerDB cdb = new CustomerDB();
        HttpSession session = request.getSession();
        try {
            u = cdb.getCustomerByName(username);
            u1 = cdb.getCustomerByEmail(username);
            if (u != null) {
                session.setAttribute("user", u);
                request.getRequestDispatcher("ChangePass.jsp").forward(request, response);
            } else if (u1 != null) {
                session.setAttribute("user", u1);
                request.getRequestDispatcher("ChangePass.jsp").forward(request, response);
            } else {
                request.setAttribute("message", "User no exist!");
                request.getRequestDispatcher("Forgot.jsp").forward(request, response);
            }
        } catch (IOException ex) {
            
        } catch (SQLException ex) {
            Logger.getLogger(ForgotServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
