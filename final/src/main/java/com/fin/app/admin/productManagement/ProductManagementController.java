package com.fin.app.admin.productManagement;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("admin.productManagement.productManagementController")
public class ProductManagementController {
	@Autowired
	private ProductManagementService service;
	
	@RequestMapping(value="/admin/productManagement", method=RequestMethod.GET)
	public String productManagement(Model model) throws Exception {
		List<ProductManagement> list = service.listProduct();
		
		model.addAttribute("list", list);
		
		return ".admin.productManagement.productManagement";
	}
}
