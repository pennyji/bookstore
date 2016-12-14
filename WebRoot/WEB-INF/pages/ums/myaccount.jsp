<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="${path}">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="${path}css/style.css" />
<script type="text/javascript" src="${path}/js/jquery-1.9.1.js"></script>
<title>Book Store</title>
</head>
<body>
<div id="wrap">
  <jsp:include page="../common/menu.jsp" />
  <div class="center_content">
    <div class="left_content">
      <div class="title"><span class="title_icon"><img src="${path}image/bullet1.gif" alt="" title="" /></span>My account</div>
      <div class="feat_prod_box_details">
        <p class="details"> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud. </p>
        <div class="contact_form">
          <div class="form_subtitle">login into your account</div>
          <form action="userlogin.action" method="post">
          <p><font color="red">&nbsp;&nbsp;&nbsp;${msg}</font></p>
            <div class="form_row">
              <label class="contact"><strong>Username:</strong></label>
              <input type="text" class="contact_input" name="user.username" value="${user.username}"/>
            </div>
            <div class="form_row">
              <label class="contact"><strong>Password:</strong></label>
              <input type="password" class="contact_input" name="user.password" value="${user.password}"/>
              
            </div>
            <div class="form_row">
              <div class="terms">
                <input type="checkbox" name="terms" />
                Remember me </div>
            </div>
            <div class="form_row">
            	<input type="submit" class="register" value="login" />
            </div>
          </form>
        </div>
      </div>
      <div class="clear"></div>
    </div>
    <!--end of left content-->
    <jsp:include page="../common/right.jsp" />
    <!--end of right content-->
    <div class="clear"></div>
  </div>
  <!--end of center content-->
  <jsp:include page="../common/footer.jsp" />
</div>
</body>
</html>