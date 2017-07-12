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
<script type="text/javascript" charset="UTF-8">
    
	var req;
	function validate() {
		var idField = document.getElementById("userid");
		var url = "Validate.jsp?id=" + escape(decodeURI(idField.value));
		if (window.XMLHttpRequest) {
			req = new XMLHttpRequest();

		} else if (window.ActiveXObject) {
			req = new ActiveXObject("Microsoft.XMLHTTP");
		}
		req.open("GET", url, true);
		req.onreadystatechange = callback;
		req.send(null);
	}
	function callback() {
	debugger;
		if (req.readyState == 4) {
			
			if (req.status == 200) {
				//var msg = req.responseXML.getElementById("s");
				var msg = req.responseXML.getElementsByTagName("msg")[0];
				setMsg(msg.childNodes[0].nodeValue);
			}
		}
	}
	function setMsg() {
		var mdiv = document.getElementById("usermsg");
		if (msg == "valid") {
			mdiv.innerHTML = "<font color='red'> 用户已经存在</font>";

		} else {
			mdiv.innerHTML = "<font color='green'>此用户未注册，可以使用</font>";
		}
	}
</script>
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

#zhuce {
	margin-top: 6%;
	margin-left: 40%;
}

#geshi {
	height: 75%;
	margin-left: 0%;
	margin-top: 0px;
	text-align: center;
	width: 30%;
}
#geshi1 {
	height: 100px;
	margin-left: 140px;
	margin-top: -470px;
	text-align: center;
	width: 30%;
}
</style>
<body>

	<form action="servlet/CheckRegister" method="post"
		onsubmit="return check()">
		<div id="back">
		<div width="150px" heght="1px"; style="margin-left:80%"><a href="login.jsp">有账号，直接登录</a></div>
		<div id="zhuce">
				<table id="geshi">
					<tr>
						<td>用户名</td>
						<td><input type="text"
							style="width:150px;height:30px;border:0px;"  id="userid"
							 name="userName" onblur="validate()"></td>
					</tr>
					<tr>
						<td>密码</td>
						<td><input type="password"
							style="width:150px;height:30px;border:0px;" name="userPwd"></td>
					</tr>
					<tr>
						<td>确认密码</td>
						<td><input type="password"
							style="width:150px;height:30px;border:0px;" name="confirmPwd"></td>
					</tr>
					<tr>
						<td>邮箱</td>
						<td><input type="text"
							style="width:150px;height:30px;border:0px;" name="email"></td>
					</tr>
					<tr>
						<td>生日</td>
						<td><input type="text"
							style="width:150px;height:30px;border:0px;" name="birthday"></td>
					</tr>
					<tr>
						<td></td>
						<td><font color="red"> <%
 	if (request.getAttribute("value") != null) {
 %>
								<%=request.getAttribute("value")%> <%
 	} else {
 	}
 %>
						</font></td>
					</tr>
					<tr>

						<td><input type="image" src="image/resetbutton.png"
							onclick="reset();return false;"></td>
						<td><input type="image" src="image/register1.png"
							onclick="javascript:document.forms['Form_2'].submit()"></td>
					</tr>
				</table>
				<div id="geshi1"><span id="usermsg"></span></div>
			</div>
		</div>
	</form>

</body>
</html>

