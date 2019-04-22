<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>图书管理系统-更新图书</title>
<link type="text/css" rel="stylesheet" href="css/main.css">
</head>
<jsp:useBean id="conn" class="zzu.DBConnection"></jsp:useBean>
<body>
<%request.setCharacterEncoding("utf-8");
int id_number=Integer.parseInt(request.getParameter("id_number"));
int std_number=Integer.parseInt(request.getParameter("std_number"));
String q_reader="select * from reader where id_number="+std_number+";";
Statement st=conn.getConnection().createStatement();
ResultSet rs_q_reader=null;
rs_q_reader=st.executeQuery(q_reader);
%>

<div id="main">
<h1>图书管理系统-修改用户</h1>
<form action="update_user_result.jsp?id_number=<%=id_number %>&std_number=<%=std_number %>" method="post">
<table class="table-1">
<caption>注意：用户名不可更改，如需更改用户名请删除对应用户后重新添加，其他信息请仔细核对后再提交</caption>
<%while(rs_q_reader.next()){
	int Std_number=rs_q_reader.getInt(1);
	String std_pass=rs_q_reader.getString(2);
	String name=rs_q_reader.getString(3);
	String sex=rs_q_reader.getString(4);
	String department=rs_q_reader.getString(5);
	String major=rs_q_reader.getString(6);%>

<tr><td>用户名：</td><td><%=Std_number %></td></tr>
<tr><td>密码：</td><td><input required="required" type="password" name="password" value="<%=std_pass%>"></td></tr>
<tr><td>姓名：</td><td><input required="required" type="text" name="name"  value="<%=name%>"></td></tr>
<tr><td>性别：</td><td><input type="radio" name="sex" checked="checked" value="男">男&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="sex" value="女">女</td></tr>
<tr><td>院系：</td><td><input required="required" type="text" name="department" value="<%=department%>"></td></tr>
<tr><td>专业：</td><td><input required="required" type="text" name="major" value="<%=major%>"></td></tr>
<tr><td><input type="reset" value="重置"><td><input type="submit" value="提交"></td></tr>
<% }
%>
</table>
<% rs_q_reader.close();
st.getConnection().close();
%>
</form>
</div>
<div id="footer">
		<i>Designed by 20177720756熊翊豪.</i>
		<footer>&copy;&nbsp;&nbsp;&nbsp;&nbsp;郑州市金水区文化路97号郑州大学北校区</footer>
</div>
</body>
</html>