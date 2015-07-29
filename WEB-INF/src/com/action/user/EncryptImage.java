package com.action.user;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.PrintWriter;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.imageio.ImageIO;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;


import com.user.util.ImageInputDetails;
import com.user.util.ImageEncrypt;
import com.user.util.RSA_File_EncryptionDecryption;
import com.user.util.SerializeToDatabase;



public class EncryptImage extends HttpServlet
{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException 
	{
		PrintWriter out = response.getWriter();
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
		HttpSession session = request.getSession();
		String id = session.getAttribute("user").toString();
		String destFilePath =null;
		System.out.println("User ID :"+id);
		
		
		try 
		{
			
			boolean isMultipart = ServletFileUpload.isMultipartContent(request);
			if(isMultipart)
 			{
 				FileItemFactory factory = new DiskFileItemFactory();
 	            ServletFileUpload upload = new ServletFileUpload(factory);
 	            
 	            try 
 	            {
 	            	
 	            	System.out.println("Inside Start VC Process ggjj");
 	            	List items = upload.parseRequest(request);
 	            	
  	                Iterator iterator = items.iterator();
  	                while (iterator.hasNext()) 
  	                {
  	                	FileItem item = (FileItem) iterator.next();
  	                	
  	                	//long s1 = item.getSize();
  	                	
  	                	//System.out.println("s1 :"+s1);
  	                	
	                    if (item.isFormField()) 
	                    {
	                    	s = item.getString();
	                    	list.add(s);//All Form Field Values
	                    	
	                    }
	                    else if(item.isInMemory())
	                    {
	                    	System.out.println("Inside Start VC Process");
	                    	 fileName = item.getName();
	                    	 
	                    	 System.out.println("File Name :"+fileName);
	                    	 if(fileName!="")
	                    	 //ext=fileName.substring(fileName.lastIndexOf(".")+1,fileName.lastIndexOf(""));
	                    	 
			                 //filepath = request.getRealPath("")+"\\Files\\Encryption\\"+fileName;
	                    	 filepath = request.getRealPath("")+"\\Files\\InputImage\\"+fileName;
	                    	 //String filepath1 = request.getRealPath("")+"\\Files\\InputImage\\"+fileName;
	         				
			  	             File f1=new File(filepath);
			  	             System.out.println("File Path : "+f1+" filepath "+filepath);
			  	             item.write(f1);
			  	             flag = true;
			  	             
			  	             System.out.println("File Write Successfully......"+flag);
			  	             session.setAttribute("file_ext",ext);
	                    }
	                        
  	                }
  	               
				}
 	            catch (Exception e)
 	            {
					System.out.println("Opps,Exception While Loading The File dgdfgf: " );
					e.printStackTrace();
				}
 			}
			
			/* Visual Cryptography Process (Starts) */
			
			if(flag)
			{
			
				inFilePath = request.getRealPath("")+"\\Files\\InputImage\\"+fileName;
				
				BufferedImage originalImage = ImageIO.read(new File(filepath));
				
				int type = originalImage.getType() == 0? BufferedImage.TYPE_INT_RGB : originalImage.getType();
				System.out.println("type :"+type);
				BufferedImage resizeImageJpg = ImageProcess.resizeImage(originalImage, type);
				ImageIO.write(resizeImageJpg, "jpg", new File(inFilePath)); 
				
				outFilePath = request.getRealPath("")+"\\Files\\VCShares\\"+fileName;
				
				System.out.println("inFilePath "+inFilePath);
				
				
				
				ArrayList<String> list1 =ImageInputDetails.runProg(inFilePath, 0,outFilePath,outFilePath);
				
				
				
				//BufferedImage img1=ImageProcess.readImage(inFilePath);
				//ArrayList<String> list1 = ImageProcess.processImage(img1, 2, "Share", fileName,outFilePath);
				String out1=list1.get(0);
				String out2=list1.get(1);
				
				File f = new File(out1);
				String share1_img = f.getName();
				
				File f1 = new File(out2);
				String share2_img = f1.getName();
				
				System.out.println("Share 1 :"+share1_img+" Share 2 :"+share2_img);
				
				request.setAttribute("fileName",fileName);
				request.setAttribute("share1",share1_img);
				request.setAttribute("share2",share2_img);
				rd=request.getRequestDispatcher("/JSP/User/display_vc_img.jsp?no=1");
				rd.forward(request, response);
				
				System.out.println("Visual Cryptography Process Done.....");
				
			}
			else
			{
				System.out.println("Opps,Something Went While Loading The File!");
			}
			

			
			/* Visual Cryptography Process (Ends) */
			
			String submi = request.getParameter("submit").trim();
			System.out.println("submit "+submi);
			
			if(submi.trim().equals("Encrypt Share1"))
			{
				String share1 = request.getParameter("share_1");
				String share2 = request.getParameter("share_2");
				
				System.out.println("Share 1 img :"+share1+"Share 2 Img :"+share2);
				System.out.println("Inside Divide Image");
				
				fileName = request.getParameter("fileName");
				
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
					
					//Encryption Process //
					
					try
					{
					//String srcFilePath = "rose.jpeg";
						String share1path = request.getRealPath("")+"\\Files\\VCShares\\"+share1 ;
					 destFilePath = request.getRealPath("")+"\\Files\\Encryption\\share1_"+fileName;
					PublicKey pubKey = (PublicKey) SerializeToDatabase.getPublicKey(id);
					boolean flg = RSA_File_EncryptionDecryption.encryptFile(share1path, destFilePath,pubKey);
					
					if(flg)
					{
						request.setAttribute("fileName",fileName);
						request.setAttribute("share1",share1);
						request.setAttribute("share2",share2);
						rd=request.getRequestDispatcher("/JSP/User/keygenerate.jsp?no=1");
						rd.forward(request, response);
					}
					else
					{
						request.setAttribute("fileName",fileName);
						request.setAttribute("share1",share1);
						request.setAttribute("share2",share2);
						rd=request.getRequestDispatcher("/JSP/User/keygenerate.jsp?no=2");
						rd.forward(request, response);
						
					}
					
					//response.sendRedirect(request.getContextPath()+"/Pass?fileNames="+destFilePath+"&download=true");
					
					
					}
					catch (Exception e)
					{
						// TODO: handle exception
					}
					
					    
				}
			}
			
			if(submi.trim().equals("Encrypt Share2"))
			{
				String share1 = request.getParameter("share_1");
				String share2 = request.getParameter("share_2");
				
				System.out.println("Share 1 img :"+share1+"Share 2 Img :"+share2);
				System.out.println("Inside Divide Image");
				
				fileName = request.getParameter("fileName");
				
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
					

					//Encryption Process //
					
					try
					{
					//String srcFilePath = "rose.jpeg";
						String share2path = request.getRealPath("")+"\\Files\\VCShares\\"+share2 ;
					 destFilePath = request.getRealPath("")+"\\Files\\Encryption\\share2_"+fileName;
					PublicKey pubKey = (PublicKey) SerializeToDatabase.getPublicKey(id);
					boolean flg = RSA_File_EncryptionDecryption.encryptFile(share2path, destFilePath,pubKey);
					
					if(flg)
					{
						request.setAttribute("fileName",fileName);
						request.setAttribute("share1",share1);
						request.setAttribute("share2",share2);
						rd=request.getRequestDispatcher("/JSP/User/keygenerate.jsp?no=3");
						rd.forward(request, response);
					}
					else
					{
						request.setAttribute("fileName",fileName);
						request.setAttribute("share1",share1);
						request.setAttribute("share2",share2);
						rd=request.getRequestDispatcher("/JSP/User/keygenerate.jsp?no=4");
						rd.forward(request, response);
						
					}
					
					
					
					}
					catch (Exception e)
					{
						// TODO: handle exception
					}
					
					
					    
				}
			}
			
			if(submi.trim().equals("Save Encypt_Share1"))
			{
				String share1 = request.getParameter("share_1");
				String share2 = request.getParameter("share_2");
				
				System.out.println("Share 1 img :"+share1+"Share 2 Img :"+share2);
				System.out.println("Inside Divide Image");
				
				fileName = request.getParameter("fileName");
				
				System.out.println("File Name : " + fileName);
				
					
					try
					{
					//String srcFilePath = "rose.jpeg";
						String share2path = request.getRealPath("")+"\\Files\\VCShares\\"+share2 ;
					 destFilePath = request.getRealPath("")+"\\Files\\Encryption\\share1_"+fileName;
					 response.sendRedirect(request.getContextPath()+"/DownloadFile?fileNames="+destFilePath+"&download=true");
					
					 
					 	request.setAttribute("fileName",fileName);
						request.setAttribute("share1",share1);
						request.setAttribute("share2",share2);
						rd=request.getRequestDispatcher("/JSP/User/keygenerate.jsp?no=5");
						rd.forward(request, response);
					
					}
					catch (Exception e)
					{
						// TODO: handle exception
					}
					
					
					    
				
			}
			
			if(submi.trim().equals("Save Encypt_Share2"))
			{
				String share1 = request.getParameter("share_1");
				String share2 = request.getParameter("share_2");
				
				System.out.println("Share 1 img :"+share1+"Share 2 Img :"+share2);
				System.out.println("Inside Divide Image");
				
				fileName = request.getParameter("fileName");
				
				System.out.println("File Name : " + fileName);
				
				

					//Encryption Process //
					
					try
					{
					//String srcFilePath = "rose.jpeg";
						String share2path = request.getRealPath("")+"\\Files\\VCShares\\"+share2 ;
					 destFilePath = request.getRealPath("")+"\\Files\\Encryption\\share2_"+fileName;
					 response.sendRedirect(request.getContextPath()+"/DownloadFile?fileNames="+destFilePath+"&download=true");
						
					 	request.setAttribute("fileName",fileName);
						request.setAttribute("share1",share1);
						request.setAttribute("share2",share2);
						rd=request.getRequestDispatcher("/JSP/User/keygenerate.jsp?no=3");
						rd.forward(request, response);
					}
					catch (Exception e)
					{
						// TODO: handle exception
					}
			}
			
			if(submi.trim().equals("Save Key"))
			{
				String share1 = request.getParameter("share_1");
				String share2 = request.getParameter("share_2");
				
				System.out.println("Share 1 img :"+share1+"Share 2 Img :"+share2);
				System.out.println("Inside Divide Image");
				
				fileName = request.getParameter("fileName");
				
				System.out.println("File Name : " + fileName);
				
				

					//Encryption Process //
					
					try
					{
					//String srcFilePath = "rose.jpeg";
						//String share2path = request.getRealPath("")+"\\Files\\VCShares\\"+share2 ;
					 destFilePath = request.getRealPath("")+"\\Files\\Encryption\\private_key.txt";
					 
					 
					 PrivateKey privateKey = (PrivateKey) SerializeToDatabase.getPrivateKey(id);
					 
					 FileOutputStream fos1 = new FileOutputStream(destFilePath);
				     ObjectOutputStream oos1 = new ObjectOutputStream(fos1);
				     oos1.writeObject(privateKey);
				        oos1.flush();
				        oos1.close();
					 
					 response.sendRedirect(request.getContextPath()+"/DownloadFile?fileNames="+destFilePath+"&download=true");
						
					 
					 	request.setAttribute("fileName",fileName);
						request.setAttribute("share1",share1);
						request.setAttribute("share2",share2);
						rd=request.getRequestDispatcher("/JSP/User/keygenerate.jsp?no=3");
						rd.forward(request, response);
					}
					catch (Exception e)
					{
						// TODO: handle exception
					}
				
			}
			
		} 
		catch (Exception e) 
		{
			System.out.println("Opps,Exception In User==>EncryptImage Servlet : ");
			e.printStackTrace();
		}
		
		
		
		
	}
}
