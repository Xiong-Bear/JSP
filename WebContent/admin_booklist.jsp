<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>图书管理系统—图书</title>
<link type="text/css" rel="stylesheet" href="css/main.css">
</head>
<body>
<%
request.setCharacterEncoding("utf-8");
int id_number=Integer.parseInt(request.getParameter("id_number"));
String category=request.getParameter("category");
%>
<h1>图书管理系统—图书分类</h1>
<div id="nav">
	<span><a class="nav" href="admin_book.jsp?id_number=<%=id_number %>&category=<%="*" %>">全部</a></span>
	<span><a class="nav" href="admin_booklist.jsp?id_number=<%=id_number %>&category=<%="文学" %>">文学</a></span>
	<span><a class="nav" href="admin_booklist.jsp?id_number=<%=id_number %>&category=<%="侦探推理" %>">侦探推理</a></span>
	<span><a class="nav" href="admin_booklist.jsp?id_number=<%=id_number %>&category=<%="社科" %>">社会科学</a></span>
	<span><a class="nav" href="admin_booklist.jsp?id_number=<%=id_number %>&category=<%="科幻" %>">科幻</a></span>
	<span><a class="nav" href="admin_booklist.jsp?id_number=<%=id_number %>&category=<%="非虚构" %>">非虚构</a></span>
	<span><a class="nav" href="admin_booklist.jsp?id_number=<%=id_number %>&category=<%="历史" %>">历史</a></span>
	<span><a class="nav" href="admin_booklist.jsp?id_number=<%=id_number %>&category=<%="计算机" %>">计算机</a></span>
	<span><a class="nav" href="admin_booklist.jsp?id_number=<%=id_number %>&category=<%="青春" %>">青春</a></span>
	<span><a class="nav" href="admin_booklist.jsp?id_number=<%=id_number %>&category=<%="经济" %>">经济</a></span>
	<span><a class="nav" href="admin_booklist.jsp?id_number=<%=id_number %>&category=<%="科学" %>">科学</a></span>
	<span><a class="nav" href="admin_booklist.jsp?id_number=<%=id_number %>&category=<%="随笔" %>">随笔</a></span>
</div>
<jsp:useBean id="conn" class="zzu.DBConnection"></jsp:useBean>

<%String sql=null;
String sql2=null;
Statement st=conn.getConnection().createStatement();
ResultSet rs=null;
ResultSet rs2=null;
final int pagesize=20;
int pageCount=0;
int curPage=1;
	sql2="select * from book where category='"+category+"';";
	rs2=st.executeQuery(sql2);
	rs2.last();
	int size=rs2.getRow();
	pageCount=(size%pagesize==0)?(size/pagesize):(size/pagesize+1);
	String temp=request.getParameter("curPage");
	if(temp==null)
		temp="1";

	curPage=Integer.parseInt(temp);
	if(curPage>=pageCount)
		curPage=pageCount;

	boolean flag=rs2.absolute((curPage-1)*pagesize+1);
	//out.print(curPage);
	int count=0;

%>
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

<%rs2.previous();
while(rs2.next()) {
	if(count>=pagesize)
		break;
int isbn=rs2.getInt(1);
String name=rs2.getString(2);
String writer=rs2.getString(3);
String publisher=rs2.getString(4);
String cate2=rs2.getString(5);
int quantity=rs2.getInt(6);
count++;
%>
<tr>
	<td><%=isbn%></td>
	<td><%=name %></td>
	<td><%=writer %></td>
	<td><%=publisher%></td>
	<td><%=cate2%></td>
	<td><%=quantity %></td>
	<td><a href="admin_update_book.jsp?&isbn=<%=isbn %>&id_number=<%=id_number %>">修改</a></td>
	<td><a href="admin_delete_book.jsp?&isbn=<%=isbn %>&id_number=<%=id_number %>">删除</a></td>
</tr>
<%}%>
</table>
<%
rs2.close();
conn.getConnection().close();
%>

<p><a href = "admin_booklist.jsp?id_number=<%=id_number %>&category=<%=category %>&curPage=1" >首页</a>
<a href = "admin_booklist.jsp?id_number=<%=id_number %>&category=<%=category %>&curPage=<%=curPage-1%>" >上一页</a>
<a href = "admin_booklist.jsp?id_number=<%=id_number %>&category=<%=category %>&curPage=<%=curPage+1%>" >下一页</a>
<a href = "admin_booklist.jsp?id_number=<%=id_number %>&category=<%=category %>&curPage=<%=pageCount%>" >尾页</a>
第<%=curPage%>页/共<%=pageCount%>页</p>
<div id="main">
</div>
<div id="footer">
		<i>Designed by 20177720756熊翊豪.</i>
		<footer>&copy;&nbsp;&nbsp;&nbsp;&nbsp;郑州市金水区文化路97号郑州大学北校区</footer>
</div>
</body>
</html>