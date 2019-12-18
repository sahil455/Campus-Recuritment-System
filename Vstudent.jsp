<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Student</title>
<style type="text/css">
   body{
        
        width: 79%; 
        height: 560px;
         }
   .tab{
       text-align:center;
       margin-left: 2%;
       font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
   }
   
   .tab tr th{
     background-color: #009ACD;
     color: white;
     width: 300px;
     height: 40px;
     font-size: 1.3em;
   }
   .tab tr td{
   background-color: #f2f2f2;
   }
</style>
</head>
<body bgcolor="#DCDBDB">
<center><img src="view3.jpg"></center>
 <table class="tab" border="1px" width="850px" >
	   	  <tr> 
	   	  <th> Name</th>
	   	  <th>Email</th>
	   	  <th>Phone</th>
	   	  <th>Gender</th>
	   	  <th>Course</th>
	   	  <th>Percentage</th>
	   	  <th>Action</th>
	   	  </tr>
	   	   <%@ page import="java.sql.*" %>
	   	  <%
 	 	 
           try
           {
        	  // HttpSession ses=request.getSession(false);   
               out.println("<center> <h2><b> Student Registration </b></h2></center ");
               System.out.println("hobo");
               Class.forName("oracle.jdbc.driver.OracleDriver");
   		       Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","Campus","oracle");
               Statement s=con.createStatement();
		       ResultSet rs=s.executeQuery("select * from Sregister");
		       while(rs.next())
		         
		         {
		         
		 			
		          %>
		          <tr>
		          <td> <%= rs.getString(2) %> </td> 
		          <td> <%= rs.getString(3) %> </td> 
		          <td> <%= rs.getString(5) %> </td> 
		         
		          <td> <%= rs.getString(6) %> </td>
		          <td> <%= rs.getString(7) %> </td>
		          <td> <%= rs.getString(8) %> </td>
		         <td><a href="Sdel.jsp?sid=<%= rs.getString(1)%>">Delete</a>
		          </tr>
		          <%
		         }
           }catch(Exception e)
           {
        	   System.out.println(e.getMessage());
           }
          
 	 	%>
</table>

</body>
</html>