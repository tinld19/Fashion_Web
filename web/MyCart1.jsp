<%-- 
    Document   : MyCart1
    Created on : Mar 2, 2023, 9:26:01 PM
    Author     : ACER NITRO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.*" %>
<%@include file="/includes/header.jsp" %>
<main>
    <div id="cart" class="section-p1">
        <table>
            <thead>
                <tr>
                    <td>No</td>
                    <td>Image</td>
                    <td>Name</td>
                    <td>Price</td>
                    <td>Quantity</td>
                    <td>Subtotal</td>
                    <td>Remove</td>
                </tr>
            </thead>

            <tbody>
                <c:set var="tt" value="0" />
                <c:forEach items="${sessionScope.cartProduct}" var="p">
                    <c:set var="tt" value="${tt+1}" />
                    <tr>
                        <tr>
                            <td>${tt}</td>
                            <td ><img src="${p.img}" alt=""></td>
                            <td>${p.nameProduct}</td>
                            <td>${p.price}</td>

                            <td>
                                <button><a href="ProcessServlet?action=dec&id=${p.id}">-</a></button>
                                <input class="input-qty" max="10" min="1" name="" type="number" value="${p.quantity}">
                                    <button><a href="ProcessServlet?action=inc&id=${p.id}">+</a></button>
                            </td>
                            <td>${(p.quantity*p.price)}</td>
                            <td><a href="RemoveCartServlet?id=${p.id}">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash" viewBox="0 0 16 16">
                                        <path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z"/>
                                        <path fill-rule="evenodd" d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z"/>
                                    </svg>
                                </a></td>
                        </tr>
                    </c:forEach>

            </tbody>
        </table>
    </div>

    <div id="buy-more">
        <button ><a href="OurProductServlet?choose=all">BUY MORE</a></button>
    </div>

    <div id="cart-add" class="section-p1">
        <div id="coupon">


            <h3>Apply Coupon</h3>
            <div>
                <input type="text" placeholder="Enter your Coupon">
                    <button class="normal">Apply</button>
            </div>
        </div>

        <div id="subtotal">
            <h3>Cart Totals</h3>
            <table>
                <tr>
                    <td>Cart Subtotal</td>
                    <td>${sessionScope.size}    </td>
                </tr>

                <tr>
                    <td>Shipping</td>
                    <td>Free</td>
                </tr>

                <tr>
                    <td><strong>Total</strong></td>
                    <td><strong>${sessionScope.price}</strong></td>
                </tr>

            </table>

            <button class="normal"><a href="Payment.jsp">PAYMENT</a></button>
        </div>
    </div>
</main>
<%@include file="/includes/footer.jsp" %>