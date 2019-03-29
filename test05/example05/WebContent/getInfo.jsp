<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<%@ page import="java.net.URLDecoder" %>
<html>
<head>
<meta charset="UTF-8">
<title>获取信息</title>
</head>
<body>
	
</body>
<pre>
<% 
	
	//解决post方法的乱码问题
	 request.setCharacterEncoding("UTF-8");
	 /*
	String usrname=request.getParameter("fname");
	out.println("姓名："+usrname+"\n");
	String age=request.getParameter("age");
	out.println("年龄："+age+"\n");
	String gender=request.getParameter("gender");
	out.println("性别："+gender+"\n");
	String grade=request.getParameter("grade");
	out.println("学历："+grade+"\n");
	String[] rabs=request.getParameterValues("rabbits");
	out.print("爱好：");
	for(String rab : rabs)
		out.print(rab+" ");
	out.println("\n");
	String info=request.getParameter("info");
	out.println("个人简介："+info+"\n");
	*/
	
	
 	Enumeration<String> gNames=(Enumeration<String>)request.getParameterNames();
 	while(gNames.hasMoreElements()){
	 	String name=(String) gNames.nextElement();
	 	String value=request.getParameter(name);
	 	if("fname".equals(name))
	 	out.println("姓名："+value+"\n");
	 	if("age".equals(name))
		 	out.println("年龄："+value+"\n");
	 	if("gender".equals(name))
		 	out.println("性别："+value+"\n");
	 	if("rabbits".equals(name)){
	 		String[] rbs=request.getParameterValues("rabbits");
	 		out.print("爱好：");
	 		for(String rab : rbs)
	 			out.print(rab+" ");
	 		out.println("\n");
	 	}
	 	if("info".equals(name))
	 	out.println("个人简介："+value+"\n");
		 	
	 	
 }

%>
</pre>
</html>