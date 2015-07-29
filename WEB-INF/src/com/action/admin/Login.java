/**
 * 
 */
package com.action.admin;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.Admin;
import com.dao.DAO;
import com.dao.DAOFactory;


/**
 * @author Nitin Gudle
 *Apr 7, 2012 4:10:35 PM
 *Project:-Cloud_Computing(RC4)
 *Package:-com.nitin.action.admin
 *File:-Login.java
 */
public class Login extends HttpServlet 
{
	public void doPost(HttpServletRequest request,HttpServletResponse response)throws IOException
	{
		PrintWriter out = response.getWriter();
		try
		{
			String name=request.getParameter("name");
			String pass=request.getParameter("pass");
			
			String adminname = Admin.selecte_aname(name);
			
			System.out.println("Admin Name :"+adminname);
			
			DAOFactory factory=new DAOFactory();
			DAO dao=factory.getInstance("Admin");
			boolean result=dao.loginCHK(name, pass);
			if(result)
			{
				request.setAttribute("admin", name);
				request.setAttribute("Name", adminname);
				RequestDispatcher rd=request.getRequestDispatcher("/JSP/Admin/adminhome.jsp");
				rd.forward(request, response);
			}
			else
				response.sendRedirect(request.getContextPath()+"?no=1");
		}
		catch(Exception e)
		{
			System.out.println("Opps's Error is in AdminLogin Servlet......"+e);
			out.println("Opps's Error is in AdminLogin Servlet......"+e);
		}
	}
}
