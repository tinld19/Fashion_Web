<%-- 
    Document   : Setting
    Created on : Mar 3, 2023, 12:05:39 AM
    Author     : ACER NITRO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/includes/header.jsp" %>
<main>
    <c:set  value="${sessionScope.user}" var="user" />
    <p>${requestScope.message}</p>
    <div class="container w-[60%] my-12">
      <!-- edit form column -->
      <div class="col-md-12 personal-info">
          <form class="form-horizontal" role="form" action="SettingServlet">
          <div class="form-group text-sm text-gray-500 font-medium">
            <label class="col-lg-3 control-label">Username:</label>
            <div class="col-lg-6">
                <input class="form-control rounded-lg my-3 bg-gray-200 " name="user" readonly type="text" value="${user.userName}">
            </div>
          </div>
          <div class="form-group text-sm text-gray-500 font-medium">
            <label class="col-lg-3 control-label">Name:</label>
            <div class="col-lg-6">
              <input class="form-control rounded-lg my-3 bg-gray-200" name="name" type="text" value="${user.name}">
            </div>
          </div>
          <div class="form-group text-sm text-gray-500 font-medium">
            <label class="col-lg-3 control-label">Email:</label>
            <div class="col-lg-6">
              <input class="form-control rounded-lg my-3 bg-gray-200" name="email" type="text" value="${user.email}">
            </div>
          </div>
          <div class="form-group text-sm text-gray-500 font-medium">
            <label class="col-lg-3 control-label">Phone number:</label>
            <div class="col-lg-6">
              <input class="form-control rounded-lg my-3 bg-gray-200" name="phone" type="text" value="${user.phone}">
            </div>
          </div>
          <div class="form-group text-sm text-gray-500 font-medium">
            <label class="col-md-3 control-label">Address:</label>
            <div class="col-md-6">
              <input class="form-control rounded-lg my-3 bg-gray-200" name="address" type="text" value="${user.adress}">
            </div>
          </div>
            <div class="form-group text-sm text-gray-500 font-medium">
            <label class="col-md-3 control-label">BirthDay:</label>
            <div class="col-md-6">
              <input class="form-control rounded-lg my-3 bg-gray-200" name="birthday" type="text" value="${user.birthday}">
            </div>
          </div>
          <div class="form-group text-sm text-gray-500 font-medium rounded-md">
            <label class="col-md-3 control-label">Password:</label>
            <div class="col-md-6">
                <input class="form-control rounded-lg my-3 bg-gray-200" name="password" type="password" value="${user.password}">
            </div>
          </div>
          <div class="form-group text-sm text-gray-500 font-medium ">
            <label class="col-md-3 control-label"></label>
            <div class="col-md-6  my-3 ">
                <button class="btn btn-primary bg-gray-500 hover:bg-orange-500 rounded-lg justify-cent"> Save changes</button>
            </div>
          </div>
        </form>
      </div>
  </div>
</div>
</main>
<%@include file="/includes/footer.jsp" %>
