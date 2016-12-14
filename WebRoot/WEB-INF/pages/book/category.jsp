<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="wrap">
  <jsp:include page="../common/menu.jsp" />
  <div class="center_content">
    <div class="left_content">
      <div class="crumb_nav"> <a href="${_path}/index/showIndex.action">首页</a> &gt;&gt; 所有书籍 </div>
      <div class="title"><span class="title_icon"><img src="${path}image/bullet1.gif" alt="" title="" /></span>Category books</div>
      <div class="new_products">
      	<c:forEach items="${books}" var="book">
      		<div class="new_prod_box"> <a href="${_path}/book/findById?bookid=${book.bookid}">${book.bookname}</a>
	          <div class="new_prod_bg"> <a href="${_path}/book/findById?bookid=${book.bookid}"><img src="${path}${book.pictrueUrl}" alt="" title="" class="thumb" border="0" /></a> </div>
	        </div>
      	</c:forEach>
        
        <div class="pagination"> <span class="disabled"><</span><span class="current">1</span><a href="#?page=2">2</a><a href="#?page=3">3</a><a href="#?page=199">10</a><a href="#?page=200">11</a><a href="#?page=2">></a> </div>
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
</jspl>