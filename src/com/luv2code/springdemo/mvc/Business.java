package com.luv2code.springdemo.mvc;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import com.luv2code.springdemo.mvc.validation.CourseCode;

public class Business {
	
	@NotNull(message="is required")
	private String firstName;
	
	@NotNull(message="is required")
	private String lastName;
	
	@Pattern(regexp="^((\\(\\d{3}\\))|\\d{3})[- .]?\\d{3}[- .]?\\d{4}$", message="Must be valid phone number")
	@NotNull(message="is required")
	private String phoneNum;
	
	@Pattern(regexp="^[A-Za-z0-9+_.-]+@(.+)$", message="Must be a valid email (user@domain.com)")
	@NotNull(message="is required")
	private String email;
	
	@NotNull(message="is required")
	@Size(min=8, message="Must be at least 8 characters")
	private String passWord;
	
	@NotNull(message="Please re-enter your password")
	private String passWord2;
	
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

	public String getPhoneNum() {
		return phoneNum;
	}

	public void setPhoneNum(String phoneNum) {
		this.phoneNum = phoneNum;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassWord() {
		return passWord;
	}

	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}
	
	public String getPassWord2() {
		return passWord2;
	}
	
	public void setPassWord2(String passWord2) {
		this.passWord2 = passWord2;
	}
	
}