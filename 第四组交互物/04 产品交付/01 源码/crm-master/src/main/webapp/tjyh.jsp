<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/useradd.css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>
</head>
<body>

  <div class="all">
			<div class="a">
				<table border="0" cellspacing="0" cellpadding="0" width="100%">
					<td>
						<tr>&nbsp;&nbsp;<img src="img/pointer.gif"></tr>&nbsp;
						<tr>当前位置:</tr>
						<tr>&nbsp;用户管理</tr>
						<tr>&nbsp;>&nbsp;</tr>
						<tr>添加用户</tr>
					</td>
				</table>
			</div>
			<div class="b">
				<form action="tjyh" method="post">
					<table border="0" cellspacing="0" cellpadding="10">
						<tr>
							<td>姓&nbsp;&nbsp;&nbsp;名:<input  name="xm" /></td>
							<td>
								状 态:<select name="zt">
									<option value="1">管理员</option>
									<option value="2">普通用户</option>
								</select>
							</td>
						</tr>
						<tr>
							<td>登录名:<input  name="zh" /></td>
							<td>
								密 码:<input  name="mm" id="userPassword" />
							</td>
						</tr>
					</table>
					<hr style="border:1px dashed #0000fff" />
					<table border="0" cellspacing="0" cellpadding="0" width="100%">
						<td>
							<tr>&nbsp;&nbsp;&nbsp;<input type="submit" value="确定"/></tr>
							<tr>&nbsp;&nbsp;&nbsp;<input type="reset" value="取消"/></tr>
						</td>
					</table>
				</form>
			</div>
		</div>

</body>
</html>