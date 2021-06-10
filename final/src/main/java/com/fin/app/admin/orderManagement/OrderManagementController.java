package com.fin.app.admin.orderManagement;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("admin.orderManagement.orderManagementController")
public class OrderManagementController {
	@Autowired
	private OrderManagementService service;
	
	@RequestMapping(value="/admin/orderManagement", method=RequestMethod.GET)
	public String orderManagement(Model model) throws Exception {
		List<OrderManagement> list = service.listOrder();
		
		model.addAttribute("list", list);
		
		return ".admin.orderManagement.orderManagement";
	}
}
