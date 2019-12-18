<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
 	<meta name="viewport" contain= "width=device-width initial-scale=1.0">
 	
 	<link rel="stylesheet" type="text/css" href="mystyle.css">
 	<link rel="stylesheet" type="text/css" href="E:/eclipse programe/Campus Recuritment System/WebContent/font-awesome-4.7.0/css/font-awesome.min.css">
 	<link href="https://fonts.googleapis.com/css?family=Playfair+Display" rel="stylesheet"> 
 	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
	<title>Contact us</title>
</head>
<body bgcolor="snow">
	<nav class="navigation">
    	<ul>
    		<li> <a href="#about">ABOUT </a> </li>
    		<li> <a href="contact.jsp">CONTACT US </a> </li>
    		<li> <a href="login.jsp">LOGIN </a> </li>
    		<li> <a href="#">REGISTER </a> 
        	<ul>
             <li><a href="Cregister.jsp">COMPANY REGISTER </a></li>
             <li><a href="Sregister.jsp">STUDENT REGISTER </a></li>
           </ul>
        </li>
        <li> <a href="#outer">ACHIEVEMENTS </a> </li>
    	</ul>
    </nav>
	<div class="con">
		<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d13981.98773350213!2d78.6618056!3d28.8240618!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xefb0ce367e3f2602!2sTeerthanker%20Mahaveer%20University!5e0!3m2!1sen!2sin!4v1575203167310!5m2!1sen!2sin" width="1350" height="400" frameborder="0" style="border:0;" allowfullscreen=""></iframe>
	</div>
		<div id="head">
   			<h2> CONTACT US</h2>
   		</div>
    <div class="left-div">
   
      <p>Phone: +91 9312249647 (09:00AM to 07:00AM)</p>
      <p>Toll Free No:1800 22 5252</p>
      <p>Email: info@hobo.com</p>
      <p>Support care@hobo.com</p>
     </div>
     <div class="right-div">
     	 <form action="./Contact" method="post">
     	 	
   			<span>NAME</span> <i class="fas fa-user"></i><br><input type="text" name="uname" required><br>
  		 	<span>EMAIL</span> <i class="fas fa-envelope-square"></i><br><input type="text" name="email" required><br>
   			<span>MOBILE</span> <i class="fas fa-mobile-alt"></i><br><input type="tel" name="mob"  pattern="[0-9]{10}" required><br>
            <span>MESSAGE</span> <i class="far fa-comment-alt"></i><br><textarea name="msg" rows="5" column="10"required></textarea>
        	<br>
    		<input id="btn1" type="submit" value="Submit" name="log">
    		<%
    		try
    		{
    			String data=session.getAttribute("msg").toString();
    			%><h3 style="color: grren;"><%out.println(data); %></h3>
    			<%
    			session.removeAttribute("msg");
    		}
    		catch(Exception e){}
    		%>
   </form>
     	
     </div>
     <div>
     	  </div>
  <footer class="foot" id="footer">
   <div class="cont">
    <h3> &copy Sahil Creation</h3><br>
    <ul>
      <li> <a href="#" target="blank"> <i class="fa fa-facebook"> </i></a></li>
      <li> <a href="#" target="blank"> <i class="fa fa-twitter"> </i></a></li>
      <li> <a href="#" target="blank"> <i class="fa fa-google-plus"> </i></a></li>
      <li> <a href="#" target="blank"> <i class="fa fa-youtube"> </i></a></li>
    </ul>
 </footer>
</body>
</html>