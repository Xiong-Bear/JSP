
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link type="text/css" rel="stylesheet" href="css/result.css">
<meta charset="UTF-8">
<%
request.setCharacterEncoding("utf-8");
int id_number=Integer.parseInt(request.getParameter("id_number"));
int isbn=Integer.parseInt(request.getParameter("isbn"));
%>
<title>图书管理系统-删除图书反馈</title>
<meta http-equiv="refresh" content ="3;url=admin_book.jsp?id_number=<%=id_number%>">
</head>
<body>
<h1>图书管理系统-删除图书反馈</h1>
<jsp:useBean id="conn" class="zzu.DBConnection"></jsp:useBean>
<div id="main">
<% //int issn=Integer.parseInt(request.getParameter("issn"));

Statement st=conn.getConnection().createStatement();
String d_book=null;
int rs_d_book=0;

d_book="delete from book where isbn="+isbn+";";
rs_d_book=st.executeUpdate(d_book);
if(rs_d_book!=0){%>
<h1>操作成功！</h1>
<h1><span id="sp">5</span>秒钟后自动跳转到管理图书页面！！！</h1>
<h1>如果没有跳转，请点击<a href="admin_book.jsp?id_number=<%=id_number %>">这里</a></h1>
<%
conn.getConnection().close();
}else {%>
	<h1><font color="red">操作失败！请稍后重试</font></h1>
<h1><span id="sp">5</span>秒钟后自动跳转到管理图书页面！！！</h1>
<h1>如果没有跳转，请点击<a href="admin_book.jsp?id_number=<%=id_number %>">这里</a></h1>
<%}%>
</div>
<div id="footer">
		<i>Designed by Xiong-Bear.</i>
		<footer>&copy;&nbsp;&nbsp;&nbsp;&nbsp;郑州市金水区文化路97号郑州大学北校区</footer>
</div>
</body>
<br><script type="text/javascript">
    // 页面一加载完成，该方法就会执行
    // 读秒，一秒钟数字改变一次
    var x = 5;
    function run(){
        // 获取到的是span标签的对象
        var span = document.getElementById("sp");
        // 获取span标签中间的文本
        span.innerHTML = x;
        x--;
        // 再让run方法执行呢，一秒钟执行一次
        window.setTimeout("run()", 1000);
    }
        </script>
</html>