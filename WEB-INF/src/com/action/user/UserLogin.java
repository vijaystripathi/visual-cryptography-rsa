/**
 * 
 */
package com.action.user;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.DAO;
import com.dao.DAOFactory;
import com.dao.User;


/**
 * @author Nitin Gudle
 *Apr 7, 2012 4:10:53 PM
 *Project:-Cloud_Computing(RC4)
 *Package:-com.nitin.action.user
 *File:-Login.java
 */
public class UserLogin extends HttpServlet 
{
	public void doPost(HttpServletRequest request,HttpServletResponse response)throws IOException
	{
		PrintWriter out = response.getWriter();
		try
		{
			HttpSession session = request.getSession();
			String name=request.getParameter("name");
			String pass=request.getParameter("pass");
			
			String username = User.select_uname(name);
			
			DAOFactory factory=new DAOFactory();
			DAO dao=factory.getInstance("User");
			
			boolean result=dao.loginCHK(name, pass);
			if(result)
			{
				request.setAttribute("user", name);
				session.setAttribute("user", name);
				session.setAttribute("Name", username);
				RequestDispatcher rd=request.getRequestDispatcher("/JSP/User/userhome.jsp");
				rd.forward(request, response);
			}
			else
				response.sendRedirect(request.getContextPath()+"?no=1");
		}
		catch(Exception e)
		{
			System.out.println("Opps's Error is in UserLogin Servlet......"+e);
			out.println("Opps's Error is in UserLogin Servlet......"+e);
		}
	}
}
