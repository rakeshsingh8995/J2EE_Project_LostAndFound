package org.btm.lostandfound;

import java.io.*;
import java.sql.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.sql.rowset.serial.SerialBlob;

public class MyConnection extends HttpServlet {
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String item=req.getParameter("it");
		String loc=req.getParameter("lc");
		String ldate=req.getParameter("ld");
		String descp=req.getParameter("de");
		String title=req.getParameter("t");
		String fname=req.getParameter("fn");
		String lname=req.getParameter("ln");
		String email=req.getParameter("email_id");
		String phone=req.getParameter("mobileno");

		String myloc=req.getParameter("myimg");
		PrintWriter out=resp.getWriter();
		out.println("<html><body bgcolor=#e6fff9>"
				+ "<h1>Your information has been submitted "+"</h1>"
						+"</body></html>");
		out.flush();
		out.close();
		
		Connection con=null;
		PreparedStatement pstmt=null;
		FileInputStream fis=null;
		String qry="insert into btm.emp values(?,?,?,?,?,?,?,?,?,?)";
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306?user=root&password=rakesh");
			File image=new File(myloc);
			pstmt=con.prepareStatement(qry);
			pstmt.setString(1,item);
			pstmt.setString(2,loc);
			pstmt.setString(3,ldate);
			pstmt.setString(4,descp);
			pstmt.setString(5,title);
			pstmt.setString(6,fname);
			pstmt.setString(7,lname);
			pstmt.setString(8,email);
			pstmt.setString(9,phone);
			
			fis=new FileInputStream(image);
			pstmt.setBinaryStream(10, (InputStream) fis, (int) (image.length()));
			
			pstmt.executeUpdate();
		} catch (ClassNotFoundException |SQLException e) {
			e.printStackTrace();
		}
		finally
		{
			if(pstmt!=null) 
			{
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if(con!=null) {
				try {
					con.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
	}
}
