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

public class ResetPassFilter implements Filter{

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
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		PrintWriter out=response.getWriter();
		int number=0;
		String name=null;
		String pass=null;
		String repass=null;
		try {
			number=Integer.parseInt(request.getParameter("usernumber"));
			name=request.getParameter("name");
			pass=request.getParameter("pass");
			repass=request.getParameter("repass");
		} catch (NumberFormatException e) {
			request.setAttribute("message", "用户名不能为空！");
			request.getRequestDispatcher("/resetpass.jsp").forward(request, response);
			return;
		}
		if(number<=0 && name==null && pass==null && repass==null && pass!=repass){
			request.setAttribute("message", "密码不能为空且密码必须一致！");
			request.getRequestDispatcher("/resetpass.jsp").forward(request, response);
			return;
		}else{
			DBConnection connection=new DBConnection();
			String sql1="update reader set password='"+pass+"' where id_number="+number+" and name=+'"+name+"'";
			String sql2="select * from reader where id_number="+number+" and name=+'"+name+"';";
			Statement st=null;
			int rs1=0;
			ResultSet rs2=null;
			try {
				st = connection.getConnection().createStatement();
			} catch (SQLException e) {
				out.print("SQL异常");
			}
			
			try {
				rs1 = st.executeUpdate(sql1);
			} catch (SQLException e) {
				out.print("SQL异常");
			}

			try {
				rs2 = st.executeQuery(sql2);
			} catch (SQLException e) {
				out.print("SQL异常");
			}
				try {
					if(rs1==1 && rs2.next()){
						out.print("<h1>修改成功！</h1>");
					}else {
						out.print("<h1>修改失败！</h1>");
					}
				} catch (SQLException e) {
					out.print("SQL异常");
				}
				try {
					st.close();
				} catch (SQLException e) {
					out.print("SQL异常");
				}
				try {
					connection.getConnection().close();
				} catch (SQLException e) {
					out.print("SQL异常");
				}
		}
		
		chain.doFilter(request, response);
		
	}

}
