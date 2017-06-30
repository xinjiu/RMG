<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>忘记密码</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>
<style>
.back {
	text-align: center;
}

.rong {
	margin-top: 5%;
	margin-left: 40%;
	text-align: center;
}

#heit {
	height: 100px;
	width: 95%;
}

.next {
	margin-top: 3%;
	margin-left: 41%;
}
</style>
<body>
	<div>
		<form action="servlet/CheckValid2" method="post"
			onclick="return check()">
			<div class="back">
				<img src="image/forgetpwd2.png">
			</div>
			<div class="rong">
				<table>
					<tr id="heit">
						<td>邮 箱:</td>
						<td><font color="red"> <%
 	if (request.getAttribute("show_email") != null) {
 %><%=request.getAttribute("show_email")%></font></td>
						<%
							session.setAttribute("user_email",
										request.getAttribute("show_email"));
							session.setAttribute("testSession",
										request.getAttribute("valid_number"));
						%>
						<td></td>
					</tr>
					<tr>
						<td>验证码:</td>
						<td><input type="text" name="validnum" value="请输入验证码"
							onfocus="javascript:if(this.value=='请输入验证码')this.value='';">
						</td>
						<%
							if (request.getAttribute("valid_word") != null) {
						%>
						<td><%=request.getAttribute("valid_word")%></td>
						<%
							} else {
						%><%=request.getAttribute("valid_number")%>
						<%
							}
						%>
						<%
							} else {
								Thread.sleep(2000);
								request.getRequestDispatcher("/forgetpwd1.jsp").forward(
										request, response);
							}
						%>
					</tr>
				</table>
			</div>
			<div class="next">
				<input type="image" src="image/next.png"
					onclick="javascript:document.forms['Form_2'].submit()">
			</div>
		</form>
	</div>
</body>
</html>
