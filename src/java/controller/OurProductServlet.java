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
import java.sql.SQLException;
import java.util.ArrayList;
import model.Product;
import model.ProductDB;
import model.TypeProduct;
import model.TypeProductDB;

public class OurProductServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet OurProductServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet OurProductServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("nameSearch");
        String type = request.getParameter("choose");
        ArrayList<Product> listProduct = new ArrayList<>();
        ArrayList<TypeProduct> listType = new ArrayList<>();
        ProductDB pdb = new ProductDB();
        TypeProductDB tdb = new TypeProductDB();
        listType = tdb.getAllType();
        if (!name.isEmpty()) {
            listProduct = pdb.getProductByName(name);
            request.setAttribute("listProduct", listProduct);
            request.getRequestDispatcher("OurProduct.jsp").forward(request, response);
        } else {
            try {
                listProduct = pdb.getProductByType(type);
                TypeProduct tp = tdb.getTypeById(type);
                request.setAttribute("type", tp);
                request.setAttribute("listType", listType);
                request.setAttribute("listProduct", listProduct);
                request.getRequestDispatcher("OurProduct.jsp").forward(request, response);
            } catch (SQLException e) {
            }
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
