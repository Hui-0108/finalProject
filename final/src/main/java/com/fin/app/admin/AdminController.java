package com.fin.app.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("admin.adminController")
public class AdminController {
	
	@RequestMapping(value="/admin", method=RequestMethod.GET)
	public String method() {
		return ".adminLayout";
	}
	
	@RequestMapping(value="/admin/saleStatus", method=RequestMethod.GET)
	public String saleStatus() {
		return ".admin.saleStatus.saleStatus";
	}
	
	@RequestMapping(value="/admin/petsitStatus", method=RequestMethod.GET)
	public String petsitStatus() {
		return ".admin.petsitStatus.petsitStatus";
	}

}
