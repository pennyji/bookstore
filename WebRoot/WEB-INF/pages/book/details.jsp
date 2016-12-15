<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="${path}">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="wrap">
		<jsp:include page="../common/menu.jsp" />
		<div class="center_content">
			<div class="left_content">
				<div class="crumb_nav">
					<a href="${path}ums/user/showIndex">首页</a> &gt;&gt; <a href="${_path}/book/findAllBooks.action">所有书籍</a>&gt;&gt;详情
				</div>
				<div class="title">
					<span class="title_icon"><img
						src="${path}image/bullet1.gif" alt="" title="" /></span>${book.bookname }</div>
				<div class="feat_prod_box_details">
					<div class="prod_img">
						<a href="details.htm"><img
							src="${path}${book.pictureUrl}" alt="" title="" border="0" /></a>
						<br /> <br /> <a href="${path}image/big_pic.jpg"
							rel="lightbox"><img src="${path}image/zoom.gif" alt=""
							title="" border="0" /></a>
					</div>
					<div class="prod_det_box">
						<div class="box_top"></div>
						<div class="box_center">
							<div class="prod_title">简介：</div>
							<p class="details">${book.summary}</p>
							<div class="author">
								<span> <a href="${path}bms/book/findByAuthor?author=${book.author}">${book.author}</a>著</span>
							</div>
							<div class="price">
								<strong>价格:</strong> <span class="red">${book.price}</span>
							</div>
							<a href="#" class="more"><img
								src="${_path}/image/order_now.gif" alt="" title="" border="0" /></a>
							<div class="clear"></div>
						</div>
						<div class="box_bottom"></div>
					</div>
					<div class="clear"></div>
				</div>
				<div id="demo" class="demolayout">
					<ul id="demo-nav" class="demolayout">
						<li><a class="active" href="#tab1">详情</a></li>
						<li><a class="" href="#tab2">Related books</a></li>
					</ul>
					<div class="tabs-container">
						<div style="display: block;" class="tab" id="tab1">
							<p class="more_details">${book.bookDetail}</p>
						</div>
						<div style="display: none;" class="tab" id="tab2">
							<div class="new_prod_box">
								<a href="details.htm">product name</a>
								<div class="new_prod_bg">
									<a href="details.htm"><img
										src="${path}image/thumb1.gif" alt="" title=""
										class="thumb" border="0" /></a>
								</div>
							</div>
							<div class="new_prod_box">
								<a href="details.htm">product name</a>
								<div class="new_prod_bg">
									<a href="details.htm"><img
										src="${path}image/thumb2.gif" alt="" title=""
										class="thumb" border="0" /></a>
								</div>
							</div>
							<div class="new_prod_box">
								<a href="details.htm">product name</a>
								<div class="new_prod_bg">
									<a href="details.htm"><img
										src="${path}image/thumb3.gif" alt="" title=""
										class="thumb" border="0" /></a>
								</div>
							</div>
							<div class="new_prod_box">
								<a href="details.htm">product name</a>
								<div class="new_prod_bg">
									<a href="details.htm"><img
										src="${path}image/thumb1.gif" alt="" title=""
										class="thumb" border="0" /></a>
								</div>
							</div>
							<div class="new_prod_box">
								<a href="details.htm">product name</a>
								<div class="new_prod_bg">
									<a href="details.htm"><img
										src="${path}image/thumb2.gif" alt="" title=""
										class="thumb" border="0" /></a>
								</div>
							</div>
							<div class="new_prod_box">
								<a href="details.htm">product name</a>
								<div class="new_prod_bg">
									<a href="details.htm"><img
										src="${path}image/thumb3.gif" alt="" title=""
										class="thumb" border="0" /></a>
								</div>
							</div>
							<div class="clear"></div>
						</div>
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