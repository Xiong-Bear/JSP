<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>图书管理系统—期刊文献</title>
<link type="text/css" rel="stylesheet" href="css/main.css">
</head>
<body>
<h1>图书管理系统—期刊文献</h1>
<div id="nav">
	<span><a href="journal.jsp">全部</a></span>
	<span><a href="journallist.jsp?category=<%="文学" %>">文学</a></span>
	<span><a href="journallist.jsp?category=<%="自动化、计算机技术" %>">自动化、计算机技术</a></span>
	<span><a href="journallist.jsp?category=<%="社会学" %>">社会学</a></span>
	<span><a href="journallist.jsp?category=<%="历史学" %>">历史学</a></span>
	<span><a href="journallist.jsp?category=<%="经济学" %>">经济学</a></span>
	<span><a href="journallist.jsp?category=<%="统计学" %>">统计学</a></span>
	<span><a href="journallist.jsp?category=<%="数学" %>">数学</a></span>
	<span><a href="journallist.jsp?category=<%="管理学" %>">管理学</a></span>
	<span><a href="journallist.jsp?category=<%="图书馆、情报与文献学" %>">图书馆、情报与文献学</a></span>
	<span><a href="journallist.jsp?category=<%="环境科学" %>">环境科学</a></span>
	<span><a href="journallist.jsp?category=<%="艺术学" %>">艺术学</a></span>
	<span><a href="journallist.jsp?category=<%="马克思主义理论" %>">马克思主义理论</a></span>
	
</div>
<div id="main">

<jsp:useBean id="conn" class="zzu.DBConnection"></jsp:useBean>
<%
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
<table class="table-1">
<caption id="caption">期刊仅支持馆内借阅，不可外借，电子版请查看<a href="http://sodi.zzu.superlib.net/" target="_blank">郑州大学搜递系统</a></caption>
		<tr>
			<td>期刊号</td>
			<td>期刊名</td>
			<td>卷号</td>
			<td>组织单位</td>
		</tr>

	<%rs.previous();
	rs.previous();
	while(rs.next()) {
		if(count>=pagesize)
		break;
		int issn=rs.getInt(1);
		String name=rs.getString(2);
		int issue_number=rs.getInt(3);
		String organizer=rs.getString(4);
		count++;
	%>
		<tr>
			<td><%=issn%></td>
			<td><%=name %></td>
			<td><%=issue_number %></td>
			<td><%=organizer%></td>
	</tr>
	<%}%>
	</table>
<a href = "journal.jsp?curPage=1" >首页</a>
<a href = "journal.jsp?curPage=<%=curPage-1%>" >上一页</a>
<a href = "journal.jsp?curPage=<%=curPage+1%>" >下一页</a>
<a href = "journal.jsp?curPage=<%=pageCount%>" >尾页</a>
第<%=curPage%>页/共<%=pageCount%>页
</div>
<div id="footer">
		<i>Designed by Xiong-Bear.</i>
		<footer>&copy;&nbsp;&nbsp;&nbsp;&nbsp;郑州市金水区文化路97号郑州大学北校区</footer>
</div>
</body>
</html>