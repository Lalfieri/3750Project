package com.luv2code.springdemo.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import java.util.ArrayList;
@Controller
@RequestMapping("/order")
public class IncomingOrdersController {
	@RequestMapping("/showOrder")
	public String showPage() {
		
		Order order1 = new Order();
		Order order2 = new Order();
		Order order3 = new Order();
		
		ArrayList<Order> list = new ArrayList<Order>();
		
		order1.pushItem("Ham");
		
		order2.setCustomerName("Jamie Smith");
		order2.setID(429070);
		order2.setEmail("jsmith@gmail.com");
		order2.setPhoneNumber("226-682-6498");
		order2.setPickup("Sunday, March 28");
		order2.pushItem("Lemon");
		order2.pushItem("Lime");
		order2.pushItem("Lemon Lime Soda");
		order2.pushItem("Lemonaide");
		order2.pushItem("Limeaide");
		order2.pushItem("Keylime Pie");
		order2.pushItem("Lemon Meringue Pie ");
		
		order3.setCustomerName("Jordan Hill");
		order3.setID(8662091);
		order3.setPhoneNumber("519-912-3659");
		order3.setEmail("jhill@protonmail.com");
		order3.setPickup("WednesDay, March 31");
		order3.pushItem("Ground Beef");
		order3.pushItem("Tomato Sauce");
		order3.pushItem("Sweet Onion");
		order3.pushItem("Red Bell Pepper");
		order3.pushItem("Butter");
		order3.pushItem("Garlic");
		order3.pushItem("Pasta");
		order3.pushItem("Bread");
		order3.pushItem("All Purpose Flour");
		order3.pushItem("Baking Soda");
		order3.pushItem("Salt");
		order3.pushItem("Pepper");
		order3.pushItem("Carrots");
	
		
		list.add(order1);
		list.add(order2);
		list.add(order3);
		
		return "incoming-orders";
	}

}
