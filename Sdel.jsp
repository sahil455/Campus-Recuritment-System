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
		String n=(request.getParameter("sid"));
    	Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","Campus","oracle");
		Statement stmt = con.createStatement();
		String query = "delete from Sregister where sid='"+n+"'";
		stmt.executeUpdate(query);
		response.sendRedirect("Vstudent.jsp");
	%>
</body>
</html>