import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/Login")
public class Login extends HttpServlet{
	
	public void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException {
			
		try {
			PrintWriter out=res.getWriter();
			String user=req.getParameter("uname");
			String pass=req.getParameter("pass");
			String option=req.getParameter("option");
			//System.out.println(user+ " " + pass);
			MyConnect db=new MyConnect();
			Connection con=db.getCon();
			if(option.equals("stu")) 
			{
				String sql="select * from SRegister where SID=? and Password=?";
				PreparedStatement ps=con.prepareStatement(sql);
				ps.setString(1, user);
				ps.setString(2, pass);
				ResultSet rs=ps.executeQuery();
			
				if(rs.next()) 
				{
					HttpSession session=req.getSession();
					session.setAttribute("sid", user);
					//System.out.println(rs.getString(2));
					//session.setAttribute("pass", rs.getString("Password"));
					//ServletContext cnxt=getServletContext();
					//RequestDispatcher disp=cnxt.getRequestDispatcher("/stu.jsp");
					//disp.forward(req, res);
				    res.sendRedirect("stu.jsp");
				}
				else {
					res.sendRedirect("login.jsp");
					out.println("Invalid username and password");
				}
			}
			
			if(option.equals("adm"))	
			{
				String sql="select * from ADMIN where ID=? and Password=?";
				PreparedStatement ps=con.prepareStatement(sql);
				ps.setString(1, user);
				ps.setString(2, pass);
				ResultSet rs=ps.executeQuery();
			
				if(rs.next()) 
				{
					HttpSession session=req.getSession();
					session.setAttribute("id", user);
				    res.sendRedirect("admin.jsp");
				}
				else {
					res.sendRedirect("login.jsp");
					out.println("Invalid username and password");
				}				
			}
			if(option.equals("com"))
			{
				String sql="select * from Cregister where CID=? and Password=?";
				PreparedStatement ps=con.prepareStatement(sql);
				ps.setString(1, user);
				ps.setString(2, pass);
				ResultSet rs=ps.executeQuery();
			
				if(rs.next()) 
				{
					HttpSession session=req.getSession();
					session.setAttribute("cid", user);
				    res.sendRedirect("company.jsp");
				}
				else {
					out.println("Invalid username and password");
				}
			
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
}
   
}
