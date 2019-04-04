<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.io.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Guess the Number</title>
</head>
<body>
<pre>
	<%
	//产生随机数
	//0-1 =0,!=1
	//double rand = Math.random();
	Random rand = new Random();
	int n = rand.nextInt(100)+1;
	//获取session创建时间
	Date createTime = new Date(session.getCreationTime());
	Date now = new Date();
	//long ct = createTime.getTime();
	long ct = now.getTime();
	int ict = (int) ct / 1000;
	String createTimeKey = new String("ict");
	Integer visitCount = new Integer(0);
	String visitCountKey = new String("visitCount");
	String numKey = new String("n");
	//初始化
	session.removeAttribute("visitCountKey");
	session.setAttribute("visitCountKey", visitCount);
	session.setAttribute("createTimeKey", ict);
	out.println("分配的随机数字："+n);
	out.println("session创建时间:"+createTime);
	//out.println("session最后访问时间:"+lastAccessTime);
	out.println("现在时间:"+now);
	//检测是否新的访问用户
	/*
	if(session.isNew()){
		session.setAttribute("visitCountKey", visitCount);
		out.println("新用户已猜的次数："+visitCount);
	}
	out.println(session.getId());
	out.println(createTime);
	out.println(lastAccessTime);

	out.println("用时"+subTime);
	out.println("数字："+n);
	out.println("次数："+visitCount);
	*/
	visitCount = (Integer) session.getAttribute("visitCountKey");
	//visitCount = visitCount + 1;
	session.setAttribute("visitCountKey", visitCount);
	session.setAttribute("numKey",n);
	%>
	</pre>
	<p>随机分给了你一个1到100之间的数字，请猜猜这个数</p>
	<p>输入你猜的数</p>
	<form name="formNumber" method="post" action="result.jsp">
	<input type="text" name="num">
	<input type="submit" name="Submit" value="送出">
	</form>
</body>
</html>