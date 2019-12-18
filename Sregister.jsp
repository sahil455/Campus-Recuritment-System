<%@ include file="nav.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
 	<meta name="viewport" contain= "width=device-width initial-scale=1.0">
  	<link rel="stylesheet" type="text/css" href="mystyle.css">
 	<link rel="stylesheet" type="text/css" href="E:/eclipse programe/Campus Recuritment System/WebContent/font-awesome-4.7.0/css/font-awesome.min.css">
 	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
	<title>REGISTER</title>
</head>
<body class="back">
	<div class="reg">
 		<h2> STUDENT REGISTRATION </h2>
 	</div>	
 	<div class="inner-reg">
   		<form action="./Sregister" method="post">
   			<span>STUDENT ID</span><i class="fas fa-user"></i><br><input type="text" name="sid" required><br>
   			<span>NAME</span><i class="fas fa-user"></i><br><input type="text" name="uname" required><br>
  		 	<span>EMAIL</span><i class="fas fa-envelope-square"></i><br><input type="email" name="email" required><br>
   			<span>PASSWORD</span><i class="fas fa-key"></i><br><input type="password" name="pass" required><br>
   			<span>MOBILE</span><i class="fas fa-mobile-alt"></i><br><input type="tel" name="mob"  pattern="[0-9]{10}" required><br>
   			<span>GENDER</span><i class="fas fa-venus-mars"></i><br><input type="text" name="gen" required><br>
   			<span>COURSE</span><i class="fas fa-book-reader"></i><br><input type="text" name="course" required><br>
    		<span>PERCENTAGE</span><i class="fas fa-percentage"></i><br><input type="number" name="marks" value="0" min="1" max="100" required> <br> <br>
    		<input class="btn" type="submit" value="Register" name="log">
   </form>
   <%
   			   try
   				{
   				  	String data= session.getAttribute("msg").toString(); %>
   				   	<h3 style="color:green;"><% out.println(data);%></h3>
   				   <%	session.removeAttribute("msg");
   			   	}
   			catch(Exception e){}
   			
   			%>
</body>
</html>