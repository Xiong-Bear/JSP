<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>图书管理系统-改密</title>
<link type="text/css" rel="stylesheet" href="css/login.css">
</head>
<body>
<%request.setCharacterEncoding("utf-8"); %>
<div id="main">
<form action="repass_result.jsp" method="post" >
<h1>图书管理系统—更改密码</h1>

<p>用&nbsp;户&nbsp;名：<input type="number" name="usernumber"></p>
<p>姓&nbsp;&nbsp;&nbsp;&nbsp;名：<input type="text" name="name"></p>
<p>新&nbsp;密&nbsp;码：<input type="password" name="pass"></p>
<p>确认密码：<input type="password" name="repass"></p>
<font color="red">${message }</font>
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="submit" value="确认">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="reset" value="重置"></p>
</form>
</div>
<div id="footer">
		<i>Designed by Xiong-Bear.</i>
		<footer>&copy;&nbsp;&nbsp;&nbsp;&nbsp;郑州市金水区文化路97号郑州大学北校区</footer>
</div>
</body>
</html>