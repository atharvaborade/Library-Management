import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class delete extends HttpServlet {
private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{	PrintWriter pw=resp.getWriter();
		
	int bookid=Integer.parseInt(req.getParameter("bookid"));	

	int size=0;
		//DB CONNECTION
		try {			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/libmanage","root","password@1234");
			Statement statement = con.createStatement();
            String sql ="delete from books where bookid='"+bookid+"'";
             size = statement.executeUpdate(sql);
			System.out.println("rows affected in reader"+size);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		if(size==1){
		String done="<html>";
					done +="<h3 style='color:white; '> Success</h3>";
					done +="</html>";
					pw.print(done);
					HttpSession session = req.getSession(true);
					resp.sendRedirect("delete.jsp");
					session.setAttribute("done",done);
					
	
		}
		else {
			String done="<html>";
			done +="<h3> Failed</h3>";
			done +="</html>";
		pw.print(done);
			HttpSession session = req.getSession(true);
			resp.sendRedirect("delete.jsp");
			session.setAttribute("done",done);		}
	}

}

