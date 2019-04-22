<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
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
//String mark=request.getParameter("mark");
int id_number=Integer.parseInt(request.getParameter("id_number"));
int std_number=Integer.parseInt(request.getParameter("std_number"));
int isbn=Integer.parseInt(request.getParameter("isbn"));
String borrow_date=request.getParameter("borrow_date");
int count=0;
%>
<title>图书管理系统-还书反馈</title>
<meta http-equiv="refresh" content ="3;url=admin_borrow.jsp?id_number=<%=id_number%>">
</head>
<body>
<jsp:useBean id="conn" class="zzu.DBConnection"></jsp:useBean>
<div id="main">
<h1>图书管理系统-管理图书反馈</h1>
<% //int issn=Integer.parseInt(request.getParameter("issn"));
Date date = new Date();//获得系统时间. 
SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
String nowTime = sdf.format(date);//将时间格式转换成符合Timestamp要求的格式. 
Timestamp dates =Timestamp.valueOf(nowTime);//把时间转换


Statement st=conn.getConnection().createStatement();
String q_isbn=null;
String u_book=null;
String u_back=null;
ResultSet rs_isbn=null;
ResultSet rs_id=null;
int rs_u_book=0;
int rs_u_back=0;
q_isbn="select count from book where isbn="+isbn+";";
rs_isbn=st.executeQuery(q_isbn);
while(rs_isbn.next()){
count=rs_isbn.getInt(1);
}

//if(mark=="back"){
u_book="update book set count="+(count+1)+" where isbn="+isbn+";";
rs_u_book=st.executeUpdate(u_book);
u_back="update borrow set back_time ='"+dates+"'where id_number="+std_number+" and book_isbn="+isbn+" and borrow_time='"+borrow_date+"';";

rs_u_back=st.executeUpdate(u_back);
if(rs_u_book!=0 && rs_u_back!=0){%>
<h1>操作成功！</h1>
<h1><span id="sp">5</span>秒钟后自动跳转到管理借阅记录页面！！！</h1>
<h1>如果没有跳转，请点击<a href="admin_borrow.jsp?id_number=<%=id_number %>">这里</a></h1>
<%
rs_isbn.close();
conn.getConnection().close();
}else {%>
	<h1><font color="red">操作失败！请稍后重试</font></h1>
<h1><span id="sp">5</span>秒钟后自动跳转到管理借阅记录页面！！！</h1>
<h1>如果没有跳转，请点击<a href="admin_boorow.jsp?id_number=<%=id_number %>">这里</a></h1>
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