<%-- 
    Document   : OurProduct
    Created on : Feb 17, 2023, 11:40:13 AM
    Author     : ACER NITRO
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/includes/header.jsp" %>
<main>
<div class="">
          <div class="basis-1/6  flex flex-row my-16 max-h-11 mr-10 justify-center items-center">
            <div class="tittle text-gray-900 text-xl basis-2/6 text-left justify-start ">
                <h1>${requestScope.type.nameType}</h1> 
            </div>
        <div class="basis-3/6 row height d-flex justify-content-center align-items-center">
        </div>
      
            <div class="fillte basis-2/6 ml-8 text-right justify-end items-end">
                <form style="width:100%;margin-left: -496px;" action="OurProductServlet" method="get">
                    
                    <input style="width:100%;float: left;" type="search" Placeholder="Search" name="nameSearch"/>
                    <i style="position: absolute;margin: 0.9% 0 0 -3.5%;" class="fa-solid fa-camera"></i>
                    
                    <button style=" position: absolute; margin: 0 0 0 -1px; border: 1px solid #000; padding: 8px 26px; background: #000; color: #fff; "><i class="fa-solid fa-magnifying-glass"></i></button>
                    <select style="position:absolute; margin-left: 300px;" class="border-8px" name="choose" id="">
                       <option value="all">All product</option>
                        <c:forEach items="${requestScope.listType}" var="listtype" >
                             <option value="${listtype.idType}">${listtype.nameType}</option>
                        </c:forEach>
                    </select>
                    <input style="position: absolute; margin: 0px 0px 0px 432px;border: 1px solid #000;padding: 8px 10px; background:#000;color:#fff;" type="submit" value="Search" />
                  
                </form>
            </div>
        </div>
    </div>

    <div class="more-product  w-[95%] lg:w-[95%] mx-auto mb-25">
        <div class="grid grid-cols-1  md:grid-cols-2 gap-4 lg:grid-cols-4 gap-2">
            <c:forEach items="${requestScope.listProduct}" var="p">
                <div class="lh-product-card">
                    <div class="h-[330px] bg-[url(${p.img})] bg-cover bg-no-repeat bg-center">
                        <a href="AddCartServlet?id=${p.id}" alt="BestSeller1">
                            <div class="w-full h-full hover:bg-gray-900 hover:bg-opacity-10 after::transition-all a:ease-in-out
                                 after:duration-500
                                 relative group">
                                <div class="absolute bg-white w-11/12 bottom-4 text-center left-1/2 -translate-x-1/2 text-[13px]  text-gray-900 tracking-wider py-4 px-8 text-sm font-semibold hover:cursor-pointer
                                     hover:bg-opacity-40">
                                    ADD TO CART
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="text-center my-8">
                        <a href="#" alt="prodcut-name">
                            <div class="text-xl mb-3 hover:text-orange-600">${p.nameProduct}</div>
                        </a>
                        <div class="price ">
                            <span class="ml-2 text-gray-400 ">${p.price}VND</span>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</main>
 <%@include file="/includes/footer.jsp" %>
 
