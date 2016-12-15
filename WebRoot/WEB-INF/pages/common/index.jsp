<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="${path}">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css" href="${path}css/style.css" />
<title></title>
</head>
<body>

	<div id="wrap">
		<jsp:include page="menu.jsp" />
		<div class="center_content">
			<div class="left_content">
				<div class="title">
					<span class="title_icon"><img src="${path}image/bullet1.gif"
						alt="" title="" /></span>热卖
				</div>
				<c:forEach items="${hotBooks}" var="hotbook">
					<div class="feat_prod_box">
					<div class="prod_img">
						<a href="${path}bms/book/findById?bookid=${hotbook.bookid}"><img src="${path}${hotbook.pictureUrl}" alt=""
							title="" border="0" /></a>
					</div>
					<div class="prod_det_box">
						<div class="box_top"></div>
						<div class="box_center">
							<div class="prod_title">${hotbook.bookname}</div>
							<p class="details">${hotbook.summary}</p>
							<a href="${path}bms/book/findById?bookid=${hotbook.bookid}" class="more">- more details -</a>
							<div class="clear"></div>
						</div>
						<div class="box_bottom"></div>
					</div>
					<div class="clear"></div>
				</div>
				</c:forEach>
				<div class="title">
					<span class="title_icon"><img src="${path}image/bullet2.gif"
						alt="" title="" /></span>最新上架
				</div>
				<div class="new_products">
				<c:forEach items="${latestBooks}" var="latestBook">
					
					<div class="new_prod_box">
						<a href="${path}bms/book/findById?bookid=${latestBook.bookid}">${latestBook.bookname}</a>
						<div class="new_prod_bg">
							<span class="new_icon"><img src="${path}image/new_icon.gif"
								alt="" title="" /></span> <a href="${path}bms/book/findById?bookid=${latestBook.bookid}">
								<img src="${path}${latestBook.pictureUrl}" alt="" title="" class="thumb" border="0" /></a>
						</div>
					</div>
				
				</c:forEach>
				</div>
				<div class="clear"></div>
			</div>
			<!--end of left content-->
			<jsp:include page="right.jsp" />
			<div class="clear"></div>
		</div>
		<!--end of center content-->
		<jsp:include page="footer.jsp" />
	</div>
</body>
</html>