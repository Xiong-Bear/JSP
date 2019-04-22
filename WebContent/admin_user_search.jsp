<%@page import="zzu.DBConnection"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>图书管理系统—检索用户</title>
<link type="text/css" rel="stylesheet" href="css/main.css">
</head>
<body>
<jsp:useBean id="conn" class="zzu.DBConnection"></jsp:useBean>
<h1>图书管理系统—检索用户</h1>
<%
request.setCharacterEncoding("utf-8");
int id_number=Integer.parseInt(request.getParameter("id_number"));
//int ID=Integer.parseInt((String)request.getAttribute("id_number"));
String search=request.getParameter("search");
String sql2=null;
Statement st=conn.getConnection().createStatement();
ResultSet rs2=null;
sql2="select * from reader where  id_number like '%"+search+"%' or name like '%"+search+"%' or department like '%"+search+"%' or major like '%"+search+"%' ;";
//sql4="select * from borrow where name like '%"+search+"%' or book_name like '%"+search+"%' ;";
 rs2=st.executeQuery(sql2);
final int pagesize=20;
int pageCount=0;
int curPage=1;
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

<%rs2.previous();
rs2.previous();
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
	rs2.previous();
	while(rs2.next()) {
		if(count>=pagesize)
			break;
		int std_number=rs2.getInt(1);
		String std_pass=rs2.getString(2);
		String name=rs2.getString(3);
		String sex=rs2.getString(4);
		String department=rs2.getString(5);
		String major=rs2.getString(6);
		count++;
	%>
		<tr>
			<td><%=std_number%></td>
			<td><%=std_pass %></td>
			<td><%=name %></td>
			<td><%=sex%></td>
			<td><%=department%></td>
			<td><%=major %></td>
			<td><a href="admin_update_user.jsp?id_number=<%=id_number %>&std_number=<%=std_number%>">修改</a></td>
			<td><a href="admin_delete_user.jsp?id_number=<%=id_number %>&std_number=<%=std_number%>">删除</a></td>
	</tr>
	<%}%>
	</table>
	
<a href = "admin_user_search.jsp?id_number=<%=id_number %>&curPage=1" >首页</a>
<a href = "admin_user_search.jsp?id_number=<%=id_number %>&curPage=<%=curPage-1%>" >上一页</a>
<a href = "admin_user_search.jsp?id_number=<%=id_number %>&curPage=<%=curPage+1%>" >下一页</a>
<a href = "admin_user_saerch.jsp?id_number=<%=id_number %>&curPage=<%=pageCount%>" >尾页</a>
第<%=curPage%>页/共<%=pageCount%>页
	
<% 
rs2.close();
conn.getConnection().close();
}else {%>
<h2><font color="red"> <%=search %> </font>无用户查询记录</h2>
<% }%>
<div id="footer">
		<i>Designed by 20177720756熊翊豪.</i>
		<footer>&copy;&nbsp;&nbsp;&nbsp;&nbsp;郑州市金水区文化路97号郑州大学北校区</footer>
</div>
</body>
</html>