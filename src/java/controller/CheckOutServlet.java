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
import org.apache.commons.lang3.RandomStringUtils;

/**
 *
 * @author ACER NITRO
 */
public class CheckOutServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet CheckOutServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CheckOutServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
            Date date = new Date();
            HttpSession session = request.getSession();
            ArrayList<Cart1> listCart = (ArrayList<Cart1>) session.getAttribute("cart-list");
            Customer customer = (Customer) session.getAttribute("user");
            String idbill=RandomStringUtils.randomAlphanumeric(6);
            double total=(double) session.getAttribute("price");
            Bill bill=new Bill(idbill, customer.getUserName(), total);
            BillDB bdb=new BillDB();
            if (listCart != null && customer != null) {
                bdb.insertBill(bill);
                for (Cart1 c : listCart) {
                    Order order = new Order();
                    order.setOrderID(idbill);
                    order.setId(c.getId());
                    order.setQuantity(c.getQuantity());
                    order.setDate(formatter.format(date));

                    OrderDB odb = new OrderDB();
                    boolean result = odb.inserOrder(order);
                    if (!result) {
                        break;
                    }
                }
                listCart.clear();
                request.setAttribute("alert", "Bạn đã đặt hàng thành công!!! ");
                request.getRequestDispatcher("Payment.jsp").forward(request, response);
                int size = listCart.size();
                session.setAttribute("size", size);
            } else {
                if (customer == null) {
                    response.sendRedirect("login.jsp");
                } else {
                    response.sendRedirect("OurProduct.jsp");
                }
            }
        } catch (IOException e) {
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
}
