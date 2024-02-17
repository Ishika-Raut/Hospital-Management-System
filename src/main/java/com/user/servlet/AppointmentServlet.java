package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.AppointmentDao;
import com.dao.DoctorDao;
import com.db.DBConnect;
import com.entity.Appointment;
import com.entity.Doctor;

@WebServlet("/bookAppointment")
public class AppointmentServlet extends HttpServlet
{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
		int userId = Integer.parseInt(req.getParameter("userid"));
		String firstname = req.getParameter("firstname");
		String lastname = req.getParameter("lastname");
		String gender = req.getParameter("gender");
		String age = req.getParameter("age");
		String email = req.getParameter("email");
		String phno = req.getParameter("phno");
		String address = req.getParameter("address");
		String state = req.getParameter("state");
		String city = req.getParameter("city");
		int doctor_id = Integer.parseInt(req.getParameter("doct"));
		String appoint_date = req.getParameter("appoint_date");
		String appoint_time = req.getParameter("appoint_time");
		String diseases = req.getParameter("diseases");
		
		Appointment ap = new Appointment(userId, firstname, lastname, gender, age, email, phno, address, state, city, doctor_id, 
						 appoint_date, appoint_time, diseases, "pending");
		AppointmentDao dao = new AppointmentDao(DBConnect.getConn());
		
		HttpSession session = req.getSession();
		
		if(dao.addAppointment(ap))
		{
			session.setAttribute("successMsg", "Appointment added Successfully");
			resp.sendRedirect("book_appointment.jsp");
		}
		else
		{
			session.setAttribute("errorMsg", "Something wrong on server");
			resp.sendRedirect("book_appointment.jsp");
		}
	}
}
