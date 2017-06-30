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

.next {
	margin-top: 5%;
	text-align: center;
}
</style>
<body>
	<div>
		<form action="servlet/CheckValid" method="post"
			onclick="return check()">
			<div class="back">
				<img src="image/forgetpwd1.png">
			</div>
			<div class="rong">
				<table>
					<tr>
						<td>登录名:</td>
						<td><input type="text" name="forgetname" value="用户名/邮箱"
							onfocus="javascript:if(this.value=='用户名/邮箱')this.value='';"></td>
						<td><font size="2px" color="gray">忘记用户名可输入邮箱</font></td>
					</tr>
					<tr>
						<td></td>
						<td>
							<%
								if (request.getAttribute("users") != null) {
							%><font color="red"><%=request.getAttribute("users")%></font> <%
 	}
 %>
						</td>
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
