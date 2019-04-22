<%@page import="zzu.DBConnection"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link type="text/css" rel="stylesheet" href="css/result.css">
<title>图书管理系统—改密反馈</title>
<meta http-equiv="refresh" content ="3;url=login.jsp">
</head>
<body >
<jsp:useBean id="conn" class="zzu.DBConnection"></jsp:useBean>
<h1>图书管理系统—改密反馈</h1>
<%
request.setCharacterEncoding("utf-8");
int number=Integer.parseInt(request.getParameter("usernumber"));
String name=request.getParameter("name");
String pass=request.getParameter("pass");
String repass=request.getParameter("repass");

if(number<=0 && name==null && pass==null && repass==null && pass!=repass){
	out.print("请输入合法参数");%>
	<a href="resetpass.jsp">返回重置密码</a>;
<%}else{
	String sql1="update reader set password='"+pass+"' where id_number="+number+" and name=+'"+name+"'";
	String sql2="select * from reader where id_number="+number+" and name=+'"+name+"';";
	Statement st=conn.getConnection().createStatement();
	int rs1=st.executeUpdate(sql1);
	ResultSet rs2=st.executeQuery(sql2);
		if(rs1==1 && rs2.next()){%>
		<h1>修改成功！</h1>
			<h1><span id="sp">3</span>秒钟后自动跳转到登录页面！！！</h1>
			<h1>如果没有跳转，请点击<a href="login.jsp">这里</a></h1>
		<%
		st.close();
		conn.getConnection().close();
		}else {%>
		<h1>修改失败！</h1>
		<h1><span id="sp">3</span>秒钟后自动跳转到登录页面！！！</h1>
			<h1>如果没有跳转，请点击<a href="login.jsp">这里</a></h1>
			<%}
}%>
<div id="footer">
		<i>Designed by 20177720756熊翊豪.</i>
		<footer>&copy;&nbsp;&nbsp;&nbsp;&nbsp;郑州市金水区文化路97号郑州大学北校区</footer>
</div>
</body>

<br><script type="text/javascript">
    // 页面一加载完成，该方法就会执行
    // 读秒，一秒钟数字改变一次
    var x = 3;
    function run(){
        // 获取到的是span标签的对象
        var span = document.getElementById("sp");
        // 获取span标签中间的文本
        span.innerHTML = x;
        x--;
        // 再让run方法执行呢，一秒钟执行一次
        window.setTimeout("run()", 1000);
    }
     
</script><br>
</html>