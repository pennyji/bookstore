<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="${path}css/style.css" />
<title>Insert title here</title>
</head>
<body>
	<div id="wrap">
		<jsp:include page="../common/menu.jsp" />
		<div class="center_content">
			<div class="left_content">
				<div class="title">
					<span class="title_icon"><img src="${path}image/bullet1.gif"
						alt="" title="" /></span>My cart
				</div>
				<div class="feat_prod_box_details">
					<table class="cart_table">
						<tr class="cart_title">
							<td>Item pic</td>
							<td>Book name</td>
							<td>Unit price</td>
							<td>Qty</td>
							<td>Total</td>
						</tr>
						<tr>
							<td><a href="details.htm"><img
									src="${path}image/cart_thumb.gif" alt="" title="" border="0"
									class="cart_thumb" /></a></td>
							<td>Books</td>
							<td>100$</td>
							<td>1</td>
							<td>100$</td>
						</tr>
						<tr>
							<td><a href="details.htm"><img
									src="${path}image/cart_thumb.gif" alt="" title="" border="0"
									class="cart_thumb" /></a></td>
							<td>Books</td>
							<td>100$</td>
							<td>1</td>
							<td>100$</td>
						</tr>
						<tr>
							<td><a href="details.htm"><img
									src="${path}image/cart_thumb.gif" alt="" title="" border="0"
									class="cart_thumb" /></a></td>
							<td>Books</td>
							<td>100$</td>
							<td>1</td>
							<td>100$</td>
						</tr>
						<tr>
							<td colspan="4" class="cart_total"><span class="red">TOTAL
									SHIPPING:</span></td>
							<td>250$</td>
						</tr>
						<tr>
							<td colspan="4" class="cart_total"><span class="red">TOTAL:</span></td>
							<td>325$</td>
						</tr>
					</table>
					<a href="#" class="continue">&lt; continue</a> <a href="#"
						class="checkout">checkout &gt;</a>
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