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
import java.util.ArrayList;
import java.util.Date;
import model.Bill;
import model.BillDB;
import model.Cart1;
import model.Customer;
import model.Order;
import model.OrderDB;
import model.ProductDB;
import org.apache.commons.lang3.RandomStringUtils;

public class OrderNowServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet OrderNowServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet OrderNowServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        Customer c = (Customer) session.getAttribute("user");
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
        Date date = new Date();
         String idbill=RandomStringUtils.randomAlphanumeric(6);
         ProductDB pdb=new ProductDB();
         BillDB bdb=new BillDB();
        if (c != null) {
            String productID = request.getParameter("id");
            int quantity = Integer.parseInt(request.getParameter("quantity"));
            Bill bill=new Bill(idbill, c.getUserName(),pdb.getProductByID(idbill).getPrice()*quantity);
            bdb.insertBill(bill);
            Order order = new Order();
            order.setOrderID(idbill);
            order.setId(productID);
            order.setQuantity(quantity);
            order.setDate(formatter.format(date));
            OrderDB odb = new OrderDB();
            boolean result = odb.inserOrder(order);
            if (result) {
                ArrayList<Cart1> listCart = (ArrayList<Cart1>) session.getAttribute("cart-list");
                if (listCart != null) {
                    for (Cart1 p : listCart) {
                        if (p.getId().equals(productID)) {
                            listCart.remove(listCart.indexOf(p));
                            break;
                        }
                    }
                }
                response.sendRedirect("ShowServlet");
            } else {
                String error = "Order failed";
                session.setAttribute("orderError", error);
            }
        } else {
            response.sendRedirect("Login.jsp");
        }
    }

}
