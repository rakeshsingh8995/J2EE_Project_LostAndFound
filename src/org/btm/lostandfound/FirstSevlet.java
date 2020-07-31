package org.btm.lostandfound;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FirstSevlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		String item=req.getParameter("it");
		String loc=req.getParameter("lc");
		String ldate=req.getParameter("ld");

		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs =null;

		String qry="select  *  from btm.emp where item =? and loc=?  and ldate=? ";
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306?user=root&password=rakesh");
			pstmt=con.prepareStatement(qry);
			pstmt.setString(1, item);
			pstmt.setString(2, loc);
			pstmt.setString(3, ldate);
			rs=pstmt.executeQuery();
			if(rs.next())
			{

				String descp=rs.getString(4);
				String title=rs.getString(5);
				String fname=rs.getString(6);
				String lname=rs.getString(7);
				String email=rs.getString(8);
				String phone=rs.getString(9);


				PrintWriter out=resp.getWriter();
				out.println("<html><body bgcolor='yellow'>"
						+ "<h1> Contact Details Are </br> Description: " +descp+"</br> Title: " +title+" </br> Firstname: " +fname+" </br> Lastname: " +lname+" </br> Email: " +email+" </br> Mobile No.: " 
						+phone +" "                           
							+"</h1>"+"</body></html>");


				out.flush();
				out.close();

			}
			else 
			{
				PrintWriter out=resp.getWriter();
				out.println("<html><body bgcolor='yellow'>"
						+ "<h1> No Data Found !!! "                            
							+"</h1>"+"</body></html>");
			}

		} catch (ClassNotFoundException |SQLException e)
		{
			e.printStackTrace();
		}
		finally
		{
			if(rs!=null)  
			{
				try 
				{
					rs.close();
				} catch (SQLException e) 
				{
					e.printStackTrace();
				}
			}
			if(pstmt!=null)  
			{
				try 
				{
					pstmt.close();
				} catch (SQLException e)
				{
					e.printStackTrace();
				}
			}
			if(con!=null)
			{
				try 
				{
					con.close();
				} catch (SQLException e) 
				{
					e.printStackTrace();
				}
			}
		}
	}
}


