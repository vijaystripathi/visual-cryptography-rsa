package com.action.user;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.awt.image.WritableRaster;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Random;

import javax.imageio.ImageIO;
public class ImageProcess 
{
	private static final int IMG_WIDTH = 200;
	private static final int IMG_HEIGHT = 140;
	
	public static BufferedImage readImage(String fileLocation)
	{
        BufferedImage img = null;
        try 
        {
            img = ImageIO.read(new File(fileLocation));
        } catch (IOException e) 
        {
            e.printStackTrace();
        }
        return img;
    }
	
	public static BufferedImage resizeImage(BufferedImage originalImage, int type)
    {
		BufferedImage resizedImage = new BufferedImage(IMG_WIDTH, IMG_HEIGHT, type);
		Graphics2D g = resizedImage.createGraphics();
		g.drawImage(originalImage, 0, 0, IMG_WIDTH, IMG_HEIGHT, null);
		g.dispose();
	 
		return resizedImage;
    }
	
	
	public static ArrayList processImage(BufferedImage image,int share,String name, String fileName,String outfilepath,String share2path)
	{
		 ArrayList<String> list = new ArrayList<String>();
		String out1 = outfilepath;
		String out2 = share2path;
		File f=new File(name);
		name=f.getName();
		int width = image.getWidth();
        int height = image.getHeight();
        if(share==2)
        {
        	
        	BufferedImage I1 = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
            BufferedImage I2 = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
            WritableRaster wr1 = I1.getRaster();
            WritableRaster wr2 = I2.getRaster();
            int[] a = new int[4];
            int[] b = new int[4];
            int[] c = new int[4];
            c[0]=255;c[1]=255;c[2]=255;c[3]=255;
            int imageMatrix[][]=ImageProcess.imageMatrix(image,share);
            for (int i = 0; i < width; i++)
            {
                for (int j = 0; j < height; j++) 
                {
                	int pixel = image.getRGB(i, j);
                	a=getARGBPixelData(pixel);
                    b=getARGBPixelData(pixel);
                    if(imageMatrix[i][j]==1)
                       	wr1.setPixel(i, j, a);
                    else
                       	wr1.setPixel(i, j, c);
                    if(imageMatrix[i][j]==2)
                    	wr2.setPixel(i, j, b);
                    else
                      	wr2.setPixel(i, j, c);
                }
            }
            try 
            {
            	ImageIO.write(I1, "png", new File(outfilepath));
            	ImageIO.write(I2, "png", new File(share2path));
            }
            catch (IOException e)
            {
            	System.err.println("image not saved.");
            	e.printStackTrace();
            }
            
           
            list.add(out1);
            list.add(out2);
        }
        return list;
       
	}
	public static int[][] imageMatrix(BufferedImage image , int share)
	{
		Random random=new Random();
		int width = image.getWidth();
	    int height = image.getHeight();
	    int matA[][]=new int[width][height];
	    for (int i = 0; i < width; i++)
	    {
	         for (int j = 0; j < height; j++) 
	         {
	        	 if(share==2)
	        		 matA[i][j]=(random.nextInt(( 2 - 1 ) + 1 ) ) + 1;
	        	 else
	        		 matA[i][j]=(random.nextInt(( 2 - 1 ) + 2 ) ) + 1;
	         }
	     }
		return matA;
	}
	public static int[] getARGBPixelData(int pixel)
	{
		int[] a = new int[4];
		try
		{
			int alpha = (pixel >> 24) & 0x000000FF;
			int red = (pixel >> 16) & 0x000000FF;
			int green = (pixel >>8 ) & 0x000000FF;
			int blue = (pixel) & 0x000000FF;
			a[0]=red;
        	a[1]=green;
        	a[2]=blue;
        	a[3]=alpha;
		}
		catch(Exception e)
		{
			System.out.println("Error is in ImageProcess getARGBPixelData(int pixel) "+e);
		}
		return a;
	}
	public static boolean MergeImage(String share1,String share2,String outImage)
	{
		try
		{
			BufferedImage img1=readImage(share1);
			BufferedImage img2=readImage(share2);
			int w1=img1.getWidth();
			int h1=img1.getHeight();
			BufferedImage I = new BufferedImage(w1, h1, BufferedImage.TYPE_INT_RGB);
			WritableRaster wr = I.getRaster();
			int[] a = new int[4];
			int[] b = new int[4];
			for (int i = 0; i < w1; i++)
	        {
	            for (int j = 0; j < h1; j++) 
	            {
	            	int pixel1 = img1.getRGB(i, j);
	            	int pixel2 = img2.getRGB(i, j);
	            	a=getARGBPixelData(pixel1);
	            	b=getARGBPixelData(pixel2);
//	            	System.out.println(a[0]+" "+a[1]+" "+a[2]+" "+a[3]);
//	            	System.out.println(b[0]+" "+b[1]+" "+b[2]+" "+b[3]);
	            	if(a[0]==255 && a[1]==255 && a[2]==255 && a[3]==255)
	            	{
	            		wr.setPixel(i, j, b);
	            	}
	            	else
	            	{
	            		wr.setPixel(i, j, a);
	            	}
	            }
	        }
			ImageIO.write(I, "png", new File(outImage));
		}
		catch(Exception e)
		{	
			System.out.println(e);
		}
		return true;
	}
	
	public static void main(String[] args) 
	{
		BufferedImage img=ImageProcess.readImage("im.jpg");
		//ImageProcess.processImage(img, 2, "Share", "");
		ImageProcess.MergeImage("Share_1.png", "Share_2.png", "out.jpg");
		
	}
}
