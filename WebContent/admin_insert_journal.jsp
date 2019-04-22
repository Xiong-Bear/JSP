<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link type="text/css" rel="stylesheet" href="css/main.css">
<title>图书管理系统-添加期刊</title>
</head>
<body>
<%request.setCharacterEncoding("utf-8");
int id_number=Integer.parseInt(request.getParameter("id_number"));
%>

<div id="main">
<h1>图书管理系统-添加期刊</h1>
<form action="insert_journal_result.jsp?id_number=<%=id_number %>" method="post">
<table class="table-1">
<caption>注意：期刊号不可更改，如需更改期刊号请删除对应期刊后重新添加，其他信息请仔细核对后再提交</caption>

<tr><td>期刊号：</td><td><input required="required" type="number" name="issn"  placeholder="请输入期刊号"></td></tr>
<tr><td>期刊名：</td><td><input required="required" type="text" name="name"  placeholder="请输入期刊名"></td></tr>
<tr><td>卷号：</td><td><input required="required" type="number" name="issue_number" placeholder="请输入卷号"></td></tr>
<tr><td>组织单位：</td><td><input required="required" type="text" name="organizer" placeholder="请输入组织单位"></td></tr>
<tr><td>类别：</td><td><input required="required" type="text" name="category" placeholder="请输入类别"></td></tr>
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
