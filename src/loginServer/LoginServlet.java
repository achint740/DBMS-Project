package loginServer;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import SQL_Support.SQL_Commands;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//		doGet(request, response);
		
		System.out.println("Request Received!");
		
		//Fetch data from html
		String user = request.getParameter("userid");
		String pwd = request.getParameter("pwd");
		//out.println("Here");
				
		//Create JSON Object
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
			System.out.println("User Verfied");
			String c = ans1.getString("category");
			Cookie loginCookie = new Cookie("user",user);
			//setting cookie to expiry in 30 mins
			loginCookie.setMaxAge(30*60);
			response.addCookie(loginCookie);
			if(c.matches("team"))
				response.sendRedirect("people/teams.jsp");
			else if(c.matches("doctor"))
				response.sendRedirect("people/doctor.jsp");
			else if(c.matches("hospital"))
				response.sendRedirect("people/hospital.jsp");
			else if(c.matches("government"))
				response.sendRedirect("people/admin.jsp");
			else 
				response.sendRedirect("LoginSuccess.jsp");
		}
		else {
			System.out.println("User Not Verified!Error");
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/Login.jsp");
			PrintWriter out= response.getWriter();
			out.println("<font color=red>Either user name or password is wrong.</font>");
			rd.include(request, response);
		}
		
		
	}

}
