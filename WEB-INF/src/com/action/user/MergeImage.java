package com.action.user;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.user.util.RSA_File_EncryptionDecryption;

public class MergeImage extends HttpServlet
{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException 
			{
		

		PrintWriter out = resp.getWriter();
		boolean flag = false;
		String s = "";
		String fileName = "";
		String ext="";
		String filepath = "";
		ArrayList list =  new ArrayList();
		
		String inFilePath = "";
		String outFilePath = "";
		String encKey = "";
		int xor = 0;
		BufferedImage img = null;
		RequestDispatcher rd = null;
		HttpSession session = req.getSession();
		
		String filename = req.getParameter("fileName");
		String filename1 = req.getParameter("fileName1");
		String submi = req.getParameter("submit").trim();
		System.out.println("submit "+submi);
		
		
		if(submi.trim().equals("Merge Images"))
		{
			
			System.out.println("Merge Both Images");
			
			fileName = req.getParameter("fileName");
			
			System.out.println("File Name : " + fileName);
			
			if ( session.getAttribute( "waitPage" ) == null ) 
		    {  
		    	   session.setAttribute( "waitPage", Boolean.TRUE );  
		    	   out.println( "<html><head>" );  
		    	   out.println( "<title>Please Wait...</title>" );  
		       	   out.println( "<meta http-equiv=\"Refresh\" content=\"0\">" );  
		    	   out.println( "</head><body bgcolor=''>" );  
		    	   out.println( "<br><br><br>" );
		    	   out.print( "<center><img src='Images/process1.gif'></img><br><br>");
		    	   out.println( "Please Do not press Back or Refresh button.......<br>  " );
		    	   out.println("<font color='white' size='5'>");
		    	   out.println( "Image Division is in Process......  " );
		    	   out.println("</font><br>");
		    	   out.println( "Please wait....</h1></center");  
		    	   out.close();  
		    }  
			else
			{
				session.removeAttribute( "waitPage" );  
				
				String share1 = req.getRealPath("")+"/Files/Decryption/"+filename;
				String share2 = req.getRealPath("")+"/Files/Decryption/"+filename1;
				
				String output_img = req.getRealPath("")+"/Files/VCShares/original_img.jpeg";
				boolean flg = ImageProcess.MergeImage(share1, share2, output_img);
				
				File f = new File(output_img);
				String output = f.getName();
				
				if(flg)
				{
					
					req.setAttribute("fileName", output);
					rd = req.getRequestDispatcher("/JSP/User/display_original_img.jsp?no=1");
					rd.forward(req, resp);

				}
				else
				{
					
					rd = req.getRequestDispatcher("/JSP/User/desplay_original_img.jsp?no=1");
					rd.forward(req, resp);

				}

			}
		}
		
		
		

	}

}
