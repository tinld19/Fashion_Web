<%-- 
    Document   : SaleManage
    Created on : Mar 17, 2023, 10:36:00 AM
    Author     : ACER NITRO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/includes/header.jsp" %>
<main>
    <table class="w-[90%] mx-auto my-12 border-spacing-6">
        <tr class="bg-gray-500 text-white text-center">
            <th class="basis-1/4">ID BILL</th>
            <th class="price">USERNAME</th>
            <th class="price">SHIPPING</th>
            <th class="price">STATUS</th>
        </tr>
        <c:forEach items="${sessionScope.listBill}" var="bill">

            <tr class="px-6 py-4 text-center divide-y divide-x divide-slate-200 py-4 my-12 hover:bg-orange-500">             
                <td>${bill.idBill}</td>
                <td>${bill.username}</td>
                <c:if test="${bill.status==1}"> <td><input type="checkbox" name="status" checked readonly> <label for="status"> Done</label></td></c:if>
                <c:if test="${bill.status==0}"> <td><input type="checkbox" name="status" value="1" name="id" value="${bill.idBill}"><label for="status"> Done</label></td></c:if>
                    <td>
                        <button class="btn btn-primary bg-gray-500 hover:white  rounded-lg justify-cent"><a href="UpdateBillServlet?id=${bill.idBill}">Save</a> </button>
                </td>
            </tr>

        </c:forEach>
    </table>
</main>
<%@include file="/includes/footer.jsp" %>