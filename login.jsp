<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="nav.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
 	<meta charset="utf-8">
 	<meta name="viewport" contain= "width=device-width initial-scale=1.0">
  	<link rel="stylesheet" type="text/css" href="mystyle.css">
 	<link rel="stylesheet" type="text/css" href="E:/eclipse programe/Campus Recuritment System/WebContent/font-awesome-4.7.0/css/font-awesome.min.css">
 	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
 	
 	<title>LOGIN</title>
 	<style type="text/css">
 	  #back1{
      	background-image: url(math.jpg);
      	background-repeat: no-repeat;
      	background-size: cover;
      }
      .log{
      	 width: 25%;
      	 margin: auto;
      	 margin-top: 150px;
      	 background-color: white;
       	 padding: 2px 20px 0px;
         text-align: center;
         font-family: Estrangelo Edessa;
         border:2px solid lightblue;
         color: #0d0d0d;
      }
      .innerlog{
      	border:2px solid lightblue;
      	 width: 25%;
      	 margin: auto;
      	 margin-top: 2px;
      	 text-align: center;
      	 height: 300px;
      	 background-color: white;
      	 padding-top: 3%;
      	 font-size: 1.2em;
      	 color:#0d0d0d;
      	 text-transform: bold;
      	 font-family: Estrangelo Edessa;
      }
     
 	</style>
 </head>
 <body id="back1">
 	<div class="log">
 		<h2> LOGIN </h2>
 	</div>	
 		<div class="innerlog">
 			<form action="./Login" method="post">
 				<span>USERNAME</span><i class="fas fa-user"></i><br><input type="text" name="uname" required  placeholder="Username"><br><br> 

 				<span>PASSWORD</span><i class="fas fa-key"></i><br><input type="password" name="pass" required placeholder="password"><br><br>
 				<span>USER TYPE</span> <i class="fas fa-users"></i><br>
 				<select name="option" id="option">
 			 		
 			 		<option value="adm">Admin</option>
  					<option value="com">Comapny</option>
  					<option value="stu">Student</option>
				</select><br><br>
 				<input class="btn" type="submit" value="Login" name="log">
 			</form>
 		</div>
 </body>