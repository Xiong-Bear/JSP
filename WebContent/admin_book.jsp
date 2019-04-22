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
<jsp:useBean id="conn" class="zzu.DBConnection"></jsp:useBean>
<%
request.setCharacterEncoding("utf-8");
int id_number=Integer.parseInt(request.getParameter("id_number"));
String categorty=request.getParameter("category");
String sql=null;
Statement st=conn.getConnection().createStatement();
ResultSet rs=null;
final int pagesize=20;
int pageCount=0;
int curPage=1;
sql="select * from book;";
rs=st.executeQuery(sql);
rs.last();
int size=rs.getRow();
pageCount=(size%pagesize==0)?(size/pagesize):(size/pagesize+1);
String temp=request.getParameter("curPage");
if(temp==null)
	temp="1";

curPage=Integer.parseInt(temp);
if(curPage>=pageCount)
	curPage=pageCount;

boolean flag=rs.absolute((curPage-1)*pagesize+1);
//out.print(curPage);
int count=0;
%>
<h1>图书管理系统—图书</h1>
<div id="nav">
	<span><a class="nav" href="admin_book.jsp?category=<%="*" %>&id_number=<%=id_number %>">全部</a></span>
	<span><a class="nav" href="admin_booklist.jsp?category=<%="文学" %>&id_number=<%=id_number %>">文学</a></span>
	<span><a class="nav" href="admin_booklist.jsp?category=<%="侦探推理" %>&id_number=<%=id_number %>">侦探推理</a></span>
	<span><a class="nav" href="admin_booklist.jsp?category=<%="社科" %>&id_number=<%=id_number %>">社会科学</a></span>
	<span><a class="nav" href="admin_booklist.jsp?category=<%="科幻" %>&id_number=<%=id_number %>">科幻</a></span>
	<span><a class="nav" href="admin_booklist.jsp?category=<%="非虚构" %>&id_number=<%=id_number %>">非虚构</a></span>
	<span><a class="nav" href="admin_booklist.jsp?category=<%="历史" %>&id_number=<%=id_number %>">历史</a></span>
	<span><a class="nav" href="admin_booklist.jsp?category=<%="计算机" %>&id_number=<%=id_number %>">计算机</a></span>
	<span><a class="nav" href="admin_booklist.jsp?category=<%="青春" %>&id_number=<%=id_number %>">青春</a></span>
	<span><a class="nav" href="admin_booklist.jsp?category=<%="经济" %>&id_number=<%=id_number %>">经济</a></span>
	<span><a class="nav" href="admin_booklist.jsp?category=<%="科学" %>&id_number=<%=id_number %>">科学</a></span>
	<span><a class="nav" href="admin_booklist.jsp?category=<%="随笔" %>&id_number=<%=id_number %>">随笔</a></span>
</div>
<div id="main">


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

<%rs.previous();
while(rs.next()) {
	if(count>=pagesize)
		break;
int isbn=rs.getInt(1);
String name=rs.getString(2);
String writer=rs.getString(3);
String publisher=rs.getString(4);
String category=rs.getString(5);
int quantity=rs.getInt(6);
count++;
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

<%
rs.close();
conn.getConnection().close();
%>

<a href = "admin_book.jsp?id_number=<%=id_number %>&curPage=1" >首页</a>
<a href = "admin_book.jsp?id_number=<%=id_number %>&curPage=<%=curPage-1%>" >上一页</a>
<a href = "admin_book.jsp?id_number=<%=id_number %>&curPage=<%=curPage+1%>" >下一页</a>
<a href = "admin_book.jsp?id_number=<%=id_number %>&curPage=<%=pageCount%>" >尾页</a>
第<%=curPage%>页/共<%=pageCount%>页

</div>
<div id="footer">
		<i>Designed by Xiong-Bear.</i>
		<footer>&copy;&nbsp;&nbsp;&nbsp;&nbsp;郑州市金水区文化路97号郑州大学北校区</footer>
</div>
</body>
</html>