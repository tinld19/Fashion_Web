<%-- 
    Document   : newjsp
    Created on : Feb 14, 2023, 9:27:17 AM
    Author     : ACER NITRO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <script src="https://cdn.tailwindcss.com?plugins=forms,typography,aspect-ratio,line-clamp"></script>
    <script>
    tailwind.config = {
      theme: {
        extend: {
          colors: {
            clifford: '#da373d',
          }
        }
      }
    }
  </script>
  <style type="text/tailwindcss">
    @layer utilities {
      .content-auto {
        content-visibility: auto;
      }
    }
  </style>
  <body>
    <div class="container">
        <div class="content-wrapper font-karla max-w-screen-2xl text-base mx-auto px-8 bg-white text-black">
            <header class="my-6 px-10">
                <nav class="flex flex-row justify-between items-center">
                    <div class="logo basis-2/6 text-center text-xl font-semibold cursor-pointer ">
                        LOUISVUITTON.
                    </div>
                    <ul
                        class="basis-3/6 hidden lg:flex items-center justify-end gap-8 uppercase text-sm text-gray-500 font-medium">
                        <li
                            class="cursor-pointer py-1 hover:text-gray-800 relative after:absolute after:bottom-0 after:left-0 after:bg-slate-900 
                            after:h-0.5 after:w-0 hover:after:w-full after:transition-all after:ease-out after:duration-300">
                            <a href="Login.jsp" class="">Home</a>
                        </li>
                        <li
                            class="cursor-pointer py-1 hover:text-gray-800 relative after:absolute after:bottom-0 after:left-0 after:bg-slate-900 
                            after:h-0.5 after:w-0 hover:after:w-full after:transition-all after:ease-out after:duration-300">
                            <a href="Login.jsp" class="">OurProduct</a>
                        </li>
                        <li
                            class="cursor-pointer py-1 hover:text-gray-800 relative after:absolute after:bottom-0 after:left-0 after:bg-slate-900 
                            after:h-0.5 after:w-0 hover:after:w-full after:transition-all after:ease-out after:duration-300">
                            <a href="Login.jsp" class="">Blog</a>
                        </li>
                        <li
                            class="cursor-pointer py-1 hover:text-gray-800 relative after:absolute after:bottom-0 after:left-0 after:bg-slate-900 
                            after:h-0.5 after:w-0 hover:after:w-full after:transition-all after:ease-out after:duration-300">
                            <a href="Login.jsp" class="">About</a>
                        </li>
                        <li
                            class="cursor-pointer py-1 hover:text-gray-800 relative after:absolute after:bottom-0 after:left-0 after:bg-slate-900 
                            after:h-0.5 after:w-0 hover:after:w-full after:transition-all after:ease-out after:duration-300">
                            <a href="Login.jsp" class="">CONTACT</a>
                        </li>
                        <li
                            class="cursor-pointer py-1 hover:text-gray-800 relative after:absolute after:bottom-0 after:left-0 after:bg-slate-900 
                            after:h-0.5 after:w-0 hover:after:w-full after:transition-all after:ease-out after:duration-300">
                            <a href="Login.jsp" class="">LOGIN</a>
                        </li>
                        <li
                            class="cursor-pointer py-1 hover:text-gray-800 relative after:absolute after:bottom-0 after:left-0 after:bg-slate-900 
                            after:h-0.5 after:w-0 hover:after:w-full after:transition-all after:ease-out after:duration-300">
                            <a href="Login.jsp" class="">LouisVuitton</a>
                        </li>
                    </ul>
                    <ul
                        class="basis-1/6 flex justify-start items-center ml-16 uppercase text-sm text-gray-500 font-medium">
                        <li class="">
                            <a href="Login.jsp" class=" flex items-center ">

                                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                    strokeWidth={1.5} stroke="currentColor" class="w-6 h-6 inline-block">
                                    <path strokeLinecap="round" strokeLinejoin="round"
                                        d="M15.75 10.5V6a3.75 3.75 0 10-7.5 0v4.5m11.356-1.993l1.263 12c.07.665-.45 1.243-1.119 1.243H4.25a1.125 1.125 0 01-1.12-1.243l1.264-12A1.125 1.125 0 015.513 7.5h12.974c.576 0 1.059.435 1.119 1.007zM8.625 10.5a.375.375 0 11-.75 0 .375.375 0 01.75 0zm7.5 0a.375.375 0 11-.75 0 .375.375 0 01.75 0z" />
                                </svg>
                                <span class="mx-2">Cart</span>
                                <span class="text-sx text-center rounded-full px-1.5 bg-orange-500 text-white">${sessionScope.size}</span>
                            </a>
                        </li>
                    </ul>
                </nav>
            </header>
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
                                    <a href="Login.jsp">EXPLORE OUR PRODUCTS</a>  </div>
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
                                <a href="#" alt="BestSeller1">
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
                                <a href="#" alt="prodcut-name">
                                    <div class="text-xl mb-3 hover:text-orange-600">BAG Valentines</div>
                                </a>
                                <div class="price ">
                                    <span class="text-lg text-orange-600">20.000.000 VND</span>
                                    <span class="ml-2 text-gray-400 line-through">28.000.000 VND</span>
                                </div>
                            </div>
                        </div>

                        <div class="lh-product-card h-[540px]">
                            <div
                                class="h-[540px] bg-[url(./images/ts3.jpg)] bg-cover bg-no-repeat bg-center">
                                <a href="#" alt="BestSeller2">
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
                                <a href="#" alt="prodcut-name">
                                    <div class="text-xl mb-3 hover:text-orange-600">Jacket Valentines</div>
                                </a>
                                <div class="price ">
                                    <span class="text-xl text-orange-600">45.900.000 VND</span>
                                    <span class="ml-2 text-gray-400 line-through">56.000.000 VND</span>
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
                        <div class="lh-product-card">
                            <div class="h-[330px] bg-[url(./images/st5.png)] bg-cover bg-no-repeat bg-center">
                                <a href="#" alt="BestSeller1">
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
                            <div class="text-center my-8">
                                <a href="#" alt="prodcut-name">
                                    <div class="text-xl mb-3 hover:text-orange-600">BAG Valentines</div>
                                </a>
                                <div class="price ">
                                    <span class="ml-2 text-gray-400 ">28.000.000 VND</span>
                                </div>
                            </div>
                        </div>

                        <div class="lh-product-card">
                            <div class="h-[330px] bg-[url(./images/ht1.png)] bg-cover bg-no-repeat bg-center">
                                <a href="#" alt="BestSeller1">
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
                            <div class="text-center my-8">
                                <a href="#" alt="prodcut-name">
                                    <div class="text-xl mb-3 hover:text-orange-600">BAG Valentines</div>
                                </a>
                                <div class="price ">
                                    <span class="ml-2 text-gray-400 ">28.000.000 VND</span>
                                </div>
                            </div>
                        </div>
                        <div class="lh-product-card">
                            <div class="h-[330px] bg-[url(./images/ac1.png)] bg-cover bg-no-repeat bg-center">
                                <a href="#" alt="BestSeller1">
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
                            <div class="text-center my-8">
                                <a href="#" alt="prodcut-name">
                                    <div class="text-xl mb-3 hover:text-orange-600">BAG Valentines</div>
                                </a>
                                <div class="price ">
                                    <span class="ml-2 text-gray-400 ">28.000.000 VND</span>
                                </div>
                            </div>
                        </div>
                        <div class="lh-product-card">
                            <div class="h-[330px] bg-[url(./images/sh1.jpg)] bg-cover bg-no-repeat bg-center">
                                <a href="#" alt="BestSeller1">
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
                            <div class="text-center my-8">
                                <a href="#" alt="prodcut-name">
                                    <div class="text-xl mb-3 hover:text-orange-600">BAG Valentines</div>
                                </a>
                                <div class="price ">
                                    <span class="ml-2 text-gray-400 ">28.000.000 VND</span>
                                </div>
                            </div>
                        </div>
                        <div class="lh-product-card">
                            <div class="h-[330px] bg-[url(./images/tr4.png)] bg-cover bg-no-repeat bg-center">
                                <a href="#" alt="BestSeller1">
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
                            <div class="text-center my-8">
                                <a href="#" alt="prodcut-name">
                                    <div class="text-xl mb-3 hover:text-orange-600">BAG Valentines</div>
                                </a>
                                <div class="price ">
                                    <span class="ml-2 text-gray-400 ">28.000.000 VND</span>
                                </div>
                            </div>
                        </div>
                        <div class="lh-product-card">
                            <div class="h-[330px] bg-[url(./images/bg1.jpg)] bg-cover bg-no-repeat bg-center">
                                <a href="#" alt="BestSeller1">
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
                            <div class="text-center my-8">
                                <a href="#" alt="prodcut-name">
                                    <div class="text-xl mb-3 hover:text-orange-600">BAG Valentines</div>
                                </a>
                                <div class="price ">
                                    <span class="ml-2 text-gray-400 ">28.000.000 VND</span>
                                </div>
                            </div>
                        </div>

                    </div>
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
        <footer class="w-[95%] mx-auto pb-24 text-gray-500 text-sm">
            <div class="flex gap-8">
                <div class="basis-2/4">
                    <div class="font-bold text-xl mb-4 text-gray-800">LOUISVUITTON</div>
                    <div class="mb-10">Delivering Best Fashion since 1854 from FRANCE by Louis vuitton </div>
                    <div class="">iamhaao Blog.</div>
                </div>
                <div class="basis-1/4">
                    <div class="uppercase font-semibold tracking-wider text-gray-700 mb-4">Menu</div>
                    <div class=" flex flex-col gap-3">
                        <div class=""><a href="#" class="">Home</a></div>
                        <div class=""><a href="#" class="">Our Product</a></div>
                        <div class=""><a href="#" class="">Contact</a></div>
                        <div class=""><a href="#" class="">LouisVuitton</a></div>
                    </div>
                </div>
                <div class="basis-1/4">
                    <div class="uppercase font-semibold tracking-wider text-gray-700 mb-4">Follow us</div>
                    <div class="flex flex-col gap-3">
                        <div class=""><a href="#" class="">Facebook</a></div>
                        <div class=""><a href="#" class="">Instagram</a></div>
                        <div class=""><a href="#" class="">Twitter</a></div>
                        <div class=""><a href="#" class="">Pinterest</a></div>
                    </div>
                </div>
                <div class=""></div>
            </div>
        </footer>
    </div>
    </div>
</body>
</html>
