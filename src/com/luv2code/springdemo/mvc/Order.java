package com.luv2code.springdemo.mvc;

import java.util.ArrayList;

public class Order {
	private long id;
	private String customerName;
	private String email;
	private String phoneNumber;
	private String pickup;
	private ArrayList<String> items;
	
	
	public Order() {
		this.id = 0;
		this.customerName = "John Doe";
		this.email = "idontknowmyname@gmail.com";
		this.phoneNumber = "(???)-???-????";
		this.pickup = "??/??/????";
		items = new ArrayList<String>();
	}
	
	
	public long getID() {
		return id;
	}
	
	public void setID(long id) {
		this.id = id;
	}
	
	public String getCustomerName() {
		return customerName;
	}
	
	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}
	
	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getPhoneNumber() {
		return phoneNumber;
	}
	
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	
	public String getPickup() {
		return pickup;
	}
	
	public void setPickup(String pickup) {
		this.pickup = pickup;
	}
	
	public ArrayList<String> getItems(){
		return items;
	}
	
	public void pushItem(String item) {
		items.add(item);
	}
	
	public void popItem() {
		items.remove(0);
	}
	
	
}
