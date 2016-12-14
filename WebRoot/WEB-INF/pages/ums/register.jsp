<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="${path}">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css" href="${path}css/style.css" />
<script type="text/javascript" src="${path}js/jquery-1.9.1.js"></script>
<script type="text/javascript" src="${path}js/user.js"></script>
<title>用户注册页</title>
</head>
<body>
	<div id="wrap">
		<jsp:include page="../common/menu.jsp" />
		<div class="center_content">
			<div class="left_content">
				<div class="title">
					<span class="title_icon"><img src="/BookShop/image/bullet1.gif"
						alt="" title="" /></span>Register
				</div>
				<div class="feat_prod_box_details">
					<p class="details">Lorem ipsum dolor sit amet, consectetur
						adipisicing elit, sed do eiusmod tempor incididunt ut labore et
						dolore magna aliqua. Ut enim ad minim veniam, quis nostrud. Lorem
						ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
						tempor incididunt ut labore et dolore magna aliqua. Ut enim ad
						minim veniam, quis nostrud.</p>
					<div  class="contact_form">
						<div class="form_subtitle">create new account</div>
						<form action="userregister.action" method="post" autocomplete="off">
							<div class="form_row">
								<label class="contact"><strong>Username:</strong></label> 
								<input type="text" class="contact_input" name="user.username" id="username" placeholder="请输入用户名"/>
							</div><br>
							<div id="usernameDiv"  style="margin-left: 20px;"></div>
							<div class="form_row">
								<label class="contact"><strong>Password:</strong></label> 
								<input type="password" class="contact_input" name="user.password" id="password" placeholder="请设置密码"/>
							</div><br>
							<div id="passwordDiv"></div>
							<div class="form_row">
								<label class="contact"><strong>Email:</strong></label> 
								<input type="text" class="contact_input" name="user.Email" id="Email" placeholder="请输入邮箱"/>
							</div>
							<div class="form_row">
								<label class="contact"><strong>Phone:</strong></label> 
								<input type="text" class="contact_input" name="user.phone" id="phone" placeholder="请输入手机号码"/>
							</div>
							<div id="phoneDiv"></div>
							<div class="form_row">
								<label class="contact"><strong>Company:</strong></label> 
								<input type="text" class="contact_input" name="user.company" id="company" placeholder="请输入公司名"/>
							</div>
							<div id="companyDiv"></div>
							<div class="form_row">
								<label class="contact"><strong>Adrres:</strong></label> 
								<input type="text" class="contact_input" name="user.address" id="address" placeholder="请输入联系地址"/>
							</div>
							<div id="addressDiv"></div>
							<div class="form_row">
								<div class="terms">
									<input type="checkbox" name="terms" /> I agree to the <a href="#">terms &amp; conditions</a>
								</div>
							</div>
							<div class="form_row">
								
								<input type="submit" class="register" value="register" />
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