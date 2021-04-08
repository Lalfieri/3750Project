package com.luv2code.springdemo.mvc;
import java.util.ArrayList;


public class LoginController {
	
	private Business user;
	
	public LoginController () {
		System.out.println("Login controller created.");
		Business admin = new Business("admin", "admin", "012-345-6789", "admin@gmail.com", "theadmin");
		addAccount(admin);
		listAccounts();
	}
	
	ArrayList<Business> accounts = new ArrayList<Business>();
	
	public void addAccount (Business theBusiness) {
		if (!checkExists(theBusiness)) {
		    accounts.add(theBusiness);
		}
	}
	
	public boolean checkExists(Business theBusiness) {
	    for(Business b : accounts){
	    	if (b.getEmail().equals(theBusiness.getEmail())) {
	    		return true;
	    	}
	    }
	    return false;
	}
	
	public Business retrieve(String email) {
	    for(Business b : accounts){
	    	if (b.getEmail().equals(email)) {
	    		return b;
	    	}
	    }
	    return null;
	}
	
	public boolean accCheck (Business theBusiness) {
		if (theBusiness.getEmail() != null) {
			if (theBusiness.getEmail().equals("admin@gmail.com")) {
				return true;
			}
		}
		return false;
	}
	
	public void listAccounts() {
		System.out.println("Accounts registered under the following emails.");
	    for(Business b : accounts){
	    	System.out.println(b.getEmail() + ", ");
	    }
	}
	
	public boolean passWordMatch(Business theBusiness) {
		if ((theBusiness.getPassWord() != null && theBusiness.getPassWord2() != null) && 
				(!theBusiness.getPassWord().equals(theBusiness.getPassWord2()))) {
			return true;
	    }
		return false;
	}
	
	public Business getUser() {
		return user;
	}
	
	public void setUser(String email) {
		user = retrieve(email);
	}

}
