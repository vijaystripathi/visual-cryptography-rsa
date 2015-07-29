/**
 * 
 */
package com.action.user;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.DAO;
import com.dao.DAOFactory;
/**
 * @author Nitin Gudle
 *Apr 10, 2012 4:26:38 PM
 *Project:-Cloud_Computing(RC4)
 *Package:-com.nitin.action.user
 *File:-Profile.java
 */
public class Profile extends HttpServlet 
{
	public void doGet(HttpServletRequest request,HttpServletResponse response)throws IOException 
	{
		PrintWriter out=response.getWriter();
		try
		{
			String name=request.getParameter("name");
			DAOFactory factory=new DAOFactory();
			DAO dao=factory.getInstance("User");
			ResultSet rs=dao.getProfile(name);
			if(rs.next())
			{
				rs=dao.getProfile(name);
				request.setAttribute("rs",rs);
				request.setAttribute("user", name);
				RequestDispatcher rd=request.getRequestDispatcher("/JSP/User/profile.jsp?no=0");
				rd.forward(request, response);
			}
			else
				response.sendRedirect(request.getContextPath()+"/JSP/User/profile.jsp?no=1");
			
		}
		catch(Exception e)
		{
			System.out.println("Opps's Error is in UserProfile Servlet......"+e);
			out.println("Opps's Error is in UserProfile Servlet......"+e);
		}
	}
}
