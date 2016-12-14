<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="${path}">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="/BookShop/css/style.css" />
<title>Insert title here</title>
</head>
<body>
<div id="wrap">
  <jsp:include page="../common/menu.jsp" />
  <div class="center_content">
    <div class="left_content">
      <div class="title"><span class="title_icon"><img src="${path}image/bullet1.gif" alt="" title="" /></span>Special gifts</div>
      <div class="feat_prod_box">
        <div class="prod_img"><a href="details.htm"><img src="${path}image/prod1.gif" alt="" title="" border="0" /></a></div>
        <div class="prod_det_box"> <span class="special_icon"><img src="${path}image/special_icon.gif" alt="" title="" /></span>
          <div class="box_top"></div>
          <div class="box_center">
            <div class="prod_title">Product name</div>
            <p class="details">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.</p>
            <a href="details.htm" class="more">- more details -</a>
            <div class="clear"></div>
          </div>
          <div class="box_bottom"></div>
        </div>
        <div class="clear"></div>
      </div>
      <div class="feat_prod_box">
        <div class="prod_img"><a href="details.htm"><img src="${path}image/prod2.gif" alt="" title="" border="0" /></a></div>
        <div class="prod_det_box"> <span class="special_icon"><img src="${path}image/special_icon.gif" alt="" title="" /></span>
          <div class="box_top"></div>
          <div class="box_center">
            <div class="prod_title">Product name</div>
            <p class="details">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.</p>
            <a href="details.htm" class="more">- more details -</a>
            <div class="clear"></div>
          </div>
          <div class="box_bottom"></div>
        </div>
        <div class="clear"></div>
      </div>
      <div class="feat_prod_box">
        <div class="prod_img"><a href="details.htm"><img src="${path}image/prod1.gif" alt="" title="" border="0" /></a></div>
        <div class="prod_det_box"> <span class="special_icon"><img src="${path}image/special_icon.gif" alt="" title="" /></span>
          <div class="box_top"></div>
          <div class="box_center">
            <div class="prod_title">Product name</div>
            <p class="details">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.</p>
            <a href="details.htm" class="more">- more details -</a>
            <div class="clear"></div>
          </div>
          <div class="box_bottom"></div>
        </div>
        <div class="clear"></div>
      </div>
      <div class="feat_prod_box">
        <div class="prod_img"><a href="details.htm"><img src="${path}image/prod2.gif" alt="" title="" border="0" /></a></div>
        <div class="prod_det_box"> <span class="special_icon"><img src="${path}image/special_icon.gif" alt="" title="" /></span>
          <div class="box_top"></div>
          <div class="box_center">
            <div class="prod_title">Product name</div>
            <p class="details">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.</p>
            <a href="details.htm" class="more">- more details -</a>
            <div class="clear"></div>
          </div>
          <div class="box_bottom"></div>
        </div>
        <div class="clear"></div>
      </div>
      <div class="pagination"> <span class="disabled"><<</span><span class="current">1</span><a href="#?page=2">2</a><a href="#?page=3">3</a>?a href="#?page=199">10</a><a href="#?page=200">11</a><a href="#?page=2">>></a> </div>
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