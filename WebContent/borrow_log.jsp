<%@page import="java.util.Date"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>图书管理系统—借阅记录</title>
<link type="text/css" rel="stylesheet" href="css/main.css">
</head>
<body>
<h1>图书管理系统—借阅记录</h1>

<div id="main">

<jsp:useBean id="conn" class="zzu.DBConnection"></jsp:useBean>
<%
//int isbn=Integer.parseInt(request.getParameter("isbn"));
int number=Integer.parseInt(request.getParameter("id_number"));
//int count=Integer.parseInt(request.getParameter("count"));
//String sql1=null;
String sql2=null;
Statement st=conn.getConnection().createStatement();
int rs1=0;
ResultSet rs2=null;
//sql1="update from book set count="+(count-1)+"where book_isbn="+isbn+";";
//rs1=st.executeUpdate(sql1);
sql2=" select * from borrow where id_number="+number+";";
rs2=st.executeQuery(sql2);
%>
<table class="table-1">
<tr>
	<td>用户名</td>
	<td>姓名</td>
	<td>书名</td>
	<td>书号</td>
	<td>借入时间</td>
	<td>归还时间</td>
	<td>操作</td>
</tr>

<%
while(rs2.next()) {
int id_number=rs2.getInt(1);
String name=rs2.getString(2);
String book_name=rs2.getString(3);
int book_isbn=rs2.getInt(4);
String date=rs2.getString(5);
String back=rs2.getString(6);
%>
<tr>
	<td><%=id_number%></td>
	<td><%=name %></td>
	<td><%=book_name %></td>
	<td><%=book_isbn%></td>
	<td><%=date%></td>
	<td><%=back %></td>
	<%if(back!=null){%>
	<td><font class="table-font" color="gray">归还</font></td>
		<%}else{ %>
	<td><a href="back_result.jsp?id_number=<%=id_number %>&isbn=<%=book_isbn%>&borrow_date=<%=date%>">归还</a></td>
	<%}%>
</tr>
<%}%>
</table>

</div>
<div id="footer">
		<i>Designed by Xiong-Bear.</i>
		<footer>&copy;&nbsp;&nbsp;&nbsp;&nbsp;郑州市金水区文化路97号郑州大学北校区</footer>
</div>
</body>
</html>