import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/Contact")
public class Contact extends HttpServlet
{
      public void doPost(HttpServletRequest req,HttpServletResponse res) 
      {
    	  
    	  try {
    		  	PrintWriter  out=res.getWriter();
    		  	String uname=req.getParameter("uname");
    		  	String email=req.getParameter("email");
    		  	String mob=req.getParameter("mob");
    		  	String msg=req.getParameter("msg");
    		  	
    		  	
    		    long phone=Long.parseLong(mob);
    		    
    		  	
    		  	MyConnect db=new MyConnect();
    		  	Connection con=db.getCon();
		        String sql="insert into contact values(?,?,?,?)";    		  
    		    PreparedStatement ps=con.prepareStatement(sql);
    		    ps.setString(1,uname);
    		    ps.setString(2,email);
    		    ps.setLong(3,phone);
    		    ps.setString(4,msg);
    		   
    		    ps.executeUpdate();
    		    HttpSession session=req.getSession();
    		    session.setAttribute("msg", "Successfully sent");
    		    res.sendRedirect("contact.jsp");
    	  		}
    	  catch(Exception e)
    	  {
		    e.printStackTrace();
    	  }
      }
}