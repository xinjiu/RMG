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
#lrofunction {
	width: 20%;
	height: 20px;
	margin-left: 80%;
}
#name{
	text-align: center;
	margin-top:10px;
}
li {
	margin-right: 10px;
	float: left;
	list-style: none;
}

#sousuo {
	margin-left: 5%;
}

#geshi {
	height: 60%;
	margin-left: 2.5%;
	margin-top: 20px;
	text-align: center;
	width: 95%;
}

#page {
	margin-top:10%;
	margin-left: 45%;
}
#heit{
	height: 50px; width : 95%;
}
#back {
	width: 99%;
	height: 99%;
	background-image: url("image/registerbackgroud.png");
	background-repeat: no-repeat;
	background-attachment: fixed;
	position: absolute;
}
</style>

<body>
	<%-- <%
		ArrayList<List> allsql;
		allsql = ConnectSql.selectsql("select * from resource");

		if (session.getAttribute("username") == null) {
			response.sendRedirect("login.jsp");
			return;
		}
	%> --%>


	<div id="back">
		<div>
			<div id="name">
				<%
					if (session.getAttribute("username") == null) {
						out.print("请登录");
					} else {
						%><font color="red"><% out.print(session.getAttribute("username"));%></font><%  out.print( "," + "欢迎进入资源管理系统");
					}
				%>
			</div>
			<div id="lrofunction">
				<ul>
					<li><a href="register.jsp">注册</a></li>
					<li><a href="login.jsp">登录</a></li>
					<li><a href="loginout.jsp">注销</a></li>
					<li><a href="Myresource.jsp">个人中心</a>
				</ul>
			</div>
		</div>
		<div id="sousuo">
			<form action="servlet/Checksousuo" method="post">

				<input type="text" name="uName">用户名 <input type="text"
					name="tPhone">机型 <input type="submit" value="搜索">
			</form>
		</div>
		<div id="geshi">
			<table border="1" bgcolor="#cccc">
				<tr id ="heit">
					<th width="8%">Id</th>
					<th width="8%">用户名</th>
					<th width="8%">机型</th>
					<th width="8%">IMEI</th>
					<th width="8%">颜色</th>
					<th width="8%">借入日期</th>
					<th width="8%">套装结构</th>
					<th width="8%">工号</th>
					<th width="8%">年份</th>
					<% if(session.getAttribute("username")==null){
						
						}else{
						out.print("<th width='8%'>修改</th>");
						}%>
					
				</tr>
				<%
					/* out.print(request.getAttribute("sql")); */
					ArrayList<List> sql = (ArrayList<List>) request.getAttribute("sql");
					for (List<String> i : sql) {
					%>
						<tr id ="heit">
						
					<% 	for (String j : i) {
							out.print("<td>" + j + "</td>");
						}
						if(session.getAttribute("username")==null){ 
						
						}else{
						out.print("<td><a href=servlet/ShowEdit?value="+i.get(0)+">编辑</td>");
						}%></tr>
					<% }
				%>

			</table>
			<div>
				<%
					//上一页 

					int rowCount = (Integer) request.getAttribute("rowCount");
					int pageNow = (Integer) request.getAttribute("pageNow");//默认显示第一页
					int pageSize = 10;
					int pageCount = 0;//该值是通过pageSize和rowCount
					if (rowCount % pageSize == 0) {
						pageCount = rowCount / pageSize;
					} else {
						pageCount = rowCount / pageSize + 1;
					}
				%>

			</div>
		</div>
		<div id="page">
			<%
				if (pageCount > 1) {
					if (pageNow > 1 && pageNow < pageCount) {
			%>
			共<%=pageCount%>页 第<%=pageNow%>页 <a
				href="servlet/Checksousuo?pageNow=1">首页</a> <a
				href="servlet/Checksousuo?pageNow=<%=pageNow - 1%>">上一页</a> <a
				href="servlet/Checksousuo?pageNow=<%=pageNow + 1%>">下一页</a> <a
				href="servlet/Checksousuo?pageNow=<%=pageCount%>">末页</a>
			<%
				}else if(pageNow == 1){
				%>
				共<%=pageCount%>页 第<%=pageNow%>页 <a
				href="servlet/Checksousuo?pageNow=1">首页</a> <a
				href="servlet/Checksousuo?pageNow=<%=pageNow + 1%>">下一页</a> <a
				href="servlet/Checksousuo?pageNow=<%=pageCount%>">末页</a>
				
				<% }else if(pageNow == pageCount){
				%>
				共<%=pageCount%>页 第<%=pageNow%>页 <a
				href="servlet/Checksousuo?pageNow=1">首页</a> <a
				href="servlet/Checksousuo?pageNow=<%=pageNow - 1%>">上一页</a> <a
				href="servlet/Checksousuo?pageNow=<%=pageCount%>">末页</a>
				
				<% }
				} else if (pageCount == 1) {
			%>
			共<%=pageCount%>页 第<%=pageCount%>页
			<%
				} else {
					out.print("no data");
				}
			%>
		</div>
	</div>

</body>
</html>
