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
import com.entity.Doctor;

@WebServlet("/doctorUpdateProfile")
public class EditProfile extends HttpServlet
{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
		try
		{	System.out.println("AddDoctor class");
			int id = Integer.parseInt(req.getParameter("id"));
			String firstName = req.getParameter("firstname");
			String lastName = req.getParameter("lastname");
			String age = req.getParameter("age");
			String mobno = req.getParameter("mobno");
			String qualification = req.getParameter("qualification");
			String spec = req.getParameter("spec");
			String email = req.getParameter("email");
			
			Doctor d = new Doctor(id,firstName, lastName, age, mobno, qualification, spec, email, "");
			DoctorDao dao = new DoctorDao(DBConnect.getConn());
			
			HttpSession session = req.getSession();
			
			if(dao.editDoctorProfile(d))
			{
				Doctor updateDoctor = dao.getDoctorByID(id);
				session.setAttribute("successMsgd", "Profile updated Successfully");
				session.setAttribute("doctObj", updateDoctor);
				resp.sendRedirect("doctor/editProfile.jsp");
			}
			else
			{
				session.setAttribute("errorMsgd", "Something wrong on server");
				resp.sendRedirect("doctor/editProfile.jsp");
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
}
