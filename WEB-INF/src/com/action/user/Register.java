/**
 * 
 */
package com.action.user;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.DAO;
import com.dao.DAOFactory;
import com.drw.util.RSA_Algorithm;
import com.user.util.RSA_File_EncryptionDecryption;

/**
 * @author Nitin Gudle
 *Apr 8, 2012 4:42:04 PM
 *Project:-Cloud_Computing(RC4)
 *Package:-com.nitin.action.user
 *File:-Register.java
 */
public class Register extends HttpServlet 
{
	public void doPost(HttpServletRequest request,HttpServletResponse response)throws IOException
	{
		PrintWriter out = response.getWriter();
		try
		{
			String id = request.getParameter("userid");
			String pass = request.getParameter("pwd");
			String name = request.getParameter("uname");
			String gender = request.getParameter("gender");
			String add = request.getParameter("addr");
			String city = request.getParameter("city");
			String email = request.getParameter("email");
			String cno = request.getParameter("phone");
			
			String public_key = request.getRealPath("")+"\\Keys\\public_key.txt";
			String private_key = request.getRealPath("")+"\\Keys\\private_key.txt";
			RSA_File_EncryptionDecryption.generateRSAKey(public_key,private_key,id);
			
			
			
			DAOFactory factory=new DAOFactory();
			DAO dao=factory.getInstance("User");
			boolean result=dao.CHK(id);
			if(!result)
			{
				result=dao.register(id, pass, name, gender, add, city, email, cno);
				if(result)
				{
					response.sendRedirect(request.getContextPath()+"?no=4");
				}
				else
					response.sendRedirect(request.getContextPath()+"?no=3");
			}
			else
			{
				response.sendRedirect(request.getContextPath()+"?no=5");
			}
		}
		catch(Exception e)
		{
			System.out.println("Opps's Error is in Register Servlet......"+e);
			out.println("Opps's Error is in Register Servlet......"+e);
		}
	}
}
