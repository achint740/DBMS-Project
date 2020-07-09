package login_session;

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

import SQL_Support.SQL_Commands;

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
	/*protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}*/

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//		doGet(request, response);
		System.out.println("Request Received");
		final long serialVersionUID = 1L;
		System.out.println(serialVersionUID);
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
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/Login.jsp");
			System.out.println("Login Failure");
			PrintWriter out= res.getWriter();
			out.println("<font color=red>Either user name or password is wrong.</font>");
			rd.include(req, res);
		}
		
		
	}

}
