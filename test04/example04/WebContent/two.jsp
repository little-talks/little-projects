<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>This is two page</title>
</head>
<body>
	<jsp:include page="head.html"/>
	
	<p>This is two.jsp</p>
	<p style="font-size:28px;color:red">传递过来的值是:<%= request.getParameter("num")  %> 
	</p>
</body>
</html>