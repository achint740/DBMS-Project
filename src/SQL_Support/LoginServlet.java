package SQL_Support;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

@SuppressWarnings("serial")
public class LoginServlet extends HttpServlet{

//	public static void main(String[] args) {
//		// TODO Auto-generated method stub
//		
//	}
		
	protected void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException {
		System.out.println("Request Received");
			
		String user = req.getParameter("userid");
		String pwd = req.getParameter("pwd");
		
		JSONObject obj = new JSONObject();
		obj.put("user_id",user);
		obj.put("password",pwd);
		
		SQL_Commands s = new SQL_Commands("root", "Dawra@740", "cms");
		JSONObject ans1 = null;
		try {
			ans1 = s.Verify(obj);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if(ans1!=null) {
			System.out.println("Creating New Cookie");
			Cookie loginCookie = new Cookie("user",user);
			loginCookie.setMaxAge(30*60);
			res.addCookie(loginCookie);
			res.sendRedirect("LoginSuccess.jsp");
		}
		else {
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/Login.html");
			System.out.println("Login Failure");
			PrintWriter out= res.getWriter();
			out.println("<font color=red>Either user name or password is wrong.</font>");
			rd.include(req, res);
		}
			
	}

}
