

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
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
		doGet(request, response);
		
		String name=request.getParameter("name");	
		String pass=request.getParameter("pass");
		
		if(name.equals("abc")&& pass.equals("asd"))
		{
			HttpSession session=request.getSession();
		    session.setAttribute("name",name);
			response.sendRedirect("onedata.jsp");
		}
        
		else if(name.equals("mansi")&& pass.equals("pathak"))
		{
			HttpSession session=request.getSession();
		    session.setAttribute("name",name);
			response.sendRedirect("useronedata.jsp");
			
		}
		else if(name.equals("user")&& pass.equals("total"))
		{
			HttpSession session=request.getSession();
		    session.setAttribute("name",name);
			response.sendRedirect("welcomeuser.jsp");
		}
		else if(name.equals("hot")&& pass.equals("dog"))
		{
			HttpSession session=request.getSession();
		    session.setAttribute("name",name);
			response.sendRedirect("create.jsp");
			
		}
		else
		{
			response.sendRedirect("error.jsp");
		}
	}

}
