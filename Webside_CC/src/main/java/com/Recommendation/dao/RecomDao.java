package com.Recommendation.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class RecomDao {
	String url = "jdbc:mysql://localhost:3306/CC_Project";
	String sql = "Select Name From Series Where Genere = ?";

	public ArrayList<String> check(String genere) {
			ArrayList<String> Series = new ArrayList<>();
			if(genere.equals("2")) genere = "Horror";
		
		try {  
	            Class.forName("com.mysql.jdbc.Driver");
	            System.out.println(genere);
	            Connection con=DriverManager.getConnection(url,"root","admin");
	            PreparedStatement stmt=con.prepareStatement(sql);
	            stmt.setString(1, genere);
	            
	            
	            ResultSet rs = stmt.executeQuery();
//	            while(rs.next()) {
//	            System.out.println(rs.getString(1));
//	            }
	            while(rs.next()) {
	            	Series.add(rs.getString(1));
	            }
	            for(String s:Series ) {
	            	System.out.println(s);
	            }
	            return Series;
		}
		catch(Exception e){
			e.printStackTrace();
		}
	
		 return Series;
		 
	
	}
}
