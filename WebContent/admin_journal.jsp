<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>图书管理系统—期刊</title>
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
sql="select * from journal;";
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
<h1>图书管理系统—期刊</h1>
<div id="nav">
<span><a href="admin_journal.jsp?id_number=<%=id_number %>">全部</a></span>
	<span><a href="admin_journallist.jsp?category=<%="文学" %>&id_number=<%=id_number %>">文学</a></span>
	<span><a href="admin_journallist.jsp?category=<%="自动化、计算机技术" %>&id_number=<%=id_number %>">自动化、计算机技术</a></span>
	<span><a href="admin_journallist.jsp?category=<%="社会学" %>&id_number=<%=id_number %>">社会学</a></span>
	<span><a href="admin_journallist.jsp?category=<%="历史学" %>&id_number=<%=id_number %>">历史学</a></span>
	<span><a href="admin_journallist.jsp?category=<%="经济学" %>&id_number=<%=id_number %>">经济学</a></span>
	<span><a href="admin_journallist.jsp?category=<%="统计学" %>&id_number=<%=id_number %>">统计学</a></span>
	<span><a href="admin_journallist.jsp?category=<%="数学" %>&id_number=<%=id_number %>">数学</a></span>
	<span><a href="admin_journallist.jsp?category=<%="管理学" %>&id_number=<%=id_number %>">管理学</a></span>
	<span><a href="admin_journallist.jsp?category=<%="图书馆、情报与文献学" %>&id_number=<%=id_number %>">图书馆、情报与文献学</a></span>
	<span><a href="admin_journallist.jsp?category=<%="环境科学" %>&id_number=<%=id_number %>">环境科学</a></span>
	<span><a href="admin_journallist.jsp?category=<%="艺术学" %>&id_number=<%=id_number %>">艺术学</a></span>
	<span><a href="admin_journallist.jsp?category=<%="马克思主义理论" %>&id_number=<%=id_number %>">马克思主义理论</a></span>
	
</div>
<div id="main">


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

<%rs.previous();
while(rs.next()) {
	if(count>=pagesize)
		break;
int issn=rs.getInt(1);
String name=rs.getString(2);
int issue_number=rs.getInt(3);
String organizer=rs.getString(4);
String category=rs.getString(5);
count++;
%>
<tr>
	<td><%=issn%></td>
	<td><%=name %></td>
	<td><%=issue_number %></td>
	<td><%=organizer%></td>
	<td><%=category%></td>
	<td><a href="admin_update_journal.jsp?&issn=<%=issn %>&id_number=<%=id_number %>">修改</a></td>
	<td><a href="admin_delete_journal.jsp?&issn=<%=issn %>&id_number=<%=id_number %>">删除</a></td>
</tr>
<%}%>
</table>

<%
rs.close();
conn.getConnection().close();
%>

<a href = "admin_journal.jsp?id_number=<%=id_number %>&curPage=1" >首页</a>
<a href = "admin_journal.jsp?id_number=<%=id_number %>&curPage=<%=curPage-1%>" >上一页</a>
<a href = "admin_journal.jsp?id_number=<%=id_number %>&curPage=<%=curPage+1%>" >下一页</a>
<a href = "admin_journal.jsp?id_number=<%=id_number %>&curPage=<%=pageCount%>" >尾页</a>
第<%=curPage%>页/共<%=pageCount%>页

</div>
<div id="footer">
		<i>Designed by 20177720756熊翊豪.</i>
		<footer>&copy;&nbsp;&nbsp;&nbsp;&nbsp;郑州市金水区文化路97号郑州大学北校区</footer>
</div>
</body>
</html>