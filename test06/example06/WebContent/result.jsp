<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	//次数、时长、所猜数字、随机数字
	Integer vc = (Integer)session.getAttribute("visitCountKey");
	//Integer st = (Integer)session.getAttribute("subTimeKey");
	Integer ct = (Integer)session.getAttribute("createTimeKey");
	String inum = request.getParameter("num");
	Integer rn = (Integer)session.getAttribute("numKey");
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>verify the number</title>
</head>
<body>
	<%
	//int sat = Integer.parseInt(st);
	//int lat = Integer.parseInt(lt);
	/*
	out.println(vc);
	out.println(Integer.valueOf(inum));
	out.println(rn);
	
	out.print(Integer.valueOf(vc));
	out.print(Integer.valueOf(inum));
	out.print(Integer.valueOf(rn));
	
	*/
	
	if( Integer.valueOf(inum) == rn )
	{
		vc = vc + 1;
		session.setAttribute("visitCountKey", vc);
	%>
		<jsp:forward page="success.jsp">
			<jsp:param value="" name="(Integer)session.getAttribute('visitCountKey')" />
			<jsp:param value="" name="(Integer)session.getAttribute('createTimeKey')" />
			<jsp:param value="" name="request.getParameter('num');" />

		</jsp:forward>
	<%
	} 
	else if( Integer.valueOf(inum) > rn ) 
	{
		vc = vc + 1;
		session.setAttribute("visitCountKey", vc);
	%>
	<jsp:forward page="large.jsp">
		<jsp:param value="" name="(Integer)session.getAttribute('visitCountKey')" />
		<jsp:param value="" name="(Integer)session.getAttribute('createTimeKey')" />
		<jsp:param value="" name="request.getParameter('num');" />
	</jsp:forward>
	<% 
	} 
	else 
	{
		vc = vc + 1;
		session.setAttribute("visitCountKey", vc);
	%>
	<jsp:forward page="small.jsp">
		<jsp:param value="" name="(Integer)session.getAttribute('visitCountKey')" />
		<jsp:param value="" name="(Integer)session.getAttribute('createTimeKey')" />
		<jsp:param value="" name="request.getParameter('num');" />
	</jsp:forward>
	<% 
	}
	
	%>
</body>
</html>