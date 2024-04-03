package com.HMS.LoginEntity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Admin {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	private String first_name;
	
	private String last_name;
	
	private String age;
	
	private String dob;
	
	private String username;
	
	private String email;
	
	private String password;
	
	private String confirmpassword;
	
	private String number;

	public Admin() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Admin(int id, String first_name, String last_name, String age, String dob, String username, String email,
			String password, String confirmpassword, String number) {
		super();
		this.id = id;
		this.first_name = first_name;
		this.last_name = last_name;
		this.age = age;
		this.dob = dob;
		this.username = username;
		this.email = email;
		this.password = password;
		this.confirmpassword = confirmpassword;
		this.number = number;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFirst_name() {
		return first_name;
	}

	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}

	public String getLast_name() {
		return last_name;
	}

	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
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

	public String getConfirmpassword() {
		return confirmpassword;
	}

	public void setConfirmpassword(String confirmpassword) {
		this.confirmpassword = confirmpassword;
	}

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	@Override
	public String toString() {
		return "Admin [id=" + id + ", first_name=" + first_name + ", last_name=" + last_name + ", age=" + age + ", dob="
				+ dob + ", username=" + username + ", email=" + email + ", password=" + password + ", confirmpassword="
				+ confirmpassword + ", number=" + number + "]";
	}
	
}
