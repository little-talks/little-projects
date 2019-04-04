<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>the number is large</title>
</head>
<body>
	<p>所猜的数比实际的数大，请再猜：</p>
	<p>你猜的数字是<%= request.getParameter("num") %></p>
    <p>你已经猜了<%= (Integer)session.getAttribute("visitCountKey") %>次  
	<p>请再输入你猜的数</p>
	<form name="formNumber" method="post" action="result.jsp">
	<input type="text" name="num">
	<input type="submit" name="Submit" value="送出">
	</form>
	
</body>
</html>