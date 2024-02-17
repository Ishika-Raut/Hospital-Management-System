package com.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.entity.Doctor;
import com.entity.User;
import com.dao.DoctorDao;
import com.db.DBConnect;

@WebServlet("/adminLogin")
public class AdminLogin extends HttpServlet
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
			String email = req.getParameter("email");
			String password = req.getParameter("password");
			
			HttpSession session = req.getSession();
			
			if("admin@gmail.com".equals(email) && "admin".equals(password))
			{
				Doctor us = new Doctor();
				us.setFirstName("Admin");
				session.setAttribute("adminObj", us);
				resp.sendRedirect("admin/adminIndex.jsp");
			}
			else
			{
				DoctorDao dao= new DoctorDao(DBConnect.getConn());
				Doctor doctor = dao.login(email, password);
				if(doctor != null)
				{
					session.setAttribute("doctObj", doctor);
					resp.sendRedirect("doctor/doctorIndex.jsp");
				}
				else
				{
					session.setAttribute("errorMsg", "Invalid email or password");
					resp.sendRedirect("doctor_login.jsp");
				}
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}	
	
}
