/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Customer;
import model.CustomerDB;
import model.Product;
import model.ProductDB;

/**
 *
 * @author ACER NITRO
 */
public class LoginServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response, String user, String pass)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet login</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet login at " + pass + user + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String user = request.getParameter("user");
        String pass = request.getParameter("pass");
        String remember = request.getParameter("rem");
        CustomerDB db = new CustomerDB();
        Customer c = null;

        Cookie cookieUser = new Cookie("cuser", user);
        Cookie cookiePass = new Cookie("cpass", pass);
        Cookie cookieRem = new Cookie("crem", remember);
        try {
            c = db.login(user);
        } catch (Exception e) {
            Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, e);
        }
        if (c != null && c.getPassword().equals(pass)) {

            if (remember != null) {
                cookieUser.setMaxAge(60 * 60 * 24);
                cookiePass.setMaxAge(60 * 60 * 24);
                cookieRem.setMaxAge(60 * 60 * 24);
            } else {
                cookieUser.setMaxAge(0);
                cookiePass.setMaxAge(0);
                cookieRem.setMaxAge(0);
            }
            response.addCookie(cookieUser);
            response.addCookie(cookiePass);
            response.addCookie(cookieRem);
            
            
            HttpSession session = request.getSession();
            session.setAttribute("user", c);
            session.setAttribute("rem", remember);
            ProductDB pdb = new ProductDB();
            ArrayList<Product> bestseller = pdb.bestSeller();
            session.setAttribute("bestseller", bestseller);
            request.getRequestDispatcher("Home.jsp").forward(request, response);
        } else {
            request.setAttribute("alert", "username or password incorrect");
            request.getRequestDispatcher("Login.jsp").forward(request, response);
        }
    }

    
}
