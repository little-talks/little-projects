<%@ page isErrorPage="true" language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>This is error information page</title>
</head>
<body>
	<jsp:include page="head.html"/>
	<p>This is error.jsp</p>
	<p style="font-size:28px;color:green">传递过来的错误信息:
	<%= request.getParameter("num")  %> 
<% exception.printStackTrace(response.getWriter());%>
<% exception.toString();%>
	
</p>
</body>
</html>