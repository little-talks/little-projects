<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.io.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>this success page</title>
</head>
<body>
	<%
	Integer ct = (Integer)session.getAttribute("createTimeKey");
	//获取最后访问页面的时间
	Date lastAccessTime = new Date(session.getLastAccessedTime());
	long lt = lastAccessTime.getTime();
	int subTime = ((int) lt / 1000) - ct;
	out.println(lastAccessTime);
	%>
	<p>恭喜你，猜对了</p>
	<p>你已经猜了<%= (Integer)session.getAttribute("visitCountKey") %>次 
	<p>用时<%= subTime %>秒</p>
	<p>这个数字就是<%= (Integer)session.getAttribute("numKey") %></p>
	<a href="guessForm.jsp">再来一次</a>
	<%
	session.invalidate();
	%>
</body>
</html>