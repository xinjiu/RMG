<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
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
<script type="text/javascript">
		function clis() {
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
	function clus(){
		var msg = req.responseXML.getElementsByTagName("msg")[0];
		
		document.getElementById("demo").innerHTML=msg;
	}
</script>
</head>

<body>
	<table>
		<tr>
			<td>yonghu:</td>
			<td><input type="text"
				style="width:150px;height:30px;border:1px;" id="userid"
				name="userName" onblur="clis()" onfocus="clus()"></td>
			<span id="demo">ss</span>
			</td>
		</tr>
	</table>
	<p id="demo">一个段落。</p>
	<button type="button" onclick="clis()">点击这里</button>
</body>
</html>
