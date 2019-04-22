<%@page import="zzu.DBConnection"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>图书管理系统—查询</title>
<link type="text/css" rel="stylesheet" href="css/main.css">
</head>
<body>
<jsp:useBean id="conn" class="zzu.DBConnection"></jsp:useBean>
<h1>图书管理系统—查询</h1>
<%
request.setCharacterEncoding("utf-8");
int id_number=Integer.parseInt(request.getParameter("id_number"));
//int ID=Integer.parseInt((String)request.getAttribute("id_number"));
String search=request.getParameter("search");
String sql1=null;
String sql3=null;
final int pagesize=20;
int pageCount=0;
int curPage=1;
Statement st=conn.getConnection().createStatement();
ResultSet rs1=null;
ResultSet rs3=null;

sql1="select * from book where isbn like '%"+search+"%' or name like '%"+search+"%' or writer like '%"+search+"%' or publisher like '%"+search+"%' or category like '%"+search+"%';";
sql3="select * from journal where issn like '%"+search+"%' or name like '%"+search+"%' or category like '%"+search+"%';";

rs1=st.executeQuery(sql1);



if(rs1.next()){
	/* rs1.last();
	int size=rs1.getRow();
	pageCount=(size%pagesize==0)?(size/pagesize):(size/pagesize+1);
	String temp=request.getParameter("curPage");
	if(temp==null)
		temp="1";

	curPage=Integer.parseInt(temp);
	if(curPage>=pageCount)
		curPage=pageCount;

	boolean flag=rs1.absolute((curPage-1)*pagesize+1);
	//out.print(curPage);
	int count=0;*/
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
		</tr>

	<%//rs1.previous();
	rs1.previous();
	while(rs1.next()) {
		//if(count>=pagesize)
			//break;
		int isbn=rs1.getInt(1);
		String name=rs1.getString(2);
		String writer=rs1.getString(3);
		String publisher=rs1.getString(4);
		String category=rs1.getString(5);
		int quantity=rs1.getInt(6);
		//count++;
	%>
		<tr>
			<td><%=isbn%></td>
			<td><%=name %></td>
			<td><%=writer %></td>
			<td><%=publisher%></td>
			<td><%=category%></td>
			<td><%=quantity %></td>
			<td><a href="borrow_result.jsp?id_number=<%=id_number %>&isbn=<%=isbn %>&count=<%=quantity%>">借阅</a></td>
	</tr>
	<%}%>
	</table>
<!-- <a href = "search.jsp?id_number=<%=id_number %>&curPage=1">首页</a>
<a href = "search.jsp?id_number=<%=id_number %>&curPage=<%=curPage-1%>" >上一页</a>
<a href = "search.jsp?id_number=<%=id_number %>&curPage=<%=curPage+1%>" >下一页</a>
<a href = "search.jsp?id_number=<%=id_number %>&curPage=<%=pageCount%>" >尾页</a>
第<%=curPage%>页/共<%=pageCount%>页  -->
<% }else {%>
<h2><font color="red"> <%=search %> </font>无图书查询记录</h2>
<% }%>

 <%rs3=st.executeQuery(sql3);
 /*rs3.last();
 int size=rs3.getRow();
 pageCount=(size%pagesize==0)?(size/pagesize):(size/pagesize+1);
 String temp=request.getParameter("curPage");
 if(temp==null)
 	temp="1";

 curPage=Integer.parseInt(temp);
 if(curPage>=pageCount)
 	curPage=pageCount;

 boolean flag=rs3.absolute((curPage-1)*pagesize+1);
 //out.print(curPage);
 int count=0; */
if(rs3.next()){%>
<h2>包含<font color="red"> <%=search %> </font>的期刊查询结果如下：</h2>
	<table class="table-1">
	<caption id="caption">期刊仅支持馆内借阅，不可外借，电子版请查看<a href="http://sodi.zzu.superlib.net/">郑州大学搜递系统</a></caption>
		<tr>
			<td>期刊号</td>
			<td>期刊名</td>
			<td>卷号</td>
			<td>组织单位</td>
			<td>类别</td>
		</tr>

	<%rs3.previous();
	while(rs3.next()) {
		int issn=rs3.getInt(1);
		String name=rs3.getString(2);
		int issue_number=rs3.getInt(3);
		String organizer=rs3.getString(4);
		String category=rs3.getString(5);
		//count++;
	%>
		<tr>
			<td><%=issn%></td>
			<td><%=name %></td>
			<td><%=issue_number %></td>
			<td><%=organizer%></td>
			<td><%=category %></td>
	</tr>
	<%}%>
	</table>


<% }else {%>
<h2><font color="red"> <%=search %> </font>无期刊查询记录</h2>
<% }%>
<div id="footer">
		<i>Designed by Xiong-Bear.</i>
		<footer>&copy;&nbsp;&nbsp;&nbsp;&nbsp;郑州市金水区文化路97号郑州大学北校区</footer>
</div>
</body>
</html>