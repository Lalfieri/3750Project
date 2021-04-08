package com.luv2code.springdemo.mvc;

import java.util.ArrayList;

public class ShoppingCart {
	private ArrayList<String> items;
	private ArrayList<Integer> amounts;
	
	
	public ShoppingCart() {
		items = new ArrayList<String>();
		amounts = new ArrayList<Integer>();
	}
	
	public void addOneNewItem(String itemName) {
		int index = items.indexOf(itemName);
		
		if(index != -1) {
			amounts.set(index,amounts.get(index) + 1);
		}
		else {
			items.add(itemName);
			amounts.add(1);
		}
	}
	
	public void addMultipleNewItems(String itemName, int quantity) {
		int index = items.indexOf(itemName);
		
		if(index != -1) {
			amounts.set(index,amounts.get(index) + quantity);
		}
		else {
			items.add(itemName);
			amounts.add(quantity);
		}
	}
	
	public void removeOneItem(String itemName) {
		int index = items.indexOf(itemName);
		
		if(index != -1) {
			if(amounts.get(index)<=1) {
				items.remove(index);
				amounts.remove(index);
			}
			else {
				amounts.set(index,amounts.get(index) - 1);
			}
		}
	}
	
	public void removeMultipleItems(String itemName, int quantity) {
		int index = items.indexOf(itemName);
		
		if(index != -1) {
			if((amounts.get(index) - quantity) <= 1) {
				items.remove(index);
				amounts.remove(index);
			}
			else {
				amounts.set(index,amounts.get(index) - quantity);
			}
		}
	}
}
