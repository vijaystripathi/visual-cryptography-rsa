package com.user.util;

import java.awt.image.*;
import java.util.ArrayList;



public class ImageInputDetails
{

   public static ArrayList<String> runProg(String load, int type,String share1path,String share2path) {

     boolean valid = false;

	   ArrayList list =new ArrayList();
	   
     BufferedImage input;
     
     input = InOutImage.loadImage(load);
     
     valid = InOutImage.validateImage(input);
     if (valid==true)
     {
       input = AlterImage.monochrome(input);
       
       
       BufferedImage pad1 = AlterImage.createRandom(input);
       BufferedImage pad2 = AlterImage.meldImages(input, pad1);
       
       String file1 = InOutImage.saveImage(AlterImage.makeGrey(pad1), share1path+"_1", type);
       String file2 = InOutImage.saveImage(AlterImage.makeGrey(pad2), share2path+"_2", type);
       
       list.add(file1);
       list.add(file2);
     }

     return list;
   }

   static String getName(String path) {
     String named = "";
     String name = "";
     int i,j=0;

     String[] pathall = path.split("\\\\");

     named=pathall[pathall.length-1];

     String[] nameall = named.split("");

     for (i=0;i<nameall.length;i++) if (nameall[i].equals(".")) j=i;

     for (i=0;i<j;i++) name = name + nameall[i];

     return name;
   }

  /* public static void main(String args[])
   {
	   boolean flag=runProg("Image_DB//cv3.jpg", "vc3", 0);
	   System.out.println("Flag : "+flag);
   }*/

}