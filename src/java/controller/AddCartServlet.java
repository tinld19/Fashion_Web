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

/**
 *
 * @author ACER NITRO
 */
public class AddCartServlet extends HttpServlet {

  
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet AddCartServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AddCartServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            ArrayList<Cart1> cartList=new ArrayList<>();
            String id=request.getParameter("id");
            Cart1 c=new Cart1();
            c.setId(id);
            c.setQuantity(1);
            PrintWriter out=response.getWriter();
            HttpSession session=request.getSession();
            ArrayList<Cart1> cart_list=(ArrayList<Cart1>) session.getAttribute("cart-list");
            if(cart_list==null){
                cartList.add(c);
                session.setAttribute("cart-list", cartList);
                response.sendRedirect("OurProductServlet?nameSearch&choose=all");
            }else{
                cartList=cart_list;
                boolean exist=false;
                for (Cart1 cart : cart_list) {
                    if(cart.getId().equals(id)){
                        exist=true;
                        out.print("product exist");
                        break;
                    }
                }
                if (!exist) {
                    cartList.add(c);
                    session.removeAttribute("cart-list");
                    session.setAttribute("cart-list", cartList);
                    response.sendRedirect("OurProductServlet?nameSearch&choose=all");
//                    for (Cart1 cart1 : cartList) {
//                        out.print(cart1.getId());
//                    }
                }
             
            }
               int size=cartList.size();
            session.setAttribute("size", size);
            
           
        } catch (IOException e) {
        }
        
    }

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
