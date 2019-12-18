//import java.beans.Statement;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/Sregister")
public class Sregister extends HttpServlet
{
      public void doPost(HttpServletRequest req,HttpServletResponse res) 
      {
    	  
    	  try {
    		    System.out.println("java");
    		  	PrintWriter  out=res.getWriter();
    		  	String sid=req.getParameter("sid");
    		  	String uname=req.getParameter("uname");
    		  	String email=req.getParameter("email");
    		  	MyConnect db=new MyConnect();
    		  	Connection con=db.getCon();
    		    Statement s=con.createStatement();
 		        ResultSet rs=s.executeQuery("select email from SRegister");
 		        while(rs.next()) 
 		        {
 		        	if(email.equals(rs.getString("Email"))) {
 		        		out.println("already exist");
 		        		res.sendRedirect("Sregister.jsp");
 		        	 
 		        	}
 		        	
 		        }
    		  	String pass=req.getParameter("pass");
    		  	String mob=req.getParameter("mob");
    		  	String gen=req.getParameter("gen");
    		  	String cor=req.getParameter("course");
    		  	String perc=req.getParameter("marks");
    		  	
    		    long phone=Long.parseLong(mob);
    		  //  System.out.println(perc);
    		    float perce=Float.parseFloat(perc);
    		    	
		        String sql="insert into SRegister values(?,?,?,?,?,?,?,?)";    		  
    		    PreparedStatement ps=con.prepareStatement(sql);
    		    ps.setString(1, sid);
    		    ps.setString(2,uname);
    		    ps.setString(3,email);
    		    ps.setString(4,pass);
    		    ps.setLong(5,phone);
    		    ps.setString(6,gen);
    		    ps.setString(7,cor);	
    		    ps.setFloat(8,perce);
    		    ps.executeUpdate();
    		    HttpSession session=req.getSession();
    		    session.setAttribute("msg", "Succesfuly inserted");
    		    res.sendRedirect("Sregister.jsp");
    		    //out.println(); 
    	  		}
    	  catch(Exception e)
    	  {
		    e.printStackTrace();
    	  }
      }
}