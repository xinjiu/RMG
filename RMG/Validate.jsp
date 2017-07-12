<%@ page import="SqlDB.ConnectSql" pageEncoding="utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%
	response.setContentType("text/xml");
	response.setHeader("Cache-Control", "no-store");
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expires", 0);
	request.setCharacterEncoding("utf-8");
	String userName = request.getParameter("id");
	String selectsql = "select * from user where username=" + '"'
			+ userName + '"';
	ArrayList<String> userinfo = ConnectSql.querysql(selectsql,
			"username", "select");
	if (!userinfo.isEmpty()) {
		response.getWriter().write("<msg>valid</msg>");
		System.out.println("用户名已经存在");
	} else {
		response.getWriter().write("<msg>invalid</msg>");
	}
	System.out.println(request.getParameter("id"));
%>

