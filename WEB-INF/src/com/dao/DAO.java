/**
 * 
 */
package com.dao;

import java.sql.ResultSet;

/**
 * @author Amutha
 *Nov 20, 2013 
 *Project:- Image_VC_RSA Project
 *Package:-com.dao
 *File:-DAO.java
 */
public abstract class DAO 
{
	public abstract boolean loginCHK(String name,String pass);
	public abstract boolean register(String id,String pass,String name,String gender,String add,String city,String email,String cno);
	public abstract boolean CHK(String id);
	public abstract ResultSet getProfile(String name);
	public abstract boolean editProfile(String [] s);
	public abstract boolean chnagePass(String id,String cpass);
	public abstract ResultSet getUsers();
	public abstract ResultSet getUsers(String id);
	public abstract boolean deleteUser(String id);
	public abstract boolean editUser(String [] s);
	public abstract ResultSet getAuditors();
	public abstract ResultSet getAuditors(String id);
	public abstract boolean CHKAuditor(String id);
	public abstract boolean addAuditor(String [] s);
	public abstract boolean editAuditor(String [] s);
	public abstract boolean deleteAuditor(String s);
}
