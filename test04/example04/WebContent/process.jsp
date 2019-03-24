<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error.jsp"%>
 <% String snum= request.getParameter("num"); %>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>process.jsp</title>
</head>
<body>
		
	<% if(Integer.valueOf(snum) <= 50){ %>
		<jsp:forward page="two.jsp">
			<jsp:param value="" name="request.getParameter('num')"/>
		</jsp:forward>
	<% }
	else if(Integer.valueOf(snum) < 100) {%>
	<jsp:forward page="three.jsp" >
		<jsp:param value="" name="request.getParameter('num')"/>
	</jsp:forward>
	<% }
	else{
		throw new NumberFormatException("request.getParameter('num')");
	}
	%>
	
	
</body>
</html>