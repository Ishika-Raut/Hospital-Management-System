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

@WebServlet("/userChangePassword")
public class changePassword extends HttpServlet
{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		int uid = Integer.parseInt(req.getParameter("uid"));
		String oldPassword = req.getParameter("oldPassword");
		String newPassword = req.getParameter("newPassword");
		
		HttpSession session = req.getSession();
		
		UserDao dao= new UserDao(DBConnect.getConn());
		if(dao.checkOldPassword(uid, oldPassword))
		{
			if(dao.changePassword(uid, newPassword))
			{
				session.setAttribute("successMsg", "Password Change Successfully");
				resp.sendRedirect("changePassword.jsp");
			}
			else
			{
				session.setAttribute("errorMsg", "Something Wrong on Server");
				resp.sendRedirect("changePassword.jsp");
			}
		}
		else
		{
			session.setAttribute("errorMsg", "Old Password Incorrect");
			resp.sendRedirect("changePassword.jsp");
		}
	}
	
}
