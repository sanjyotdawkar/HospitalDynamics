package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.connector.Response;

import com.dao.UserDao;
import com.db.DBConnect;
import com.entity.User;
@WebServlet("/user_register")  //jab user register fire hoga tab ye wala class run hoga
public class UserRegister extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			
			
			String fullname=req.getParameter("fullname");
			String  email=req.getParameter("email");
			String password=req.getParameter("password");
			
			User u=new User(fullname, email, password);
			
			UserDao dao=new UserDao(DBConnect.getConn());
			HttpSession session=req.getSession();
			boolean f=dao.register(u);
			if(f)
			{
				session.setAttribute("sucMsg","register successfully");
				resp.sendRedirect("signup.jsp");
				System.out.println(" successfull");
				
				
			}else
			{
				session.setAttribute("errorMsg","something went worng");
				resp.sendRedirect("signup.jsp");
				System.out.println("something went wrong");
				
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
	}
	

}
