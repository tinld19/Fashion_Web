/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import model.Cart1;

/**
 *
 * @author ACER NITRO
 */
@WebServlet(name = "ProcessServlet", urlPatterns = {"/ProcessServlet"})
public class ProcessServlet extends HttpServlet {

  
    protected void processRequest(HttpServletRequest request, HttpServletResponse response,int count)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ProcessServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ProcessServlet at " + count + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       String action=request.getParameter("action");
       String id=request.getParameter("id");
        HttpSession session=request.getSession();
        ArrayList<Cart1> listCart=(ArrayList<Cart1>) session.getAttribute("cart-list");
       int count=0;
       if(action.equals("inc")){
           for (Cart1 p : listCart) {
               if(p.getId().equals(id)){
                   int quantity=p.getQuantity();
                   quantity++;
                   p.setQuantity(quantity);
                   response.sendRedirect("ShowServlet");
               }
           }
       }
       if(action.equals("dec")){
           for (Cart1 p : listCart) {
               if(p.getId().equals(id)&&p.getQuantity()>1){
                   int quantity=p.getQuantity();
                   quantity--;
                   p.setQuantity(quantity);
                   break;
               }   
           }
           response.sendRedirect("ShowServlet");
       }
    }


}
