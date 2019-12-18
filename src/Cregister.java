import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/Cregister")
public class Cregister extends HttpServlet
{
      public void doPost(HttpServletRequest req,HttpServletResponse res) 
      {
    	 
    	  try {
    		  	PrintWriter  out=res.getWriter();
    		  	String cid=req.getParameter("cid");
    		  	String uname=req.getParameter("uname");
    		  	String pass=req.getParameter("pass");
    		  	String web=req.getParameter("web");
    		  	String email=req.getParameter("email");
    		  	String mob=req.getParameter("mob");
    		  	String add=req.getParameter("add");
    		  	
    		  	
    		    long phone=Long.parseLong(mob);
    		  	MyConnect db=new MyConnect();
    		  	Connection con=db.getCon();
		        String sql="insert into CRegister values(?,?,?,?,?,?,?,?)";    		  
    		    PreparedStatement ps=con.prepareStatement(sql);
    		    ps.setString(1, cid);
    		    ps.setString(2,uname);
    		    ps.setString(3,pass);
    		    ps.setString(4,web);
    		    ps.setString(5,email);
    		    ps.setLong(6,phone);
    		    ps.setString(7,add);
    		    ps.setInt(8, 0);
    		    ps.executeUpdate();
    		   // out.println("Succesfuly inserted"); 
    		    HttpSession session=req.getSession();
    		    session.setAttribute("msg", "Succesfuly inserted");
    		    res.sendRedirect("Cregister.jsp");
    		   
    	  		}
    	  catch(Exception e)
    	  {
		    e.printStackTrace();
    	  }
      }
}