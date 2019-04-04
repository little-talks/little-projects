<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.io.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>this success page</title>
</head>
<body>
	<p>恭喜你，猜对了</p>
	<p>你已经猜了<%= (Integer)session.getAttribute("visitCountKey") %>次 
	<p>用时<%= (Integer)session.getAttribute("subTimeKey") %>秒</p>
	<p>这个数字就是<%= (Integer)session.getAttribute("numKey") %></p>
	<a href="guessForm.jsp">再来一次</a>
	<%
	
	//获取最后访问页面的时间
	Date lastAccessTime = new Date(session.getLastAccessedTime());

	out.println(lastAccessTime);
	session.removeAttribute("subTimeKey");
	%>
</body>
</html>