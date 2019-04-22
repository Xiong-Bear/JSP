<%@page import="zzu.DBConnection"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>图书管理系统—检索借阅记录</title>
<link type="text/css" rel="stylesheet" href="css/main.css">
</head>
<body>
<jsp:useBean id="conn" class="zzu.DBConnection"></jsp:useBean>
<h1>图书管理系统—检索借阅记录</h1>
<%
request.setCharacterEncoding("utf-8");
int id_number=Integer.parseInt(request.getParameter("id_number"));
//int ID=Integer.parseInt((String)request.getAttribute("id_number"));
String search=request.getParameter("search");
String sql4=null;
Statement st=conn.getConnection().createStatement();
ResultSet rs4=null;
//sql2="select * from reader where  id_number like '%"+search+"%' or name like '%"+search+"%' or department like '%"+search+"%' or major like '%"+search+"%' ;";
sql4="select * from borrow where id_number like '%"+search+"%' or name like '%"+search+"%' or book_name like '%"+search+"%' or book_isbn like '%"+search+"%' ;";
%>

<% rs4=st.executeQuery(sql4);
if(rs4.next()){
%>
	<h2>包含<font color="red"> <%=search %> </font>的借阅记录如下：</h2>
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

	<%rs4.previous();
	while(rs4.next()) {
		int std_number=rs4.getInt(1);
		String name=rs4.getString(2);
		String book_name=rs4.getString(3);
		int book_isbn=rs4.getInt(4);
		String date=rs4.getString(5);
		String back=rs4.getString(6);
	%>
		<tr>
			<td><%=std_number%></td>
	<td><%=name %></td>
	<td><%=book_name %></td>
	<td><%=book_isbn%></td>
	<td><%=date%></td>
	<td><%=back %></td>
	<%if(back!=null){%>
	<td><font class="table-font" color="gray">归还</font></td>
		<%}else{ %>
	<td><a href="update_borrow_result.jsp?id_number=<%=id_number %>&std_number=<%=std_number %>&isbn=<%=book_isbn%>&borrow_date=<%=date%>&mark=back">归还</a></td>
	<%}%>
</tr>
<%}%>
</table>
<% 
rs4.close();
conn.getConnection().close();
}else {%>
<h2><font color="red"> <%=search %> </font>无相关借阅记录</h2>
<% }%>
<div id="footer">
		<i>Designed by Xiong-Bear.</i>
		<footer>&copy;&nbsp;&nbsp;&nbsp;&nbsp;郑州市金水区文化路97号郑州大学北校区</footer>
</div>
</body>
</html>