<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link type="text/css" rel="stylesheet" href="css/result.css">
<%
request.setCharacterEncoding("utf-8");
int id_number=Integer.parseInt(request.getParameter("id_number"));
int isbn=Integer.parseInt(request.getParameter("isbn"));
int count=Integer.parseInt(request.getParameter("count"));
%>
<title>图书管理系统-借阅反馈</title>
<meta http-equiv="refresh" content ="5;url=book.jsp?id_number=<%=id_number%>">
</head>
<body>
<jsp:useBean id="conn" class="zzu.DBConnection"></jsp:useBean>
<h1>图书管理系统-借阅反馈</h1>
<div id="main">
<% //int issn=Integer.parseInt(request.getParameter("issn"));
Date date = new Date();//获得系统时间. 
SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
String nowTime = sdf.format(date);//将时间格式转换成符合Timestamp要求的格式. 
Timestamp dates =Timestamp.valueOf(nowTime);//把时间转换

Statement st=conn.getConnection().createStatement();
String q_isbn=null;
String q_id_number=null;
String u_book=null;
String u_borrow=null;
ResultSet rs_isbn=null;
ResultSet rs_id=null;
int rs_u_book=0;
int rs_u_borrow=0;
q_id_number="select name from reader where id_number="+id_number+";";
q_isbn="select name from book where isbn="+isbn+";";
rs_id=st.executeQuery(q_id_number);
String id_name=null;
while(rs_id.next()){
id_name=rs_id.getString(1);
}
rs_isbn=st.executeQuery(q_isbn);
String isbn_name=null;
while(rs_isbn.next()){
isbn_name=rs_isbn.getString(1);
}
u_book="update book set count="+(count-1)+" where isbn="+isbn+";";
rs_u_book=st.executeUpdate(u_book);
u_borrow="insert into borrow values("+id_number+",'"+id_name+"','"+isbn_name+"',"+isbn+",'"+nowTime+"',"+null+");";
rs_u_borrow=st.executeUpdate(u_borrow);

if(rs_u_book!=0 && rs_u_borrow!=0){%>

<h1>操作成功！</h1>
<h1><span id="sp">5</span>秒钟后自动跳转到图书分类页面！！！</h1>
<h1>具体借阅情况请进入借阅记录页面查询</h1>
<h1>如果没有跳转，请点击<a href="book.jsp?id_number=<%=id_number %>">这里</a></h1>
<%
rs_id.close();
rs_isbn.close();
conn.getConnection().close();
}else {%>
	<h1><font color="red">操作失败！请联系及时管理员</font></h1>
<h1><span id="sp">5</span>秒钟后自动跳转到图书分类页面！！！</h1>
<h1>如果没有跳转，请点击<a href="book.jsp?id_number=<%=id_number %>">这里</a></h1>
<%}%>
</div>
<div id="footer">
		<i>Designed by 20177720756熊翊豪.</i>
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