<%@page import="Email.M"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
//fetch html form data
String rcv = request.getParameter("To");
String sub = request.getParameter("Sub");
String txt = request.getParameter("req");
//String attach=request.getParameter("att");

//split the rcv
String[] email_rcv = rcv.split(" ");

//call method
M.sendEmail(email_rcv,sub,txt);
%>
<i>Email has been sent</i>
<a href="index.jsp">Click to go to homePage</a>

</body>
</html>
