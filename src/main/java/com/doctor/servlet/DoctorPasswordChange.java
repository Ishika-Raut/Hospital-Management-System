package com.doctor.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.DoctorDao;
import com.db.DBConnect;

@WebServlet("/doctChangePassword")
public class DoctorPasswordChange extends HttpServlet
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
		
		DoctorDao dao= new DoctorDao(DBConnect.getConn());
		if(dao.checkOldPassword(uid, oldPassword))
		{
			if(dao.changePassword(uid, newPassword))
			{
				session.setAttribute("successMsg", "Password Change Successfully");
				resp.sendRedirect("doctor/editProfile.jsp");
			}
			else
			{
				session.setAttribute("errorMsg", "Something Wrong on Server");
				resp.sendRedirect("doctor/editProfile.jsp");
			}
		}
		else
		{
			session.setAttribute("errorMsg", "Old Password Incorrect");
			resp.sendRedirect("doctor/editProfile.jsp");
		}
	}
}
