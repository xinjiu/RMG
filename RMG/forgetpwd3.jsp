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
		<form action="servlet/CheckValid3" method="post"
			onclick="return check()">
			<div class="back">
				<img src="image/forgetpwd3.png">
			</div>
			<div class="rong">
				<table>
					<tr id="heit">
						<td>新密码：</td>
						<td><input type="password" name="first_pwd" value="请输入密码"
							onfocus="javascript:if(this.value=='请输入密码')this.value='';"></td>

						<td><%if(request.getAttribute("sure_pwd") != null){%><%=request.getAttribute("sure_pwd")%><%}else{
							
						} %></td>
					</tr>
					<tr>
						<td>确认密码:</td>
						<td><input type="password" name="last_pwd" value="请确认密码"
							onfocus="javascript:if(this.value=='请确认密码')this.value='';"></td>

						<td></td>

					</tr>
				</table>
			</div>
			<div class="next">
				<input type="image" src="image/submit.png"
					onclick="javascript:document.forms['Form_2'].submit()">
			</div>
		</form>
	</div>
</body>
</html>
