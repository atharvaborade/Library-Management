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

public class addbook extends HttpServlet {
private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{	PrintWriter pw=resp.getWriter();
		
	int bookid=Integer.parseInt(req.getParameter("bookid"));
	String bname=req.getParameter("bname");
	String bgenre=req.getParameter("bgenre");	
	String aval=req.getParameter("aval");	

	int size=0;
		//DB CONNECTION
		try {			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/libmanage","root","password@1234");
			Statement statement = con.createStatement();
            String sql ="insert into books (bookid,bname,bgenre,aval) values('"+bookid+"','"+bname+"','"+bgenre+"','"+aval+"')";
             size = statement.executeUpdate(sql);
			System.out.println("rows affected in reader"+size);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		//we have to add switch statement for inavlid bookid if already there 
		if(size==1){
		String done="<html>";
					done +="<h3 style='color:white; '> Success</h3>";
					done +="</html>";
					pw.print(done);
					HttpSession session = req.getSession(true);
					resp.sendRedirect("addbook.jsp");
					session.setAttribute("done",done);
					
	
		}
		else {
			String done="<html>";
			done +="<h3> Failed</h3>";
			done +="</html>";
		pw.print(done);
			HttpSession session = req.getSession(true);
			resp.sendRedirect("addbook.jsp");
			session.setAttribute("done",done);		}
	}

}

