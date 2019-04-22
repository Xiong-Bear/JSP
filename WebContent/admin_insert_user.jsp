<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link type="text/css" rel="stylesheet" href="css/main.css">
<title>图书管理系统-添加用户</title>
</head>
<body>
<%request.setCharacterEncoding("utf-8");
int id_number=Integer.parseInt(request.getParameter("id_number"));
%>

<div id="main">
<h1>图书管理系统-添加用户</h1>
<form action="insert_user_result.jsp?id_number=<%=id_number %>" method="post">
<table class="table-1">
<caption>注意：用户名不可更改，如需更改用户名请删除对应用户后重新添加，其他信息请仔细核对后再提交</caption>

<tr><td>用户名：</td><td><input required="required" type="number" name="std_number"  placeholder="请输入用户名"></td></tr>
<tr><td>密码：</td><td><input required="required" type="password" name="password" placeholder="请输入密码"></td></tr>
<tr><td>姓名：</td><td><input required="required" type="text" name="name"  placeholder="请输入姓名"></td></tr>
<tr><td>性别：</td><td><input type="radio" name="sex" checked="checked" value="男">男&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="sex" value="女">女</td></tr>
<tr><td>院系：</td><td><input required="required" type="text" name="department" placeholder="请输入院系"></td></tr>
<tr><td>专业：</td><td><input required="required" type="text" name="major" placeholder="请输入专业"></td></tr>
<tr><td><input type="reset" value="重置"><td><input type="submit" value="提交"></td></tr>

</table>
</form>
</div>
<div id="footer">
		<i>Designed by 20177720756熊翊豪.</i>
		<footer>&copy;&nbsp;&nbsp;&nbsp;&nbsp;郑州市金水区文化路97号郑州大学北校区</footer>
</div>
</body>
</html>
