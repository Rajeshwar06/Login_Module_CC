package com.login.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginDao {
	String url = "jdbc:mysql://localhost:3306/CC_Project";
	String sql = "Select * From Login Where Uname = ? and Password = ?";

	public boolean check(String uname, String pass) {
		
		
		try {  
	            Class.forName("com.mysql.jdbc.Driver");
	            System.out.println("Hello World");
	            Connection con=DriverManager.getConnection(url,"root","admin");
	            PreparedStatement stmt=con.prepareStatement(sql);
	            stmt.setString(1, uname);
	            stmt.setString(2, pass);
	            ResultSet rs = stmt.executeQuery();
	           // System.out.println(rs.getString(1));
	            if(rs.next()) {
	            	return true;
	            }
		}
		catch(Exception e){
			e.printStackTrace();
		}
	
		 
		 return false;
	
	}

}
