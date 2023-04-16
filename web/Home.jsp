<%-- 
    Document   : newjsp
    Created on : Feb 14, 2023, 9:27:17 AM
    Author     : ACER NITRO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/includes/header.jsp" %>
<main>
    <div class="slider h-[530px] bg-[url(./images/anhngang.jpg)] bg-cover bg-no-repeat bg-top">
        <div class="w-full h-full flex justify-center items-center bg-gray-900 bg-opacity-50">
            <div class="mx-16 text-white text-center">
                <div class="text-base mb-6">BEST PLACE TO BUY</div>
                <div class="font-medium text-5xl mb-6">LOUISVUITTON</div>
                <div class="font-medium text-lg mb-6">“Luxury, convenience, creativity”</div>
                <div class="flex justify-center">
                    <div class="bg-white text-gray-900 w-max tracking-wider py-4 px-8 text-sm font-semibold hover:cursor-pointer
                         hover:bg-opacity-40">
                        <a href="OurProductServlet?nameSearch&choose=all">EXPLORE OUR PRODUCTS</a>  </div>
                </div>
            </div>
        </div>
    </div>
    <div class="story flex justify-center items-center">
        <div class="px-2 md:px-8 lg:px-16 xl:px-32 py-10 text-center">
            <div class="text-5xl mb-6 ">
                LOUIS VUITTON & PEOPLE FOR WILDWIFE
            </div>
            <div class="text-gray-500 mb-6">
                Choose the perfect gift from our specially curated selection of products <br>
                Wherever you are, Louis Vuitton Client Advisors will be delighted to assist you.<br>
                Louis Vuitton’s personalization offer spans a wide range of services.
            </div>
            <div class="text-red-900 hover:text-yellow-400 ">
                <a href="">Read full Story</a>
            </div>
        </div>
    </div>
    <div class="lh-subheadline flex justify-center items-center my-24">
        <div class="lh-subheadline-deco-line w-8 h-px bg-gray-400"></div>
        <div class="lh-subheadline-label uppercase mx-4 tracking-widest font-medium text-[13px]">BestSeller
        </div>
        <div class="lh-subheadline-deco-line w-8 h-px bg-gray-400"></div>
    </div>
    <div class="featured  w-[95%] lg:w-[65%] mx-auto mb-25">
        <div class="grid grid-cols-2 gap-4">
            <div class="lh-product-card h-[540px]">
                <div
                    class="h-[540px] bg-[url(./images/bg2.png)] bg-cover bg-no-repeat bg-center">
                    <a href="PreviewProduct?id=bg2" alt="BestSeller1">
                        <div class="w-full h-full hover:bg-gray-900 hover:bg-opacity-10 after::transition-all a:ease-in-out
                             after:duration-500
                             relative group">
                            <div class="absolute bg-white w-11/12 bottom-4 text-center left-1/2 -translate-x-1/2 text-[13px]  text-gray-900 tracking-wider py-4 px-8 text-sm font-semibold hover:cursor-pointer
                                 hover:bg-opacity-40">
                                Explore Bug
                            </div>
                        </div>
                    </a>
                </div>
                <div class="text-center mt-8">
                    <a href="PreviewProduct?id=bg2" alt="prodcut-name">
                        <div class="text-xl mb-3 hover:text-orange-600">Bag-ABX</div>
                    </a>
                    <div class="price ">
                        <span class="text-lg text-orange-600">3600.00 VND</span>
                        <span class="ml-2 text-gray-400 line-through">4800.00 VND</span>
                    </div>
                </div>
            </div>

            <div class="lh-product-card h-[540px]">
                <div
                    class="h-[540px] bg-[url(./images/ts3.jpg)] bg-cover bg-no-repeat bg-center">
                    <a href="PreviewProduct?id=ts3" alt="BestSeller2">
                        <div class="w-full h-full hover:bg-gray-900 hover:bg-opacity-10 after::transition-all a:ease-in-out
                             after:duration-500
                             relative group">
                            <div class="absolute bg-white w-11/12 bottom-4 text-center left-1/2 -translate-x-1/2 text-[13px]  text-gray-900 tracking-wider py-4 px-8 text-sm font-semibold hover:cursor-pointer
                                 hover:bg-opacity-40">
                                Explore Bug
                            </div>
                        </div>
                    </a>
                </div>
                <div class="text-center mt-8">
                    <a href="PreviewProduct?id=ts3" alt="prodcut-name">
                        <div class="text-xl mb-3 hover:text-orange-600">Shirts Summer</div>
                    </a>
                    <div class="price ">
                        <span class="text-xl text-orange-600">3500.00 VND</span>
                        <span class="ml-2 text-gray-400 line-through">4200.00 VND</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="lh-subheadline flex justify-center items-center mt-[200px] mb-[80px]">
        <div class="lh-subheadline-deco-line w-8 h-px bg-gray-400"></div>
        <div class="lh-subheadline-label uppercase mx-4 tracking-widest font-medium text-[13px]">
            COLLECTION SUMMER 2023
        </div>
        <div class="lh-subheadline-deco-line w-8 h-px bg-gray-400"></div>
    </div>
    <div class="more-product  w-[95%] lg:w-[65%] mx-auto mb-25">
        <div class="grid grid-cols-1  md:grid-cols-2 gap-4 lg:grid-cols-3 gap-8">

            <c:forEach items="${sessionScope.bestseller}" var="p">
                <div class="lh-product-card">
                    <div class="h-[330px] bg-[url(${p.img})] bg-cover bg-no-repeat bg-center">
                        <a href="PreviewProduct?id=${p.id}" alt="BestSeller1">
                            <div class="w-full h-full hover:bg-gray-900 hover:bg-opacity-10 after::transition-all a:ease-in-out
                                 after:duration-500 relative group">
                                <div class="absolute bg-white w-11/12 bottom-4 text-center left-1/2 -translate-x-1/2 text-[13px]  text-gray-900 tracking-wider py-4 px-8 text-sm font-semibold hover:cursor-pointer
                                     hover:bg-opacity-40">
                                    Explore Bug
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="text-center my-8">
                        <a href="PreviewProduct?id=st5" alt="prodcut-name">
                            <div class="text-xl mb-3 hover:text-orange-600">${p.nameProduct}</div>
                        </a>
                        <div class="price ">
                            <span class="ml-2 text-gray-400 ">${p.price} VND</span>
                        </div>
                    </div>
                </div>
            </c:forEach>
            
    </div>
</div>
<div class="lh-subheadline flex justify-center items-center my-24">
    <div class="lh-subheadline-deco-line w-8 h-px bg-gray-400"></div>
    <div class="lh-subheadline-label uppercase mx-4 tracking-widest font-medium text-[13px]">lifeStyle
    </div>
    <div class="lh-subheadline-deco-line w-8 h-px bg-gray-400"></div>
</div>
<div class="lifeStyle w-[95%] lg:w-[65%] mx-auto mb-25">
    <div class="grid grid-cols-3 gap-8 ">
        <div class="lh-life-card">
            <div class="h-[300px] bg-[url(./images/life4.png)] bg-cover bg-no-repeat bg-center">
                <a href="#" alt="BestSeller1">
                    <div class="w-full h-full hover:bg-gray-900 hover:bg-opacity-10 after::transition-all a:ease-in-out
                         after:duration-500
                         relative group">
                        <div class="absolute bg-white w-11/12 bottom-4 text-center left-1/2 -translate-x-1/2 text-[13px]  text-gray-900 tracking-wider py-4 px-8 text-sm font-semibold hover:cursor-pointer
                             hover:bg-opacity-40">
                            Contant US
                        </div>
                    </div>
                </a>
            </div>
            <div class="text-left my-8">
                <a href="#" alt="prodcut-name">
                    <div class="text-xl mb-3 hover:text-orange-600">How can we help you?</div>
                </a>
                <div class="price ">
                    <span class="mb-3 text-gray-400 ">Wherever you are, Louis Vuitton Client Advisors will be
                        delighted to assist you.</span>
                </div>
            </div>
        </div>
        <div class="lh-life-card">
            <div class="h-[300px] bg-[url(./images/life6.png)] bg-cover bg-no-repeat bg-center">
                <a href="#" alt="BestSeller1">
                    <div class="w-full h-full hover:bg-gray-900 hover:bg-opacity-10 after::transition-all a:ease-in-out
                         after:duration-500
                         relative group">
                        <div class="absolute bg-white w-11/12 bottom-4 text-center left-1/2 -translate-x-1/2 text-[13px]  text-gray-900 tracking-wider py-4 px-8 text-sm font-semibold hover:cursor-pointer
                             hover:bg-opacity-40">
                            Contant US
                        </div>
                    </div>
                </a>
            </div>
            <div class="text-left my-8">
                <a href="#" alt="prodcut-name">
                    <div class="text-xl mb-3 hover:text-orange-600">Art of Gifting</div>
                </a>
                <div class="price ">
                    <span class="mb-3 text-gray-400 ">Choose the perfect gift from our specially curated
                        selection of products.</span>
                </div>
            </div>
        </div>
        <div class="lh-life-card">
            <div class="h-[300px] bg-[url(./images/life5.png)] bg-cover bg-no-repeat bg-center">
                <a href="#" alt="BestSeller1">
                    <div class="w-full h-full hover:bg-gray-900 hover:bg-opacity-10 after::transition-all a:ease-in-out
                         after:duration-500
                         relative group">
                        <div class="absolute bg-white w-11/12 bottom-4 text-center left-1/2 -translate-x-1/2 text-[13px]  text-gray-900 tracking-wider py-4 px-8 text-sm font-semibold hover:cursor-pointer
                             hover:bg-opacity-40">
                            Contant US
                        </div>
                    </div>
                </a>
            </div>
            <div class="text-left my-8">
                <a href="#" alt="prodcut-name">
                    <div class="text-xl mb-3 hover:text-orange-600">Personalization</div>
                </a>
                <div class="price ">
                    <span class="mb-3 text-gray-400 ">Louis Vuitton’s personalization offer spans a wide range
                        of services.</span>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="subcribe-us h-[350px] bg-[#1d1f2e] flex flex-col justify-center items-center mb-20 ">
    <div class="lh-subheadline flex justify-center items-center mb-3">
        <div class="lh-subheadline-deco-line w-8 h-px bg-gray-400"></div>
        <div class="lh-subheadline-label uppercase text-gray-400 font-bold mx-4 tracking-widest text-[13px]">
            SIGN UP AND GET
            FREE GIFT FROM LOUIS VUITTON
        </div>
        <div class="lh-subheadline-deco-line w-8 h-px bg-gray-400"></div>
    </div>
    <div class="text-4xl text-white mb-4">LOUISVUITTON UPDATE </div>
    <div class="lh-form flex justify-center items-center gap-3">
        <div class="form-item">
            <input type="email" placeholder="example@gmail.com" class="px-6 py-4 w-[400px] h-[50px] bg-inherit border-[1px] border-gray-700 outline-none
                   text-white leading-5 focus:border-gray-300">
        </div>
        <div class="form-item">
            <button type="submit" class="bg-white text-gray-900 w-[100px] h-[50px]">Subcribe</button>
        </div>

    </div>
</div>
</main>
<%@include file="/includes/footer.jsp" %>
