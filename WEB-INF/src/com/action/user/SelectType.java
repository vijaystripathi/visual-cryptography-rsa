package com.action.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SelectType extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		String process_type = req.getParameter("type");
		
		System.out.println("Type :"+process_type);
		
		RequestDispatcher rd = null;
		if(process_type.trim().equals("BlackImage"))
		{
			rd=req.getRequestDispatcher("/JSP/User/browse_image.jsp?no=0");
			rd.forward(req, resp);
			
		}
		else
		{
			
			rd=req.getRequestDispatcher("/JSP/User/colorbrowse_image.jsp?no=0");
			rd.forward(req, resp);
			
		}
	}

}
