<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登录记住用户名密码</title>
</head>
<style>
.reg-tits{
	display:block;

	float:left;
	text-align:left;
}
</style>
<body>
<% 
	String username="";
	String pwd="";
	Cookie[] cookies=request.getCookies();
	if(cookies!=null){
		for(int i=0;i<cookies.length;i++){
			if("username".equals(cookies[i].getName())){
				username=cookies[i].getValue();
			}
			else if("pwd".equals(cookies[i].getName())){
				pwd=cookies[i].getValue();
			}
		}//for
	}
	else{
		username="";
		pwd="";
	}
	%>
<div id="content">
<form action="login_deal.jsp" method="post">
<div class="info">
<span class="reg-tits">用户名：</span><input type="text" name="username" class="ipt-txt" value="<%=username%>"></div>
<br>
<div class="info">
<span class="reg-tits">密&nbsp;&nbsp;&nbsp;&nbsp;码：</span><input type="password" name="pwd" class="ipt-txt" value=<%=pwd%>></div>
<br>
<input type="submit" value="提交">
<input type="reset" value="重置">
</form>
</div>
</body>
</html>