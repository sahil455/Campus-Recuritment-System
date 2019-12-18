<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="Email.M"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Send Email</title>
<link rel="stylesheet" type="text/css" href="mystyle.css">
 <link rel="stylesheet" type="text/css" href="E:/eclipse programe/Campus Recuritment System/WebContent/font-awesome-4.7.0/css/font-awesome.min.css">
 <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
<style type="text/css">
#emailhead{
		 text-align:center;
  	     width: 46%;
      	 margin: auto;
      	 margin-top: 85px;
      	 background-color: rgb(0,0,0,0.2);
       	 padding: 2px 20px 0px;
         text-align: center;
         font-family: Estrangelo Edessa;
         border:2px solid lightblue;
         color: #0d0d0d;
 
}
#emailbody{
         
		 border:2px solid lightblue;
      	 width: 46%;
      	 margin: auto;
      	 margin-top: 2px;
      	 text-align: center;
      	 height: 370px;
      	 background-color: rgb(0,0,0,0.4);
      	 padding-top: 3%;
      	 font-size: 1.4em;
      	 color:#0d0d0d;
      	 text-transform: bold;
      	 font-family: Estrangelo Edessa;
}
#emailbody input{
  			width:99%;
 		    height:30px;
  }
  #emailbody textarea{
  			width:99%;
 		    height:130px;
  }
</style>
</head>
<body>
  <div id="emailhead">
    <h2>Send Email</h2>
  </div>
  <div id="emailbody">
  <form action="./Email.jsp" method="post">
  <span>Recipients</span> <i class="fas fa-reply"></i><br><input type="text" name="To" required><br><hr>
  <span> Subject</span><i class="fas fa-archive"></i><br> <input type="text" name="sub" required><br><hr>
 <span> Text</span> <i class="far fa-comment-alt"></i><br><textarea name="req" rows="5" column="10"required>Company Name
Address
City, State Zip Code

Date

Name
Address
City, State Zip Code

Dear Magnolia,

It is with great pleasure that I am writing to you to offer you the position of Senior Software Engineer with GMCD Solutions. Your experience and enthusiasm will be an asset to our company.

Please review the attached document outlining your salary and benefits, and sign where indicated. Return in the enclosed envelope within five business days. We will contact you once we have received the paperwork as to your start date.

We look forward to welcoming you as part of the GMCD Team!

Regards,

Amy Green
Human Resources Director
GMC Solutions</textarea><br><hr>
  <br><input class="btn" type="submit" value="Send" name="log">
  </form>
  </div>
    
</body>
</html>