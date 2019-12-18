<%@page import="java.nio.channels.SeekableByteChannel"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>STUDENT LOGIN</title>
<link rel="stylesheet" type="text/css" href="mystyle.css">
<style>
body {
  margin: 0;
  font-family: 'Play', sans-serif;
}

ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  width: 25%;
  background-color: #f1f1f1;
  position: fixed;
  height: 100%;
  overflow: auto;
}

li a {
  display: block;
  color: #000;
  padding: 8px 16px;
  text-decoration: none;
}

li a.active {
  background-color: #4CAF50;
  color: white;
}

li a:hover:not(.active) {
  background-color: #555;
  color: white;
}
</style>

</head>
<body>
    
   <%@ page import="java.sql.*" %>
    <ul>
	<center><img src="addstu.jpg"></<img></center>
	<%
         try
     		 {   
        	 	response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
    	  		if(session.getAttribute("sid")==null)
    	  		{
    	  			response.sendRedirect("login.jsp");
    	  		}
    	  		
   	  	    
   	        	String n1=(String)session.getAttribute("sid");
   	        	//String n2=(String)ses.getAttribute("pass");
   	        	//out.println(n1);    
	     		Class.forName("oracle.jdbc.driver.OracleDriver");
		 		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","Campus","oracle");
		 		Statement s=con.createStatement();
		 		
		 		ResultSet rs=s.executeQuery("select * from SRegister where SID='"+n1+"'");
		 		
		  
		 		while(rs.next())
		         
	        	 { 
		 	  
		     	 out.println("<b>Name</b>  : "+rs.getString("NAME"));
		      	 out.println("<br></br>");
		     	 out.println("<b>Email</b> :"+rs.getString("Email"));
		     	 out.println("<br></br>");
		     	 out.println("<b>Mobile</b> : "+rs.getString(5));
		     	 out.println("<br></br>");
		     	 out.println("<b>Gender</b>:"+rs.getString(6));
		     	 out.println("<br></br>");
		      	 out.println("<b>Course</b>:"+rs.getString(7));
		      	 out.println("<br></br>");
		      	 out.println("<b>Percentage</b>:"+rs.getString(8));
		      
		 		%>

   
       <%
		         }
           }catch(Exception e)
           {
        	   System.out.println(e.getMessage());
           }
          
 	 	%><br><br>
 	 	<h3 style="text-align: center;"> Account Maintaine</h3>
 	 	 <li><a class="active" href="updatem.jsp" target="myframe">Update Contact</a></li>
  		<li><a href="updatep.jsp" target="myframe">Password Update</a></li>
  		<li><a href="updateE.jsp" target="myframe">Email Update</a></li>
  		<li><a href="ApprovedC.jsp" target="myframe">View Comapny</a></li>
  		<li><a href="StudentEmail.jsp" target="myframe">Send Email</a></li>
		<li><a href="Logout.jsp" >Logout</a></li>  		
</ul>

<iframe src="" style="margin-left:25%;padding:1px 16px;height:650px;width:977px;" name="myframe" ></iframe>

</body>
</html>
