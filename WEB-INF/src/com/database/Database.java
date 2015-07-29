/**
 * 
 */
package com.database;

import java.sql.Connection;
import java.sql.DriverManager;

import com.user.util.Utility;


/**
 * @author Amutha
 *Nov 20, 2013 
 *Project:- Image_VC_RSA Project
 *Package:-com.database
 *File:-Database.java
 */
public class Database 
{
	private static Database database = null;
	private Database(){}
	
	public static Database getInstance()
	{
		if(database==null)
			return new Database();
		else
			return null;
	}
	public Connection connector()
	{
		Connection con=null;
		try {
			Class.forName(Utility.getPro("Driver"));
			System.out.println("Driver has loaded");
			con = DriverManager.getConnection(Utility.getPro("URL"),Utility.getPro("User"), Utility.getPro("Pass"));
			System.out.println("Connected" + con);

		} catch (Exception e) {
			System.out.println("Opp's Error is in connector()......."+ e);
		}
		return con;
	}
}
