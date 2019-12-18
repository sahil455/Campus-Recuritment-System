<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.sql.*"  %>
<%

try{
		//HttpSession ses=request.getSession(false);
    	String n1=request.getParameter("cid");	
    	System.out.print(n1);
        Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","Campus","oracle");
		Statement stmt = con.createStatement();
		String query = "Update Cregister set status=1 where cid='"+n1+"'";
		stmt.executeUpdate(query);
		response.sendRedirect("Vcompany.jsp");
	}catch(Exception ex)
	{
		ex.printStackTrace();
	}

%>
</body>
</html>