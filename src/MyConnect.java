import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MyConnect {
   Connection con;
   public Connection getCon(){
	   try {
		   	System.out.println("hello");
		   	Class.forName("oracle.jdbc.driver.OracleDriver");
		   	con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","Campus","oracle");
		   	if(con!=null)
	    	 System.out.println("Connection  "+con);
	   
	   		}
	   catch(SQLException e)
	   {
		   System.out.println(e.getMessage());
	   } 
	   catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		  e.printStackTrace();
	   		}
   return con;
   }
}
