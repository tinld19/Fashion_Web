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
import java.util.ArrayList;
import model.Cart1;

public class RemoveCartServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response,String count)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet RemoveCartServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet RemoveCartServlet at " + count + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String id = request.getParameter("id");
        int count=0;
        if (id!= null) {
            HttpSession session = request.getSession();
            ArrayList<Cart1> listCart = (ArrayList<Cart1>) session.getAttribute("cart-list");
            if(listCart!=null){
                for (Cart1 p : listCart) {
                    if(p.getId().equals(id)){
                     listCart.remove(listCart.indexOf(p));
                        break;
                    }
                }
                int size=listCart.size();
            session.setAttribute("size", size);
               response.sendRedirect("ShowServlet");
            }
        } else {
            response.sendRedirect("ShowServlet");

        }

    }

}
