
<!DOCTYPE html>
<html>
<head>
	<title>Admin</title>
	<head>
 	<meta charset="utf-8">
 	<meta name="viewport" contain= "width=device-width initial-scale=1.0">
  	<link rel="stylesheet" type="text/css" href="aman.css">
    <link rel="stylesheet" type="text/css" href="mystyle.css">
 	<link rel="stylesheet" type="text/css" href="E:/eclipse programe/Campus Recuritment System/WebContent/font-awesome-4.7.0/css/font-awesome.min.css">
 	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
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
<body bgcolor="snow">
	<%@ page import="java.sql.*" %>
    <ul>
	<center><img src="admin.jpg"></<img></center>
	<%
         try
     		 {   
        	 	response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
    	  		if(session.getAttribute("id")==null)
    	  		{
    	  			response.sendRedirect("login.jsp");
    	  		}
    	  		
   	  	    
   	        	String n1=(String)session.getAttribute("id");
   	        	//String n2=(String)ses.getAttribute("pass");%>
   	        	
   	        	<center><% out.println("Welcome "+n1);%></center> <%    
	     			
           }
			catch(Exception e)
           {
        	   System.out.println(e.getMessage());
           }
          %>
 	 	<br><br>
	
   		<h3 style="text-align: center;"> Account Maintaine</h3>
 	 	 <li><a class="active" href="Vstudent.jsp" target="myframe">View Students</a></li>
  		<li><a href="UApprovedC.jsp" target="myframe">View Unapproved Company</a></li>
  		<li><a href="ApprovedC.jsp" target="myframe">View Approved Company</a></li>
  		<li><a href="Vcompany.jsp" target="myframe">View Comapny</a></li>
  		<li><a href="Logout.jsp" >Logout</a></li>  		
</ul>

<iframe src="" style="margin-left:25%;padding:1px 16px;height:650px;width:977px;" name="myframe" ></iframe>


</body>
</html>
