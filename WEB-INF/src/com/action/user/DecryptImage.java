package com.action.user;

import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.security.PrivateKey;
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
import org.apache.commons.fileupload.FileItemIterator;
import org.apache.commons.fileupload.FileItemStream;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.fileupload.util.Streams;
import org.apache.commons.io.FilenameUtils;

import com.user.util.ConversionProcess;
import com.user.util.RSA_File_EncryptionDecryption;
import com.user.util.SerializeToDatabase;

public class DecryptImage extends HttpServlet
{
	protected void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException 
			{
		String dest ="", dest1="";
		RequestDispatcher rd = null;
		HttpSession session = request.getSession();
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String id = session.getAttribute("user").toString();
		FileItemFactory fileItemFactory = new DiskFileItemFactory();
		ServletFileUpload servletFileUpload = new ServletFileUpload(fileItemFactory);
		try {

			List fileItems = servletFileUpload.parseRequest(request);

			FileItem file = (FileItem) fileItems.get(0);
			FileItem file1 = (FileItem) fileItems.get(1);
			FileItem file2 = (FileItem) fileItems.get(2);
			System.out.println("File Intem cvcbcv:" + file.getName()+ "Second Images :" + file1+"Key File :"+file2);

			// Read First Images Files //
			
			String fileName = request.getRealPath("") + "/Files/Decryption/"+ file.getName();
			
			OutputStream outputStream = new FileOutputStream(fileName);
			InputStream inputStream = file.getInputStream();

			int readBytes = 0;
			byte[] buffer = new byte[10000];
			while ((readBytes = inputStream.read(buffer, 0, 10000)) != -1)
			{
				outputStream.write(buffer, 0, readBytes);
			}
			outputStream.close();
			inputStream.close();
			
			// Read Second Images Files //
			
			String fileName1 = request.getRealPath("") + "/Files/Decryption/"+ file1.getName();

			OutputStream outputStream1 = new FileOutputStream(fileName1);
			InputStream inputStream1 = file1.getInputStream();

			int readBytes1 = 0;
			byte[] buffer1 = new byte[10000];
			while ((readBytes1 = inputStream1.read(buffer1, 0, 10000)) != -1)
			{
				outputStream1.write(buffer1, 0, readBytes1);
			}
			outputStream1.close();
			inputStream1.close();

			String fileName2 = request.getRealPath("") + "/Files/Decryption/"+ file2.getName();

			OutputStream outputStream2 = new FileOutputStream(fileName2);
			
			InputStream inputStream2 = file2.getInputStream();

			int readBytes2 = 0;
			byte[] buffer2 = new byte[10000];
			while ((readBytes2 = inputStream2.read(buffer2, 0, 10000)) != -1)
			{
				outputStream2.write(buffer2, 0, readBytes2);
			}
			outputStream2.close();
			inputStream2.close();
			
			byte[] buf=ConversionProcess.toByteArray(new File(fileName2));
			
			 //byte[] buf = rs.getBytes(1);
			    ObjectInputStream objectIn = null;
			    if (buf != null)
			      objectIn = new ObjectInputStream(new ByteArrayInputStream(buf));
			 
			    Object deSerializedObject = objectIn.readObject();
			
			
			if (file.getName() != null && file1.getName() !=null && file2.getName() != null)
			{
				
				//Decryption Process //
				
				 dest = request.getRealPath("")+ "/Files/Decryption/Decrypt_" + file.getName();
				System.out.println("Decryption Image1 File Path :" + dest);
				
				 dest1 = request.getRealPath("")+ "/Files/Decryption/Decrypt_" + file1.getName();
				System.out.println("Decryption Image2 File Path :" + dest1);

				
				//PrivateKey privateKey = (PrivateKey) SerializeToDatabase.getPrivateKey(id);
				PrivateKey privateKey = (PrivateKey) deSerializedObject;
				boolean f = RSA_File_EncryptionDecryption.decryptFile(fileName,dest, privateKey);
				boolean f1 = RSA_File_EncryptionDecryption.decryptFile(fileName1,dest1, privateKey);
				
				// Forward Process //
			
				File img1 = new File(dest);
				File img2 = new File(dest1);
				
				String ima1 = img1.getName();
				String ima2 = img2.getName();
				if (f)
				{
					request.setAttribute("fileName1", ima1);
					request.setAttribute("fileName2", ima2);
					rd = request.getRequestDispatcher("/JSP/User/desplay_decrypt_img.jsp?no=1");
					rd.forward(request, response);

				}
				else
				{
					
					rd = request.getRequestDispatcher("/JSP/User/desplay_decrypt_img.jsp?no=1");
					rd.forward(request, response);

				}

			}
		}

		catch (Exception e) {
			e.printStackTrace();
		}
		
		
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		this.doGet(request, response);
	}

}