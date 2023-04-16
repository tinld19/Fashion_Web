<%-- 
    Document   : BuyHistory
    Created on : Mar 11, 2023, 2:42:44 PM
    Author     : ACER NITRO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/includes/header.jsp" %>

<main>
    <table class="w-[90%] mx-auto my-12 border-spacing-6">
        <tr class="bg-gray-500 text-white text-center">
            <th>Product</th>
            <th class="basis-1/4">Name</th>
            <th class="price">Price</th>
            <th class="price">Quantity</th>
            <th class="price">Total</th>
            <th class="date">Date</th>
            <th class="date">Shipping</th>
            <th>Feedback</th>
        </tr>
        <c:forEach items="${sessionScope.listBuyed}" var="lb">

            <tr class="px-6 py-4 text-center divide-y divide-x divide-slate-200 py-4 my-12 hover:bg-orange-500">
                <td class=" flex justify-center"><img src="${lb.img}" width="100px" height="130px" alt="alt"/></td>
                <td class=" basis-1/4 text-left mx-2">${lb.name}</td>
                <td>${lb.price}</td>
                <td>${lb.quantity}</td>
                <td>${(lb.quantity*lb.price)}</td>
                <td>${lb.date}</td> 
                <td> <c:if test="${lb.status==1}">Đã Giao Hàng</c:if>
                    <c:if test="${lb.status==0}">Đang Vận Chuyển</c:if> </td>
                <td><c:if test="${lb.status==1}"><a href="FeedbackServlet?id=${lb.idProduct}">Sent FeedBack</a></c:if></td>
                </tr>

        </c:forEach>
    </table>
</main>
<%@include file="/includes/footer.jsp" %>
