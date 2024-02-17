package com.user.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.UserDao;
import com.db.DBConnect;
import com.entity.User;

@WebServlet("/user_register")

public class UserRegister extends HttpServlet
{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		try 
		{
			String firstName = req.getParameter("fname");
			String lastName = req.getParameter("lname");
			String email = req.getParameter("email");
			String password = req.getParameter("password");
			
			User u = new User(firstName, lastName, email, password);
			
			UserDao dao = new UserDao(DBConnect.getConn());
			boolean f = dao.register(u);
			
			HttpSession session = req.getSession();
			
			if(f)
			{
				session.setAttribute("successMsg", "Registered Successfully");
				resp.sendRedirect("signup.jsp");
			}
			else			
			{
				session.setAttribute("errorMsg", "Something wrong on server");
				resp.sendRedirect("signup.jsp");
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
	}

}
