<%@page import="zzu.DBConnection"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>图书管理系统—全局检索</title>
<link type="text/css" rel="stylesheet" href="css/main.css">
</head>
<body>
<jsp:useBean id="conn" class="zzu.DBConnection"></jsp:useBean>
<h1>图书管理系统—检索结果</h1>
<%
request.setCharacterEncoding("utf-8");
int id_number=Integer.parseInt(request.getParameter("id_number"));
//int ID=Integer.parseInt((String)request.getAttribute("id_number"));
String search=request.getParameter("search");
String sql1=null;
String sql2=null;
String sql3=null;
String sql4=null;
Statement st=conn.getConnection().createStatement();
ResultSet rs1=null;
ResultSet rs2=null;
ResultSet rs3=null;
ResultSet rs4=null;
sql1="select * from book where isbn like '%"+search+"%' or name like '%"+search+"%' or writer like '%"+search+"%' or publisher like '%"+search+"%' or category like '%"+search+"%' ;";
sql2="select * from reader where id_number like '%"+search+"%' or name like '%"+search+"%' or department like '%"+search+"%' or major like '%"+search+"%' ;";
sql3="select * from journal where issn like '%"+search+"%' or name like '%"+search+"%' or issue_number like '%"+search+"%' or category like '%"+search+"%' ;";
sql4="select * from borrow where id_number like '%"+search+"%' or name like '%"+search+"%' or book_isbn like '%"+search+"%' or book_name like '%"+search+"%' ;";

rs1=st.executeQuery(sql1);
if(rs1.next()){
%>
	<h2>包含<font color="red"> <%=search %> </font>的图书查询结果如下：</h2>
	<table class="table-1">
		<tr>
			<td>书号</td>
			<td>书名</td>
			<td>作者</td>
			<td>出版社</td>
			<td>类别</td>
			<td>数量</td>
			<td>操作</td>
			<td>操作</td>
		</tr>

	<%rs1.previous();
	while(rs1.next()) {
		int isbn=rs1.getInt(1);
		String name=rs1.getString(2);
		String writer=rs1.getString(3);
		String publisher=rs1.getString(4);
		String category=rs1.getString(5);
		int quantity=rs1.getInt(6);
	%>
		<tr>
			<td><%=isbn%></td>
			<td><%=name %></td>
			<td><%=writer %></td>
			<td><%=publisher%></td>
			<td><%=category%></td>
			<td><%=quantity %></td>
			<td><a href="admin_update_book.jsp?id_number=<%=id_number %>&isbn=<%=isbn %>">修改</a></td>
			<td><a href="admin_delete_book.jsp?id_number=<%=id_number %>&isbn=<%=isbn %>">删除</a></td>
			
	</tr>
	<%}%>
	</table>
<% }else {%>
<h2><font color="red"> <%=search %> </font>无图书查询记录</h2>
<% }%>

 <%rs3=st.executeQuery(sql3);
if(rs3.next()){%>
<h2>包含<font color="red"> <%=search %> </font>的期刊查询结果如下：</h2>
	<table class="table-1">
		<tr>
			<td>期刊号</td>
			<td>期刊名</td>
			<td>卷号</td>
			<td>组织单位</td>
			<td>类别</td>
			<td>操作</td>
			<td>操作</td>
		</tr>

	<%rs3.previous();
	while(rs3.next()) {
		int issn=rs3.getInt(1);
		String name=rs3.getString(2);
		int issue_number=rs3.getInt(3);
		String organizer=rs3.getString(4);
		String category=rs3.getString(5);
	%>
		<tr>
			<td><%=issn%></td>
			<td><%=name %></td>
			<td><%=issue_number %></td>
			<td><%=organizer%></td>
			<td><%=category %></td>
			<td><a href="admin_update_journal.jsp?id_number=<%=id_number %>&issn=<%=issn %>">修改</a></td>
			<td><a href="admin_delete_journal.jsp?id_number=<%=id_number %>&issn=<%=issn %>">删除</a></td>
	</tr>
	<%}%>
	</table>
<% }else {%>
<h2><font color="red"> <%=search %> </font>无期刊查询记录</h2>
<% }%>

<%rs2=st.executeQuery(sql2);
if(rs2.next()){
%>
	<h2>包含<font color="red"> <%=search %> </font>的用户查询结果如下：</h2>
	<table class="table-1">
		<tr>
			<td>用户名</td>
			<td>密码</td>
			<td>姓名</td>
			<td>性别</td>
			<td>院系</td>
			<td>专业</td>
			<td>操作</td>
			<td>操作</td>
		</tr>

	<%rs2.previous();
	while(rs2.next()) {
		int std_number=rs2.getInt(1);
		String std_pass=rs2.getString(2);
		String name=rs2.getString(3);
		String sex=rs2.getString(4);
		String department=rs2.getString(5);
		String major=rs2.getString(6);
	%>
		<tr>
			<td><%=std_number%></td>
			<td><%=std_pass %></td>
			<td><%=name %></td>
			<td><%=sex%></td>
			<td><%=department%></td>
			<td><%=major %></td>
			<td><a href="admin_update_user.jsp?id_number=<%=id_number %>">修改</a></td>
			<td><a href="admin_delete_user.jsp?id_number=<%=id_number %>">删除</a></td>
	</tr>
	<%}%>
	</table>
<% }else {%>
<h2><font color="red"> <%=search %> </font>无用户查询记录</h2>
<% }%>

<%rs4=st.executeQuery(sql4);
if(rs4.next()){
%>
	<h2>包含<font color="red"> <%=search %> </font>的借阅信息查询结果如下：</h2>
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
		String borrow_time=rs4.getString(5);
		String back_time=rs4.getString(6);
	%>
		<tr>
			<td><%=std_number%></td>
			<td><%=name %></td>
			<td><%=book_name %></td>
			<td><%=book_isbn %></td>
			<td><%=borrow_time%></td>
			<td><%=back_time%></td>
			<%if(back_time!=null){%>
	<td><font class="table-font" color="gray">归还</font></td>
		<%}else{ %>
	<td><a href="update_borrow_result.jsp?id_number=<%=id_number %>&std_number=<%=std_number %>&isbn=<%=book_isbn%>&borrow_date=<%=borrow_time%>&mark=back">归还</a></td>
	<%}%>
</tr>
<%}%>
</table>
<% }else {%>
<h2><font color="red"> <%=search %> </font>无借阅信息查询记录</h2>
<% }%>
<div id="footer">
		<i>Designed by 20177720756熊翊豪.</i>
		<footer>&copy;&nbsp;&nbsp;&nbsp;&nbsp;郑州市金水区文化路97号郑州大学北校区</footer>
</div>
</body>
</html>