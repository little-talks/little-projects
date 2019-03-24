<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>This is one page</title>
</head>
<body>
	<jsp:include page="head.html"/>
	
	<form action="process.jsp?">
	请输入1至100之间的整数：
	<input type="text" name="num">
	<br>
	<input type="submit" name="Submit" value="送出">
	</form>
	
	
	
</body>
</html>