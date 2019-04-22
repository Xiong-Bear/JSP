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
int isbn=Integer.parseInt(request.getParameter("isbn"));
String q_book="select * from book where isbn="+isbn+";";
Statement st=conn.getConnection().createStatement();
ResultSet rs_q_book=null;
rs_q_book=st.executeQuery(q_book);
%>

<div id="main">
<h1>图书管理系统-修改图书</h1>
<form action="update_book_result.jsp?id_number=<%=id_number %>&isbn=<%=isbn %>" method="post">
<table class="table-1">
<caption>注意：书号不可更改，如需更改书号请删除对应图书后重新添加，其他信息请仔细核对后再提交</caption>
<%while(rs_q_book.next()){
	int Isbn=rs_q_book.getInt(1);
	String name=rs_q_book.getString(2);
	String writer=rs_q_book.getString(3);
	String publisher=rs_q_book.getString(4);
	String category=rs_q_book.getString(5);
	int quantity=rs_q_book.getInt(6);%>	
	

<tr><td>书号：</td><td><%=Isbn %></td></tr>
<tr><td>书名：</td><td><input required="required" type="text" name="name" value=<%=name %>></td></tr>
<tr><td>作者：</td><td><input required="required" type="text" name="writer" value=<%=writer %>></td></tr>
<tr><td>出版社：</td><td><input required="required" type="text" name="publisher" value=<%=publisher %>></td></tr>
<tr><td>类别：</td><td><input required="required" type="text" name="category" value=<%=category %>></td></tr>
<tr><td>数量：</td><td><input required="required" type="number" name="count" value=<%=quantity %>></td></tr>
<tr><td><input type="reset" value="重置"><td><input type="submit" value="提交"></td></tr>
<% }
%>
</table>
<% rs_q_book.close();
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