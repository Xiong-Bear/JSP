package zzu;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class AdminLoginFilter implements Filter{

	@Override
	public void destroy() {
		Filter.super.destroy();
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		Filter.super.init(filterConfig);
	}

		
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		PrintWriter out=null;
		int name=0;
		String pass=null;
		//String identity=request.getParameter("identity");
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		out=response.getWriter();
		try {
			name=Integer.parseInt(request.getParameter("usernumber"));
		} catch (NumberFormatException e) {
			request.setAttribute("message", "用户名不能为空！");
			request.getRequestDispatcher("/admin_login.jsp").forward(request, response);
			return;
		}
		
		pass=request.getParameter("password");
		if (pass==null) {
			request.setAttribute("message", "密码不能为空！");
			request.getRequestDispatcher("/admin_login.jsp").forward(request, response);
			return;
		}
		
		if (name<=0 && pass.trim().equals(null)) {
			request.setAttribute("message", "用户名或密码不合法！");
			request.getRequestDispatcher("/admin_login.jsp").forward(request, response);
			return;
		}else {
			//if(identity=="管理员") {
				DBConnection connection=new DBConnection();
				String sql="select * from administrator where id_number="+name+" and password='"+pass+"';";
				Statement st=null;
				try {
					st = connection.getConnection().createStatement();
				} catch (SQLException e) {
					out.print("SQL异常");
				}
				ResultSet rs = null;
				try {
					rs = st.executeQuery(sql);
				} catch (SQLException e) {
					out.print("SQL异常");
				}
		
				try {
					if(rs.next()){
						out.print("<p id="+"login"+">你好,管理员:"+"<font>"+rs.getString(3)+"</font>，欢迎登录图书管理系统！</p>");
					}else {
						request.setAttribute("message", "用户名或密码不合法！");
						request.getRequestDispatcher("/admin_login.jsp").forward(request, response);
						return;
						}
				} catch (SQLException e) {
					out.print("SQL异常");
				}
				try {
					connection.getConnection().close();
				} catch (SQLException e) {	
					out.print("SQL异常");
				}
		}
	//	}
		chain.doFilter(request, response);
	}


}

