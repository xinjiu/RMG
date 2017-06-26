<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.util.*"%>


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

<meta name="content-type" content="text/html; charset=UTF-8">
<title>用户注册</title>
</head>
<style>
#back {
	width: 99%;
	height: 98%;
	background-image: url("image/registerbackgroud.png");
	background-repeat: no-repeat;
	background-attachment: fixed;
	position: absolute;
}
#zhuce{
	margin-top:6%;
	margin-left:40%;
}
#geshi {
	height: 75%;
	margin-left: 0%;
	margin-top: 20px;
	text-align: center;
	width: 30%;
}

</style>
<body>

	<form action="servlet/CheckRegister" method="post"
		onsubmit="return check()">
		<div id="back">
		<div id="zhuce">
			<table id="geshi">
				<tr>
					<td >用户名</td>
					<td><input type="text"  style="width:150px;border:0px;background:none;" name="userName"></td>
				</tr>
				<tr>
					<td>密码</td>
					<td><input type="password" style="width:150px;border:0px;background:none;" name="userPwd"></td>
				</tr>
				<tr>
					<td>确认密码</td>
					<td><input type="password" style="width:150px;border:0px;background:none;" name="confirmPwd"></td>
				</tr>
				<tr>
					<td>邮箱</td>
					<td><input type="text" style="width:150px;border:0px;background:none;" name="email"></td>
				</tr>
				<tr>
					<td>生日</td>
					<td><input type="text" style="width:150px;border:0px;background:none;" name="birthday"></td>
				</tr>
				<tr><td></td><td><font color="red">
				<%if(request.getAttribute("value")!=null){ %>
				<%=request.getAttribute("value") %>
				<%}else{} %>
				</font>
				</td></tr>
				<tr>

					<td><input type="image" src="image/resetbutton.png" onclick="reset();return false;"></td>
					<td><input type="image" src="image/register1.png" onclick="javascript:document.forms['Form_2'].submit()"></td>
				</tr>
			</table>
			</div>
		</div>
	</form>

</body>
</html>

