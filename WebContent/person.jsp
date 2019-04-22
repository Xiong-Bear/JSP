<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>图书管理系统—个人中心</title>
<link type="text/css" rel="stylesheet" href="css/main.css">
</head>
<body>
<jsp:useBean id="conn" class="zzu.DBConnection"></jsp:useBean>
<h1>图书管理系统—个人中心</h1>
<%int idnumber=Integer.parseInt(request.getParameter("id_number"));
String sql=null;
Statement st=conn.getConnection().createStatement();
ResultSet rs=null;

sql="select * from reader where id_number="+idnumber+";";
rs=st.executeQuery(sql);
%>
<div id="nav">
	<span><a href="book.jsp?id_number=<%=idnumber %>" target="_blank">图书</a></span>
	<span><a href="journal.jsp" target="_blank">期刊文献</a></span>
	<span><a href="borrow_log.jsp?id_number=<%=idnumber%> " target="_blank">借阅记录</a></span>
	<span><a href="person.jsp?id_number=<%=idnumber%>" target="_blank">个人中心</a></span>
	<span><a href="index.html">安全退出</a></span>
</div>
<div id="main">
<table class="table-1">
<caption>请仔细核对个人信息，如果有误，请及时联系管理员！</caption>
<tr>
	<td>用户名</td>
	<td>姓名</td>
	<td>性别</td>
	<td>院系</td>
	<td>年级</td>
	<td>专业</td>
</tr>

<%
while(rs.next()) {
int id_number=rs.getInt(1);
String name=rs.getString(3);
String sex=rs.getString(4);
String department=rs.getString(5);
String  major=rs.getString(6);
String grade=rs.getString(1).substring(0,4);
%>
<tr>
	<td><%=id_number%></td>
	<td><%=name %></td>
	<td><%=sex %></td>
	<td><%=department%></td>
	<td><%=major%></td>
	<td><%=grade %></td>
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