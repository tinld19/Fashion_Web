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
import java.text.SimpleDateFormat;
import java.util.Date;
import model.Customer;
import model.Feedback;
import model.FeedbackDB;
import model.Product;

/**
 *
 * @author ACER NITRO
 */
public class SentFeedbackServlet extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response,String user,String id,String scrip)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet SentFeedbackServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SentFeedbackServlet at " + scrip + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session=request.getSession();
       String scrip=request.getParameter("scrip");
        Customer user=(Customer) session.getAttribute("user");
       Product product=(Product) session.getAttribute("productFeedback");
       SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
       Date date=new Date();
       Feedback fb=new Feedback(product.getId(), user.getUserName(),scrip ,formatter.format(date));
       FeedbackDB fbdb=new FeedbackDB();
       fbdb.insert(fb);
       response.sendRedirect("Home.jsp");
    }

   
 
}
