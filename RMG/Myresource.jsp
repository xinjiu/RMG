<%@page import="SqlDB.ConnectSql"%>
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

<title>个人中心</title>

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
#first {
	width: 90%;
	height: 20px;
	margin-top:20px;
	text-align: right;
}

#s {
	width:95%;
	margin-left:2.5%;
	margin-top:80px;
	text-align: center;
}
#back {
	width: 99%;
	height: 99%;
	background-image: url("image/mybackgroud.png");
	background-repeat: no-repeat;
	background-attachment: fixed;
	position: absolute;
}
</style>
<body>

	<%
		ArrayList<List> allsqls = new ArrayList();
		if (session.getAttribute("username") == null) {
			response.sendRedirect("login.jsp");
			return;
		}
		allsqls = ConnectSql
				.selectsql("select * from resource where username=" + '"'
						+ session.getAttribute("username") + '"');
	%>
	<div id="back">
		<div id="first">
			<form action="servlet/Checksousuo" method="post"><input type="image" src="image/backbutton.png"></form>
		</div>
		<div id="s">
			<table id="s" border="1" bgcolor="#cccc">
				<%
					if (allsqls.size() == 0) {
						%><font color="red"><% out.print("你名下暂时没有任何手机资源");%></font><% 

					} else {
				%>

				<tr>
					<th width="10%">用户名</th>
					<th width="10%">机型</th>
					<th width="10%">IMEI</th>
					<th width="10%">颜色</th>
					<th width="8%">借入日期</th>
					<th width="8%">套装结构</th>
					<th width="8%">工号</th>
					<th width="8%">年份</th>
				</tr>
				<%
					for (List<String> i : allsqls) {
							out.print("<tr>");
							for (String j : i) {
								out.print("<td>" + j + "</td>");
							}
							out.print("</tr>");
						}
					}
				%>
			</table>
		</div>
	</div>
</body>
</html>
