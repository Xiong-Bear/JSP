<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link type="text/css" rel="stylesheet" href="css/main.css">
<title>图书管理系统-添加图书</title>
</head>
<body>
<%request.setCharacterEncoding("utf-8");
int id_number=Integer.parseInt(request.getParameter("id_number"));
%>
<h1>图书管理系统-添加图书</h1>
<div id="main">
<form action="insert_book_result.jsp?id_number=<%=id_number %>" method="post">
<table class="table-1">
<caption>注意：书号不可更改，如需更改书号请删除对应图书后重新添加，其他信息请仔细核对后再提交</caption>

<tr><td>书号：</td><td><input required="required"  type="number" name="isbn"  placeholder="请输入书号"></td></tr>
<tr><td>书名：</td><td><input required="required" type="text" name="name"  placeholder="请输入书名"></td></tr>
<tr><td>作者：</td><td><input required="required" type="text" name="writer" placeholder="请输入作者"></td></tr>
<tr><td>出版社：</td><td><input required="required" type="text" name="publisher" placeholder="请输入出版社"></td></tr>
<tr><td>类别：</td><td><input required="required" type="text" name="category" placeholder="请输入类别"></td></tr>
<tr><td>数量：</td><td><input required="required" type="number" name="count" placeholder="请输入数量"></td></tr>
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
