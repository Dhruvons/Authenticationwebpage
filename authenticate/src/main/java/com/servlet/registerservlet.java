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


public class registerservlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String name = request.getParameter("uname");
		String email = request.getParameter("email");
		String password = request.getParameter("password");

		user us = new user();
		us.setName(name);
		us.setEmail(email);
		us.setPassword(password);

		userdao dao = new userdao(dbconnect.getconnection());
		boolean f = dao.userregister(us);
		
		// agr sabh hojata h upper wala to ye show kardo msg

		if (f== true) {

			HttpSession session = request.getSession();
			session.setAttribute("reg-msg", "Registraton Sucessfully...");
			response.sendRedirect("register.jsp");
		} else {

			HttpSession session = request.getSession();
			session.setAttribute("error-msg", "Something went wrong on server");
			response.sendRedirect("register.jsp");
		}
	}
}
