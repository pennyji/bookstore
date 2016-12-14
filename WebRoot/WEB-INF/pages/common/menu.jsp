<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<jsp:include page="resource.jsp" />
<div class="header">
    <div class="logo"><a href="${path}index.jsp"><img src="${path}image/logo.gif" alt="" title="" border="0" /></a></div>
    <div id="menu">
      <ul>
        <li><a href="${path}index/showIndex.action">首页</a></li>
		<li><a href="${path}jsp/user/about.jsp">关于我们</a></li>
		<li class="selected"><a href="${path}book/findAllBooks.action">书籍</a></li>
		<li><a href="${path}jsp/book/specials.jsp">热销书籍</a></li>
		<li><a href="${path}jsp/user/myaccount.jsp">登录</a></li>
		<li><a href="${path}jsp/user/register.jsp">注册</a></li>
		<li><a href="${path}jsp/user/contact.jsp">联系我们</a></li>
      </ul>
    </div>
  </div>
