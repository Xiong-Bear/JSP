<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>图书管理系统-更新期刊</title>
<link type="text/css" rel="stylesheet" href="css/main.css">
</head>
<jsp:useBean id="conn" class="zzu.DBConnection"></jsp:useBean>
<body>
<%request.setCharacterEncoding("utf-8");
int id_number=Integer.parseInt(request.getParameter("id_number"));
int issn=Integer.parseInt(request.getParameter("issn"));
String q_journal="select * from journal where issn="+issn+";";
Statement st=conn.getConnection().createStatement();
ResultSet rs_q_journal=null;
rs_q_journal=st.executeQuery(q_journal);
%>

<div id="main">
<h1>图书管理系统-修改期刊</h1>
<form action="update_journal_result.jsp?id_number=<%=id_number %>&issn=<%=issn %>" method="post">
<table class="table-1">
<caption>注意：期刊号不可更改，如需更改期刊号请删除对应期刊后重新添加，其他信息请仔细核对后再提交</caption>
<%while(rs_q_journal.next()){
	int Issn=rs_q_journal.getInt(1);
	String name=rs_q_journal.getString(2);
	int issue_number=rs_q_journal.getInt(3);
	String organizer=rs_q_journal.getString(4);
	String cate=rs_q_journal.getString(5);%>	
	

<tr><td>期刊号：</td><td><%=Issn %></td></tr>
<tr><td>期刊名：</td><td><input required="required" type="text" name="name" value=<%=name %>></td></tr>
<tr><td>卷号：</td><td><input required="required" type="text" name="issue_number" value=<%=issue_number %>></td></tr>
<tr><td>组织单位：</td><td><input required="required" type="text" name="organizer" value=<%=organizer %>></td></tr>
<tr><td>类别：</td><td><input type="text" name="category" value=<%=cate %>></td></tr>
<tr><td><input type="reset" value="重置"></td><td><input type="submit" value="提交"></td></tr>
<% }
%>
</table>
<% rs_q_journal.close();
st.getConnection().close();
%>

</form>
</div>
<div id="footer">
		<i>Designed by Xiong-Bear.</i>
		<footer>&copy;&nbsp;&nbsp;&nbsp;&nbsp;郑州市金水区文化路97号郑州大学北校区</footer>
</div>
</body>
</html>