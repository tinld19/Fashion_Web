<%-- 
    Document   : Feedback
    Created on : Mar 3, 2023, 12:10:59 AM
    Author     : ACER NITRO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/includes/header.jsp" %>
<main>
    <div>

        <c:set value="${sessionScope.productFeedback}" var="p" />
        <div id="prodetails" class="section-p1">
            <div class="single-image">
                <img src="${p.img}" width="120%" id="main-img" alt="">
            </div>

            <div class="single-details">
                <h6 style="font-size: 15pt;"> <a href="Home.jsp">Home</a>/<a href="OurProductServlet?choose=${t.idType}"></a> ${t.nameType}</h6>
                <h4>${p.nameProduct}</h4>
                <h2>${p.price}</h2>
            </div>
        </div>

        <div class="feedBack w-[80%] ">
            <form action="SentFeedbackServlet?id=${requestScope.product.id}&user=${sessionScope.user.userName}">
            <div class="justify-center">
                <div class="">
                    <input  class="h-[70px] w-[100%] rounded-md mt-16 flex justify-center "type="text" name="scrip">
                </div>
                <div>
                    <button lass="bg-gray-400 text-white rounded-md py-2 px-4"> Sent</button>
                </div>
            </div>
                </form>

            <div class="hienthiFeedback mt-[20px]">
                <c:forEach var="fb" items="${requestScope.listFeedback}">
                    <div class="feedback1 rounded-md border-solid border-2 my-3 border-stone-400 ">
                        <div class=" flex text-right px-[50px] mb-[10px] ">
                            <label class=" font-mono block text-l text-gray-700 mr-[50px] ">
                                ${fb.username}
                            </label>
                            <p class="font-sans" >${fb.date}</p>

                        </div>
                        <p class="px-[10px]">${fb.scrip}</p>
                    </div>
                </c:forEach>
            </div>
        </div>



    </div> 

</main>

<%@include file="/includes/footer.jsp" %>