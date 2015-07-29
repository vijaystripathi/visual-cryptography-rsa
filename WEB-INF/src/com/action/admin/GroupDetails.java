package com.action.admin;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class GroupDetails extends HttpServlet 
{
	public void doGet(HttpServletRequest request,HttpServletResponse response)
	{
		try
		{
			String user=request.getParameter("user");
			RequestDispatcher rd=request.getRequestDispatcher("/Resources/JSP/Admin/group-details.jsp?user="+user);
			rd.forward(request, response);
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
	}
}
