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
 *Apr 12, 2012 11:02:29 AM
 *Project:-Cloud_Computing(RC4)
 *Package:-com.nitin.action.user
 *File:-ChangePass.java
 */
public class ChangePass extends HttpServlet 
{
	public void doGet(HttpServletRequest request,HttpServletResponse response)throws IOException 
	{
		PrintWriter out=response.getWriter();
		try
		{
			int no=Integer.parseInt(request.getParameter("no"));
			if(no==1)
			{
				String name=request.getParameter("name");
				request.setAttribute("user",name);
				RequestDispatcher rd=request.getRequestDispatcher("/JSP/User/changepass.jsp?no=0");
				rd.forward(request, response);
			}
			if(no==2)
			{
				String userid=request.getParameter("user_id");
				String pass=request.getParameter("pass");
				String npass=request.getParameter("npass");
				String cpass=request.getParameter("cpass");
				String user=request.getParameter("user");
				request.setAttribute("user", user);
				
				System.out.println("User ID:"+userid+"."+pass+"."+cpass);
				
				DAOFactory factory=new DAOFactory();
				DAO dao=factory.getInstance("User");
				boolean result=dao.loginCHK(user, pass);
				if(result)
				{
					if(npass.equals(cpass))
					{
						result=dao.chnagePass(userid, cpass);
						if(result)
						{
							ResultSet rs=dao.getProfile(user);
							request.setAttribute("rs",rs);
							RequestDispatcher rd=request.getRequestDispatcher("/JSP/User/changepass.jsp?no=4");
							rd.forward(request, response);
						}
						else
						{
							RequestDispatcher rd=request.getRequestDispatcher("/JSP/User/changepass.jsp?no=3");
							rd.forward(request, response);
						}
					}
					else
					{
						RequestDispatcher rd=request.getRequestDispatcher("/JSP/User/changepass.jsp?no=2");
						rd.forward(request, response);
					}
				}
				else
				{
					RequestDispatcher rd=request.getRequestDispatcher("/JSP/User/changepass.jsp?no=1");
					rd.forward(request, response);
				}
			}
		}
		catch(Exception e)
		{
			System.out.println("Opps's Error is in User ChangePass Servlet......"+e);
			out.println("Opps's Error is in User ChangePass Servlet......"+e);
		}
	}
}

