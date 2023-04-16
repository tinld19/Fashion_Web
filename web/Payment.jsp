<%-- 
    Document   : Payment
    Created on : Mar 2, 2023, 10:18:48 PM
    Author     : ACER NITRO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.*" %>
<%@include file="/includes/header.jsp" %>
                 <main role="main">
        <!-- Block content - Đục lỗ trên giao diện bố cục chung, đặt tên là `content` -->
        <div class="container mt-4">
                <div class="py-5 text-center">
                    <i class="fa fa-credit-card fa-4x" aria-hidden="true"></i>
                    <h2>Payment</h2>
                    <p class="lead">Please check customer information, cart information before placing an Order.</p>
                </div>

                <div class="row">
                    <div class="col-md-4 order-md-2 mb-4">
                        <h4 class="d-flex justify-content-between align-items-center mb-3">
                            <span class="text-muted">Shopping Cart</span>
                            <span class="badge badge-secondary badge-pill">2</span>
                        </h4>
                        <ul class="list-group mb-3">
                            <c:forEach items="${sessionScope.cartProduct}" var="p">
                                 <li class="list-group-item d-flex justify-content-between lh-condensed">
                                <div>
                                    <h6 class="my-0">${p.nameProduct}</h6>
                                    <small class="text-muted">${p.price} x ${p.quantity}</small>
                                </div>
                                <span class="text-muted">${(p.quantity*p.price)}</span>
                            </li>
                            </c:forEach>
                            <li class="list-group-item d-flex justify-content-between">
                                <span>Total</span>
                                <strong style="color: red;">${sessionScope.price}</strong>
                            </li>
                        </ul>

                    </div>
                    <div class="col-md-8 order-md-1">
                        <h4 class="mb-3">Customer Information</h4>
                        <c:set var="user" value="${sessionScope.user}"/>
                        <div class="row">
                            <div class="col-md-12">
                                <label for="kh_ten">Name</label>
                                <input type="text" class="form-control" name="kh_ten" id="kh_ten"
                                    value="${user.name}" readonly="">
                            </div>
                            <div class="col-md-12">
                                <label for="kh_diachi">Address</label>
                                <input type="text" class="form-control" name="kh_diachi" id="kh_diachi"
                                    value="" readonly="">
                            </div>
                            <div class="col-md-12">
                                <label for="kh_dienthoai">Phone number</label>
                                <input type="text" class="form-control" name="kh_dienthoai" id="kh_dienthoai"
                                    value="${user.phone}" readonly="">
                            </div>
                            <div class="col-md-12">
                                <label for="kh_email">Email</label>
                                <input type="text" class="form-control" name="kh_email" id="kh_email"
                                    value="${user.email}" readonly="">
                            </div>
                        </div>

                        <h4 class="mb-3" style="margin-top: 10px;">Payment details</h4>

                        <div class="d-block my-3">
                            <div class="custom-control custom-radio">
                                <input id="httt-1" name="httt_ma" type="radio" class="custom-control-input" required=""
                                    value="1">
                                <label class="custom-control-label" for="httt-1">Cash</label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input id="httt-2" name="httt_ma" type="radio" class="custom-control-input" required=""
                                    value="2">
                                <label class="custom-control-label" for="httt-2">Transfer</label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input id="httt-3" name="httt_ma" type="radio" class="custom-control-input" required=""
                                    value="3">
                                <label class="custom-control-label" for="httt-3">Ship COD</label>
                            </div>
                        </div>
                        <hr class="mb-4">
                        <button class="btn btn-primary btn-lg btn-block" type="submit" name="btnDatHang" style="background-color: #6B7280;"><a href="CheckOutServlet">Oder now</a></button>
                        <h1 >${requestScope.alert}</h1>
                    </div>
                </div>
        </div>
        <!-- End block content -->
    </main>
                <%@include file="/includes/footer.jsp" %>
