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

<title>资源管理</title>

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
#back {
	width: 99%;
	height: 99%;
	background-image: url("image/loginbackground.png");
	background-repeat: no-repeat;
	background-attachment: fixed;
	
	position: absolute;
}

#info {
	margin-top: 180px;
	margin-left: 35%;
	vertical-align: top;
}

#zhuce {
	margin-top: 20px;
	margin-left: 80%;
}
</style>
<body>
	<div id="back">
		<form action="servlet/CheckLogin" method="post"
			onclick="return check()">
			<div id="zhuce">
				<a href="register.jsp"><img src="image/registerbutton.png">
				</src></a>
			</div>
			<div id="info">
				<table>
					<tr>
						<td height="90px" width="80px">用户名:</td>
						<td><input type="text"
							style="width:200px;height:34px;border:1px solid gray;background:none;"
							name="userName"></td>
					</tr>
					<tr>
						<td>密 码:</td>

						<td><input type="password"
							style="width:200px;height:34px;border:1px solid gray;background:none;"
							name="userPwd"></td>
					</tr>
					<tr>
						<td></td>
						<td><input type="radio" name="limit" value="0"
							checked="checked">不保存 <input type="radio" name="limit"
							value="10" checked="checked">保存10天</td>
					</tr>
					<tr>
						<td></td>
						<td>
							<%
								if (request.getAttribute("name") != null) {
							%> <font color="red"><%=request.getAttribute("name")%></font>
							<%
								} else if (request.getAttribute("passwords") != null) {
							%><font color="red"><%=request.getAttribute("passwords")%></font>
							<%
								}
							%>
						</td>
					</tr>
					<tr>
						<td></td>
						<td><input type="image" src="image/login1.png" onclick="javascript:document.forms['Form_2'].submit()"></td>

					</tr>
				</table>
			</div>

		</form>
	</div>
</body>
</html>
