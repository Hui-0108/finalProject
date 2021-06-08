package com.fin.app.admin.memberManagement;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("admin.memberManagement.memberManagementController")
public class MemberManagementController {
	
	@RequestMapping(value="/admin/memberManagement", method=RequestMethod.GET)
	public String memberManagement() {
		return ".admin.memberManagement.memberManagement";
	}
	
}
