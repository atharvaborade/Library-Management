import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Issue extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{	int readid=Integer.parseInt(req.getParameter("readid"));
		System.out.println(readid);
		int bookid =Integer.parseInt(req.getParameter("bookid"));
		System.out.println(bookid);
		String dateStr= req.getParameter("date");
		DateFormat formatter=new SimpleDateFormat(dateStr);
		DateFormat formatter1=new SimpleDateFormat("yyyy-MM-dd");

		try {
			System.out.println(formatter1.format(formatter.parse(dateStr)));
		} catch (ParseException e1) {
			e1.printStackTrace();
		}

		int i=0;
		int j=0;
		int k =0;
		//DB CONNECTION
		try {			
	      		Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/libmanage","root","password@1234");
			Statement statement = con.createStatement();
            String sql ="insert into issue (readid,bookid,date,due_date) values('"+readid+"','"+bookid+"','"+dateStr+"','"+dateStr+"')";
            String sql1 = "update books set aval='N' where bookid='"+bookid+"'";
            String sql2 = "update issue set due_date =adddate(due_date, interval 30 day)where due_date ='"+dateStr+"';";
             i = statement.executeUpdate(sql);
             j = statement.executeUpdate(sql1);
             k = statement.executeUpdate(sql2);
			System.out.println("rows affected in issues"+i);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		if(i>0 && j>0){
		String done="<html>";
					done +="<h3 style='color:white;'> Success</h3>";
					done +="</html>";
					//pw.print(done);
					HttpSession session = req.getSession(true);
					resp.sendRedirect("Issue.jsp");
					session.setAttribute("done",done);
					
	
		}
		else {
			String done="<html>";
			done +="<h3> Failed</h3>";
			done +="</html>";
		//	pw.print(done);
			HttpSession session = req.getSession(true);
			resp.sendRedirect("Issue.jsp");
			session.setAttribute("done",done);		}
	}

}
//http://localhost:8089/LIB_MANAGEMENT/Issue

	

