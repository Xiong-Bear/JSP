<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>图书管理系统-管理借阅记录</title>
<link type="text/css" rel="stylesheet" href="css/main.css">
</head>
<body>
<h1>图书管理系统-管理借阅记录</h1>
<%request.setCharacterEncoding("utf-8");
int id_number=Integer.parseInt(request.getParameter("id_number"));
%>
<div id="nav">
<nav>

</nav>
</div>
<div id="main">
<form action="admin_update_borrow.jsp?id_number=<%=id_number %>" method="post" target="_blank">
<label><input id="search" type="text" name="search" placeholder="   请输入要检索的内容   用户名/书号（ISBN）/姓名/书名">
<input id="submit" type="submit" value="查询"></label>
</form>
</div>
<div id="footer">
		<i>Designed by 20177720756熊翊豪.</i>
		<footer>&copy;&nbsp;&nbsp;&nbsp;&nbsp;郑州市金水区文化路97号郑州大学北校区</footer>
</div>
</body>
</html>