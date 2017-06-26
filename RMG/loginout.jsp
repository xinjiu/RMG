<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>注销成功</title>
</head>
<style>
#loginout {
	margin-top: 100px;
	text-align: center;
}

#zhong {
	margin-left:44%;
}

li {
	margin-right: 10px;
	float: left;
	list-style: none;
}
</style>
<body>
	<%@ page import="java.util.*"%>
	<%
		//取出当前session的username并在olUserList中删除
		//String username = (String) session.getAttribute("username");
		//List olUserList = (List) application.getAttribute("olUserList");
		session.removeAttribute("username");
		//olUserList.remove(username);
		//application.setAttribute("olUserList", olUserList);
		//销毁会话
		session.invalidate();
	%>
	<h2 id="loginout">注销成功</h2>
	<div id="zhong">
		<ul>
			<li><form action="servlet/Checksousuo" method="post"><input type="submit" value="返回"></form></li>
			<li><form action="login.jsp" method="post"><input type="submit" value="登录"></form></li>
		</ul>
	</div>
</body>
</html>
