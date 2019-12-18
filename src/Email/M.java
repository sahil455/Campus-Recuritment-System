package Email;


import java.io.File;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;
import javax.mail.internet.MimeMultipart;

class juniorAuthenticator extends Authenticator
{
	@Override
	protected PasswordAuthentication getPasswordAuthentication() 
	{
		//create obj of passwordAuthentication
		//provide email and pass of sender
		PasswordAuthentication ref = new PasswordAuthentication("jain.raja455@gmail.com", "motojain");
		
		//return the obj
		return ref;
	}
}

public class M 
{
	public static String sendEmail(String[] rcvrs,String sub, String txt)
	{
		try 
		{
			//provide info about email
			//service provider-gmail.com
			//need to create object of properties
			//for this
			
			Properties p=new Properties();
			
			//provide info
			
			p.put("mail.smtp.host", "smtp.gmail.com");
			p.put("mail.smtp.port", "587");
			//p.put("mail.smtp.username", "cutehasan17@gmail.com");
			//p.put("mail.smtp.password", "cutehasan");
			p.put("mail.smtp.starttls.enable", "true");
			p.put("mail.smtp.ssl.trust", "smtp.gmail.com");
			p.put("mail.smtp.auth", "true");
			p.put("mail.debug", "true");   //pure optional
			
			//create obj of sub class of authenticator
			juniorAuthenticator auth = new juniorAuthenticator();
			
			//get the obj of session
			Session session = Session.getDefaultInstance(p, auth);
			
			//create obj of MimeMessage which denote actual message to be sent
			MimeMessage message = new MimeMessage(session);
			
			//create array of InternetAddress to Size of this array must be equal to size of array of String
			InternetAddress[] inArray = new InternetAddress[rcvrs.length];
			
			//convert array of string to InternetAddress
			//fetch data from array of String and covert to InternatAddress and store
			
			for (int i = 0; i < rcvrs.length; i++) 
			{
				//create obj of InternetAddress class to convert
				//string to correct format
				InternetAddress add = new InternetAddress(rcvrs[i]);
				
				//store obj inside array
				inArray[i] = add;
			}
			
			//specify the type of recipient ( cc , bcc)
			message.addRecipients(RecipientType.TO, inArray);
			
			//specify the subject of message
			message.setSubject(sub);
			
			//create obj of MimeBodyPart to associate text and attachment
			MimeBodyPart p1 = new MimeBodyPart();
			//MimeBodyPart p2 = new MimeBodyPart();
			//MimeBodyPart p3 = new MimeBodyPart();
			
			//Associate some text with p1
			p1.setContent(txt, "text/html");
			
			//String filePath1 =att;
			//String filePath2 ="E:\\PHOTOS And VIDEOS\\Cousins\\mypic.jpg";
			
			//denote file paths using file class
			//File f1= new File(filePath1);
			//File f2= new File(filePath2);
			
			//denote attachment with p2 and p3
			//p2.attachFile(f1);
			//p3.attachFile(f2);
			
			//create obj ofMimeMultiPart to store all body parts at one place
			MimeMultipart part = new MimeMultipart();
			
			//store all body parts inside MimeMultiPart one by one
			part.addBodyPart(p1);
			//part.addBodyPart(p2);
			//part.addBodyPart(p3);
			
			message.setContent(part);
			
			//send this message to email service provider
			Transport.send(message);
			
		} 
		catch (Exception e) 
		{
			System.out.println("error"+e);
			// TODO: handle exception
		}
		
		return "OK";
	}
	
}

