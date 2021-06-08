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
	

	
	@RequestMapping(value="/admin/donationManagement", method=RequestMethod.GET)
	public String donationManagement() {
		return ".admin.donationManagement";
	}
	
	@RequestMapping(value="/admin/mileageManagement", method=RequestMethod.GET)
	public String mileageManagement() {
		return ".admin.mileageManagement";
	}
	
	@RequestMapping(value="/admin/orderManagement", method=RequestMethod.GET)
	public String orderManagement() {
		return ".admin.orderManagement";
	}
	
	@RequestMapping(value="/admin/productManagement", method=RequestMethod.GET)
	public String productManagement() {
		return ".admin.productManagement";
	}
	
	@RequestMapping(value="/admin/reservationManagement", method=RequestMethod.GET)
	public String reservationManagement() {
		return ".admin.reservationManagement";
	}
	

	
	@RequestMapping(value="/admin/saleStatus", method=RequestMethod.GET)
	public String saleStatus() {
		return ".admin.saleStatus";
	}
	
	@RequestMapping(value="/admin/petsitStatus", method=RequestMethod.GET)
	public String petsitStatus() {
		return ".admin.petsitStatus";
	}

}
