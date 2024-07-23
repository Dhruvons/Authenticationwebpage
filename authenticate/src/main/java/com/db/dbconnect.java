package com.db;
import java.sql.*;
public class dbconnect {

	private static Connection conn;	
	
	public static Connection getconnection() {
		try {
			if(conn == null) {
				Class.forName("com.mysql.cj.jdbc.Driver");
				conn = DriverManager.getConnection("jdbc:mysql:///authentication","root","bholenathji");
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return conn;
	}
 }
