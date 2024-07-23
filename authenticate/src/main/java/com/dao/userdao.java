package com.dao;
// to store in database

import com.entities.*;
import com.mysql.cj.protocol.Resultset;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class userdao {

	private Connection conn;

	public userdao(Connection conn) {
 		super();
		this.conn = conn;
	}
	
	public boolean userregister(user us) {
		boolean f = false;
		try {
			String qu = "insert into user(name,email,password) values(?,?,?)";
			PreparedStatement ps = conn.prepareStatement(qu);
			ps.setString(1,us.getName());
			ps.setString(2,us.getEmail());
			ps.setString(3,us.getPassword());
			
			ps.executeUpdate();
			f=true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return f;
	}
	
	public user userlogin(user us) {
		user use =null;
		/* int f=0; */
		try {
			String qu = "select * from user where email= ? AND password = ?";
			PreparedStatement ps = conn.prepareStatement(qu);
			ps.setString(1, us.getEmail());
			ps.setString(2,us.getPassword());
			
			ResultSet resultset=ps.executeQuery();
			
			
			if (resultset.next()) {
				 use = new user(resultset.getInt(1),resultset.getString(2),resultset.getString(3),resultset.getString(4));
				/* f= 1; */
			}
			
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return use;
		
	}
}
