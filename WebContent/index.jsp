<%@page import="zzu.DBConnection"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>图书管理系统</title>
<link type="text/css" rel="stylesheet" href="css/index.css">

</head>
<body>
<jsp:useBean id="conn" class="zzu.DBConnection"></jsp:useBean>
<%request.setCharacterEncoding("utf-8");
response.setCharacterEncoding("utf-8");
int number=Integer.parseInt(request.getParameter("usernumber"));
String pass=request.getParameter("password");
Statement st=null;
try {
	st = conn.getConnection().createStatement();
} catch (SQLException e) {
	out.print("SQL异常");
}

String person="select * from reader where id_number="+number+";";
//ResultSet rs_person=st.executeQuery(person);
String log="select * from borrow where id_number="+number+";";
ResultSet rs_log=st.executeQuery(log);
rs_log.next();
//rs_person.next();
%>

<h1>图书管理系统</h1>
<div id="nav">
	<span><a href="book.jsp?id_number=<%=number %>" target="_blank">图书分类</a></span>
	<span><a href="journal.jsp" target="_blank">期刊文献</a></span>
	<span><a href="borrow_log.jsp?id_number=<%=number%> " target="_blank">借阅记录</a></span>
	<span><a href="person.jsp?id_number=<%=number%>" target="_blank">个人中心</a></span>
	<span><a href="index.html">安全退出</a></span>
</div>
<%try {
	//rs_person.close();
	rs_log.close();
	conn.getConnection().close();
} catch (SQLException e) {	
	out.print("SQL异常");
}
%>
<div id="main">

<form action="search.jsp?id_number=<%=number %>" method="post" target="_blank">
<label><input id="search" type="text" name="search" placeholder="   请输入要查询的内容   图书/作者/类别/期刊/出版社">
<input id="submit" type="submit" value="查询"></label>
</form>
</div>
<div id="footer">
		<i>Designed by Xiong-Bear.</i>
		<footer>&copy;&nbsp;&nbsp;&nbsp;&nbsp;郑州市金水区文化路97号郑州大学北校区</footer>
</div>
</body>
</html>