<%-- 
    Document   : PreviewProduct
    Created on : Mar 3, 2023, 12:11:40 AM
    Author     : ACER NITRO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/includes/header.jsp" %>
<main>
    <c:set var="p" value="${requestScope.productPreview}" />
    <c:set var="t" value="${requestScope.type}" />
    <div id="prodetails" class="section-p1">
        <div class="single-image">
            <img src="${p.img}" width="120%" id="main-img" alt="">
        </div>

        <div class="single-details">
            <h6 style="font-size: 15pt;"> <a href="Home.jsp">Home</a>/<a href="OurProductServlet?choose=${t.idType}"></a> ${t.nameType}</h6>
            <h4>${p.nameProduct}</h4>
            <h2>${p.price}</h2>
            <input type="number" value="1"> 
            <button class="normal"><a href="AddCartServlet?id=${p.id}">ADD TO CART</a></button>
            <div>
                <span>The Bamboo is made from a substantial 6.0 oz. per
                    sq. yd. fabric constructed from poly and cotton, this classic fit preshrunk jersey
                    knit provides unmatched comfort with each wear.
                </span>
            </div>
        </div>
    </div>
</main>

