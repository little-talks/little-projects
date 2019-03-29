<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.net.URLDecoder" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>显示信息</title>
<body>
<pre>

<%
	//解决post方法的乱码问题
	 request.setCharacterEncoding("UTF-8");

	String username=request.getParameter("username");
	String pwd=request.getParameter("pwd");
	
	if("zhangsan".equals(username) && "123456".equals(pwd)){
		out.println("用户名："+username);
		out.print("密码："+pwd);
		
		Cookie cn=new Cookie("username",username);
		Cookie cp=new Cookie("pwd",pwd);
		response.addCookie(cn);
		response.addCookie(cp);
	}
	else{
		
		Cookie cn=new Cookie("username","");
		Cookie cp=new Cookie("pwd","");

		response.addCookie(cn);
		response.addCookie(cp);
		response.sendRedirect("login.jsp");
	}
	%>
	</pre>
</body>
</html>