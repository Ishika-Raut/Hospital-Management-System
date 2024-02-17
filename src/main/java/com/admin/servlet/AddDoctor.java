package com.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.DoctorDao;
import com.db.DBConnect;
import com.entity.Doctor;

@WebServlet("/addDoctor")
public class AddDoctor extends HttpServlet
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
			String fullName = req.getParameter("firstname");
			String lastName = req.getParameter("lastname");
			String dob = req.getParameter("dob");
			String age = req.getParameter("age");
			String mobno = req.getParameter("mobno");
			String gender = req.getParameter("gender");
			String qualification = req.getParameter("qualification");
			String spec = req.getParameter("spec");
			String email = req.getParameter("email");
			String password = req.getParameter("password");
			
			Doctor d = new Doctor(fullName, lastName, dob, age, mobno, gender, qualification, spec, email, password);
			DoctorDao dao = new DoctorDao(DBConnect.getConn());
			
			HttpSession session = req.getSession();
			
			if(dao.registerDoctor(d))
			{
				session.setAttribute("successMsg", "Doctor added Successfully");
				resp.sendRedirect("admin/view_doctor.jsp");
			}
			else
			{
				session.setAttribute("errorMsg", "Something wrong on server");
				resp.sendRedirect("admin/doctor.jsp");
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	
}
