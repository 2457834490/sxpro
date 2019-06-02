<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录</title>
<script type="text/javascript" src="js/jquery.min.js"></script>
</head>

<link rel="stylesheet" type="text/css" href="css/LoginForm.css"/>

<body>
       
		<div  class="all">
		<div class="LoginForm">
        <form action="dl" method="post" name="dl">
        <fieldset>
            账号:<input id="zh" name="zh"    size="30" placeholder="请输入您的用户名"/><br/>
            密码:<input id="mm" name="mm"  type="password" size="30" placeholder="请输入您的密码"/><br/>
        <input type="checkbox">记住你的密码<br/>
        <input type="submit" value="登录" >
        <input type="submit" value="注册" onClick="window.location.href='ZhuCe.html'">
        ${sessionScope.result}
       </fieldset>
       </form>
       
       </div>
       </div>
</html>