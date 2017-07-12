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
	background-image: url("image/mybackgroud.png");
	background-repeat: no-repeat;
	background-attachment: fixed;
	position: absolute;
}

#zhuce {
	margin-top: 6%;
	margin-left: 40%;
}

#geshi {
	height: 65%;
	margin-left: 0%;
	margin-top: 20px;
	text-align: center;
	width: 30%;
}
</style>
<body>

	
		<%
			String show_ID = null;
			String show_userName = null;
			String show_phone = null;
			String show_imei = null;
			String show_color = null;
			String show_indate = null;
			String show_taozhuang = null;
			String show_workhard = null;
			String show_year = null;
			
			ArrayList<List> sql = (ArrayList<List>) request.getAttribute("sql"); 
			if(sql.isEmpty()){
			}else{
			List<String> a = sql.get(0);
			for (int i = 0; i < a.size(); i++) {
			 show_ID = a.get(0);
			 show_userName = a.get(1);
			 show_phone = a.get(2);
			 show_imei = a.get(3);
			 show_color = a.get(4);
			 show_indate = a.get(5);
			 show_taozhuang = a.get(6);
			 show_workhard = a.get(7);
			 show_year = a.get(8);
			}
			}
		%>
		<div id="back">
			<div id="zhuce">
			<form action="servlet/Edit" method="post"
			onclick="return check()">
				<table id="geshi">
					<tr>
						<td>Id</td>
						<% session.setAttribute("Id", show_ID); %>
						<td><span><font color="red"><%=show_ID %> </font>
						</span></td>
					</tr>
					<tr>
						<td>用户名 </td>
						<td><input type="text"
							style="width:150px;height:30px;border:2px;" name="userName"></td><td><span><%=show_userName %>
						</span></td>
					</tr>
					<tr>
						<td>机型</td>
						<td><input type="text"
							style="width:150px;height:30px;border:2px;" name="phone"></td><td><span><%=show_phone %>
						</span></td>
					</tr>
					<tr>
						<td>imei</td>
						<td><input type="text"
							style="width:150px;height:30px;border:2px;" name="imei"></td><td><span><%=show_imei %>
						</span></td>
					</tr>
					<tr>
						<td>颜色</td>
						<td><input type="text"
							style="width:150px;height:30px;border:2px;" name="color"></td><td><span><%=show_color %>
						</span></td>
					</tr>
					<tr>
						<td>借入日期</td>
						<td><input type="text"
							style="width:150px;height:30px;border:2px;" name="indate"></td><td><span><%=show_indate %>
						</span></td>
					</tr>
					<tr>
						<td>套装结构</td>
						<td><input type="text"
							style="width:150px;height:30px;border:2px;" name="taozhuang"></td><td><span><%=show_taozhuang %>
						</span></td>
					</tr>
					<tr>
						<td>工号</td>
						<td><input type="text"
							style="width:150px;height:30px;border:2px;" name="workhard"></td><td><span><%=show_workhard %>
						</span></td>
					</tr>
					<tr>
						<td>年份</td>
						<td><input type="text"
							style="width:150px;height:30px;border:2px;" name="year"></td><td><span><%=show_year %>
						</span></td>
					</tr>
					<tr>
						<td></td>
						<td><font color="red"> </font></td>
					</tr>
					<tr>

						<td><input type="image" src="image/resetbutton.png"
							onclick="reset();return false;"></td>
						<td><input type="image" src="image/submit.png"
							onclick="javascript:document.forms['Form_2'].submit()"></td>
					</tr>
				</table>
				</form>
			</div>
		
		</div>


</body>
</html>

