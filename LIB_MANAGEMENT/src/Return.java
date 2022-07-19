import java.io.IOException;
import java.io.PrintWriter;
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

public class Return extends HttpServlet{

	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{	PrintWriter pw=resp.getWriter();
		
		int readid=Integer.parseInt(req.getParameter("readid"));
		int bookid =Integer.parseInt(req.getParameter("bookid"));
		String dateStr= req.getParameter("return_date");
		DateFormat formatter=new SimpleDateFormat(dateStr);
		DateFormat formatter1=new SimpleDateFormat("yyyy-MM-dd");

		try {
			System.out.println(formatter1.format(formatter.parse(dateStr)));
		} catch (ParseException e1) {
			e1.printStackTrace();
		}

		int i=0;
		int j=0;
		//DB CONNECTION
		try {			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/libmanage","root","password@1234");
			Statement statement = con.createStatement();
           String sql ="update issue set return_date ='"+dateStr+"' , due_date = null where readid='"+readid+"' and bookid='"+bookid+"'and due_date is not null";
            String sql1 = "update books set aval='y' where bookid='"+bookid+"'";
             i= statement.executeUpdate(sql1);
             j = statement.executeUpdate(sql);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		if(i==1 && j==1){
		String done="<html>";
					done +="<h3 style='color:white;'> Success</h3>";
					done +="</html>";
					pw.print(done);
					HttpSession session = req.getSession(true);
					resp.sendRedirect("Return.jsp");
					session.setAttribute("done",done);
					
	
		}
		else {
			String done="<html>";
			done +="<h3 style='color:white;'>Failed</h3>";
			done +="</html>";
		pw.print(done);
			HttpSession session = req.getSession(true);
			resp.sendRedirect("Return.jsp");
			session.setAttribute("done",done);		}
	}

}
