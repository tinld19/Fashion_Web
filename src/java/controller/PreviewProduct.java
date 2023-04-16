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
import model.Product;
import model.ProductDB;
import model.TypeProduct;
import model.TypeProductDB;

/**
 *
 * @author ACER NITRO
 */
public class PreviewProduct extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet PreviewProduct</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet PreviewProduct at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String id=(String) request.getParameter("id");
        ProductDB pdb=new ProductDB();
        TypeProductDB tdb=new TypeProductDB();
        try {
           TypeProduct type=tdb.getTypeById(id);
           Product p= pdb.getProductByID(id);
           request.setAttribute("productPreview", p);
           request.setAttribute("type", type);
           request.getRequestDispatcher("PreviewProduct.jsp").forward(request, response);
        } catch (ServletException e) {
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
