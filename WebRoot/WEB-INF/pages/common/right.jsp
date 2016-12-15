<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="resource.jsp" />
	<div class="right_content">
				<div class="cart">
					<div class="title">
						<span class="title_icon" style="margin-top: 12px;"><img src="${path}image/cart.gif" alt=""
							title="" /></span><a href="cart.htm" class="view_cart" style="text-decoration:none">我的购物车</a>
					</div>
					<c:if test="${LOGIN_USER != NULL }">
						<div class="home_cart_content">
							3 x items | <span class="red">TOTAL: 100$</span>
						</div>
					</c:if>
					
				</div>
				<div class="title">
					<span class="title_icon"><img src="${path}image/bullet3.gif"
						alt="" title="" /></span>关于本书店
				</div>
				<div class="about">
					<p>
						<img src="${path}image/about.gif" alt="" title="" class="right" />
						本店部分书籍为热销款式，难免会出现临时断货现象，本店将在最短时间内与您联系并协商解决，还请大家谅解！
					</p>
				</div>
				<div class="right_box">
					<div class="title">
						<span class="title_icon"><img src="${path}image/bullet4.gif"
							alt="" title="" /></span>促销款
					</div>
					<c:forEach items="${discountBooks}" var="discountBook">
					<div class="new_prod_box">
						<a href="details.htm">${discountBook.bookname }</a>
						<div class="new_prod_bg">
							<span class="new_icon"><img src="${path}image/promo_icon.gif"
								alt="" title="" /></span> <a href="${path}bms/book/findById?bookid=${discountBook.bookid}"><img
								src="${path}${discountBook.pictureUrl}" alt="" title="" class="thumb" border="0" /></a>
						</div>
					</div>
					</c:forEach>
				</div>
				<div class="right_box">
					<div class="title">
						<span class="title_icon"><img src="${path}image/bullet5.gif"
							alt="" title="" /></span>分类
					</div>
					<ul class="list">
						<c:forEach items="${catalogs}" var="catalog">
							<li><a href="${catalog.catalogId }">${catalog.catalogName}</a></li>
						</c:forEach>
					</ul>
					
				</div>
			</div>
			<!--end of right content-->
