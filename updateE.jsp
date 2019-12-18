<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Email</title>
<link rel="stylesheet" type="text/css" href="E:/eclipse programe/Campus Recuritment System/WebContent/font-awesome-4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="mystyle.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
<style type="text/css">
#heading{
	 	 text-align:center;
  	     width: 65%;
      	 margin: auto;
      	 margin-top: 85px;
      	 background-color: rgb(0,0,0,0.2);
       	 padding: 2px 20px 0px;
         text-align: center;
         font-family: Estrangelo Edessa;
         border:2px solid lightblue;
         color: #0d0d0d;
     
}
#updateE{
         border:2px solid lightblue;
      	 width: 65%;
      	 margin: auto;
      	 margin-top: 2px;
      	 text-align: center;
      	 height: 370px;
      	 background-color: rgb(0,0,0,0.4);
      	 padding-top: 3%;
      	 font-size: 1.2em;
      	 color:#0d0d0d;
      	 text-transform: bold;
      	 font-family: Estrangelo Edessa;
}
#updateE input{
  width:55%;
  height:30px;
}
</style>
</head>
<body>
  <div id="heading">
  <h2>Update Email</h2></div>
  <div id=updateE >
  <img src="emailup.jpg" height="200px">
  <form action="updateE.jsp" method="post">
 <span>EMAIL </span><i class="fas fa-envelope-square"></i><br><input type="email" name="email" required><br>
  <br><input class="btn" type="submit" value="update" name="log">
  </form>
  </div>
  <%@ page import="java.sql.*"  %>
  <%
 		String n=request.getParameter("email");
  		//String e=request.getParameter("email");


  try{
  	    //HttpSession ses=request.getSession(false);
  	    String n1=(String)session.getAttribute("sid");
  		Class.forName("oracle.jdbc.driver.OracleDriver");
  		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","Campus","oracle");
  		Statement stmt = con.createStatement();
  		String query = "Update Sregister set email='"+n+"' where sid='"+n1+"'";
  		stmt.executeUpdate(query);
  	}catch(Exception ex)
  	{
  		ex.printStackTrace();
  	}
  
  	
  %>
  
</body>
</html>