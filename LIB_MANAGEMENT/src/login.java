

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{	PrintWriter pw=resp.getWriter();
		
		String username=req.getParameter("username");
		String password=req.getParameter("password");
		int size=0;
		System.out.println(username);
		System.out.println(password);
		//DB CONNECTION
		try {			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/libmanage","root","password@1234");
			Statement smt = con.createStatement();
			String sql="select * from userlogin where username='"+username+"' and password='"+password+"'";
			ResultSet result = smt.executeQuery(sql);
			while(result.next())
			{
				size++;
			}
			System.out.println("rows affected "+size);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		if(size == 1)
		{
			RequestDispatcher rd = req.getRequestDispatcher("home.jsp");
			HttpSession session = req.getSession(true);
			session.setAttribute("user", username);
			rd.forward(req, resp);
		}
		else
		{
			
			System.out.println("else started..");
			//req.setAttribute("error","<h4 style='color:red'>Wrong Credientials</h4>");
			String heading="<html>";
			
		heading	+="<h3 style='color:red;'>Failed</h3>";
		heading+="</html>";
			pw.println(heading);
			RequestDispatcher rd = req.getRequestDispatcher("index.jsp");
			rd.forward(req, resp);
			
		}
	}
}

	
