package com.entity;

public class Doctor
{
	private int id;
	private String firstName;
	private String lastName;
	private String dob;
	private String age;
	private String mobno;
	private String gender;
	private String qualification;
	private String specialist;
	private String email;	
	private String password;
	
	public Doctor() 
	{
		super();
		// TODO Auto-generated constructor stub
	}

	public Doctor(String firstName, String lastName, String dob, String age, String mobno, String gender,
			String qualification, String specialist, String email, String password) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.dob = dob;
		this.age = age;
		this.mobno = mobno;
		this.gender = gender;
		this.qualification = qualification;
		this.specialist = specialist;
		this.email = email;
		this.password = password;
	}
	
	public Doctor(int id, String firstName, String lastName, String dob, String age, String mobno, String gender,
			String qualification, String specialist, String email, String password) {
		super();
		this.id = id;
		this.firstName = firstName;
		this.lastName = lastName;
		this.dob = dob;
		this.age = age;
		this.mobno = mobno;
		this.gender = gender;
		this.qualification = qualification;
		this.specialist = specialist;
		this.email = email;
		this.password = password;
	}

	public Doctor(int id, String firstName, String lastName, String age, String mobno, String qualification,
			String specialist, String email, String password) {
		super();
		this.id = id;
		this.firstName = firstName;
		this.lastName = lastName;
		this.age = age;
		this.mobno = mobno;
		this.qualification = qualification;
		this.specialist = specialist;
		this.email = email;
		this.password = password;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getMobno() {
		return mobno;
	}

	public void setMobno(String mobno) {
		this.mobno = mobno;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getQualification() {
		return qualification;
	}

	public void setQualification(String qualification) {
		this.qualification = qualification;
	}

	public String getSpecialist() {
		return specialist;
	}

	public void setSpecialist(String specialist) {
		this.specialist = specialist;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	

}
