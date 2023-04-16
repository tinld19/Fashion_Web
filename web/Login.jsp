<%-- 
    Document   : Login
    Created on : Feb 17, 2023, 11:29:17 AM
    Author     : ACER NITRO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
  <c:set var="c" value="${pageContext.request.cookies}"></c:set>
  <section class="h-screen">
    <div class="px-2 h-full text-gray-800">
      <div
        class="flex xl:justify-center lg:justify-between justify-center items-center flex-wrap h-full g-6"
      >
        <div
          class="grow-0 shrink-1 md:shrink-0 basis-auto xl:w-2/4 lg:w-6/12 md:w-9/12 mb-12 md:mb-0"
        >
          <img
            src="./images/logo1.png"
            class="w-full h-full"
            alt="Sample image"
          />
        </div>

        <div id="form" class="block bg-slate-50 p-6 rounded-xl  shodow-md shadow-slate-300 w-90   xl:ml-20 xl:w-2/6 lg:w-5/12 md:w-8/12 mb-12 md:mb-0">
            <form action="login" method="get">
            <div class="flex flex-row items-center justify-center lg:justify-start ml-12 px-28 ">
              <p class="text-5xl font-semibold pr-10 pb-3">Login</p>
  
              
            </div>
  
            <div
              class="flex items-center my-4 before:flex-1 before:border-t before:border-black before:mt-0.5 after:flex-1 after:border-t after:border-black after:mt-0.5"
            >
              
            </div>
  
            <!-- Email input -->
            <div class="mb-6">
              <input
                type="text"
                class="form-control block w-full px-4 py-2 text-xl font-normal text-gray-700 bg-white bg-clip-padding border border-solid border-gray-300 rounded transition ease-in-out m-0 focus:text-gray-700 focus:bg-white focus:border-gray-600 focus:outline-none"
                id="exampleFormControlInput2"
                placeholder="User name"
                name="user"
                value="${cookie.cuser.value}"
              />
            </div>
  
            <!-- Password input -->
            <div class="mb-6">
              <input
                type="password"
                class="form-control block w-full px-4 py-2 text-xl font-normal text-gray-700 bg-white bg-clip-padding border border-solid border-gray-300 rounded transition ease-in-out m-0 focus:text-gray-700 focus:bg-white focus:border-gray-600 focus:outline-none"
                id="exampleFormControlInput2"
                placeholder="Password" name="pass"
                value="${cookie.cpass.value}"
              />
            </div>
  
            <div class="flex justify-between items-center mb-6">
              <div class="form-group form-check">
                <input
                  type="checkbox"
                  class="form-check-input appearance-none h-4 w-4 border border-gray-300 rounded-sm bg-white checked:bg-gray-700 focus:outline-none transition duration-200 mt-1 align-top bg-no-repeat bg-center bg-contain float-left mr-2 cursor-pointer"
                  id="exampleCheck2"
                  ${(cookie.crem != null ? "checked" : "")} name="rem" value="ON"
                />
                <label class="form-check-label inline-block text-gray-800" for="exampleCheck2"
                  >Remember me</label
                >
              </div>
              <a href="Forgot.jsp" class="text-gray-800">Forgot password?</a>
            </div>
                  <h1>${requestScope.alert}</h1>
            <div class="text-center lg:text-left">
              <button
                class="inline-block px-7 py-3 bg-black text-white font-medium text-sm leading-snug uppercase rounded shadow-md hover:bg-gray-800 hover:shadow-lg focus:bg-black focus:shadow-lg focus:outline-none focus:ring-0 active:bg-blue-800 active:shadow-lg transition duration-150 ease-in-out"
              >
                Login
              </button>
              <p class="text-sm font-semibold mt-2 pt-1 mb-0">
                Don't have an account?
                <a
                  href="Register.jsp"
                  class="text-red-600 hover:text-red-700 focus:text-red-700 transition duration-200 ease-in-out"
                  >Register</a
                >
              </p>
            </div>
          </form>
        </div>
      </div>
    </div>
  </section>
</body>
</html>