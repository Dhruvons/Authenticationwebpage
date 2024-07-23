package com.servlet;

import jakarta.servlet.ServletException;
import org.apache.catalina.startup.Catalina;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException; 
import java.io.PrintWriter;

import com.dao.userdao;
import com.db.dbconnect;
import com.entities.user;


public class loginservlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		user us =new user();
		us.setEmail(email);
		us.setPassword(password);
		
		userdao dao = new userdao(dbconnect.getconnection());
		user f= dao.userlogin(us);
		
		if (f!=null) {
			
			HttpSession session = request.getSession();
			session.setAttribute("user-ob", f);
			response.sendRedirect("home.jsp");
			
		}else {
			HttpSession session = request.getSession();
			session.setAttribute("error-msg", "Invalid Email & Password");
			response.sendRedirect("login.jsp");
		}
		
		
	}

}
