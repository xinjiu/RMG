<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>读取注册信息</title>
<meta http-equiv="contentType" content="text/html;charset=utf-8" />
</head>

<body>
	<%
		String userName, userPwd, confirmPwd, email, birthday;
		
		request.setCharacterEncoding("utf-8");
		userName = request.getParameter("userName");
		userPwd = request.getParameter("userPwd");
		confirmPwd = request.getParameter("confirmPwd");
		email = request.getParameter("email");
		birthday = request.getParameter("birthday");
		
		if (userName == null || userName.trim().equals("")) {
			out.print("请输入用户名");
		} else if (userPwd == null || userPwd.trim().equals("")) {
			out.print("请输入密码");
		} else if (!userPwd.equals(confirmPwd)) {
			out.print("两次密码不同");
		} else if (email != null && !email.trim().equals("")) {
			if (!email.matches("\\w+(\\.\\w+)?@\\w+(\\.\\w+)+")) {
				out.print("邮箱不合法");
			}
		} else if (birthday != null && !birthday.trim().equals("")) {
			if (!email.matches("\\d+")) {
				out.print("生日必须要是一个日期");
			}
		}else
		{	
		
			request.getRequestDispatcher("/login.jsp").forward(request, response);
			
		}
	%>

</body>
</html>
