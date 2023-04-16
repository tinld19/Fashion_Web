/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.websocket.Session;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Cart1;
import model.Product;
import model.ProductDB;

/**
 *
 * @author ACER NITRO
 */
public class ShowServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response,int size)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ShowServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ShowServlet at " + size + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ProductDB pdb=new ProductDB();
        HttpSession session=request.getSession();
        ArrayList<Cart1> list=(ArrayList<Cart1>) session.getAttribute("cart-list");
        ArrayList<Cart1> cartProducts= (ArrayList<Cart1>) pdb.getCartProducts(list);
        session.setAttribute("cartProduct", cartProducts);
        double price=0;
        try {
            price = pdb.getTotalMoney(list);
            session.setAttribute("price", price);
        } catch (SQLException ex) {
            Logger.getLogger(ShowServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
            response.sendRedirect("MyCart1.jsp");
        
//        request.getRequestDispatcher("MyCart1.jsp").forward(request, response);
//        Cart1 c=new Cart1();
//        ArrayList<Product> list=pdb.getAll();
//        Cookie arr[]=request.getCookies();
//        String txt="";
//        if(arr!=null){
//            for (Cookie cookie : arr) {
//                if(cookie.getName().equals("cart")){
//                    txt=txt+ cookie.getValue();
//                }
//            }
//        }
//        Cart cart=new Cart(txt, list);
//        request.setAttribute("cart", cart);
//        request.getRequestDispatcher("MyCart.jsp").forward(request, response);
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
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
