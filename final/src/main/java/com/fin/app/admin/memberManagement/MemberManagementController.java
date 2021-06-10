package com.fin.app.admin.memberManagement;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("admin.memberManagement.memberManagementController")
public class MemberManagementController {
	@Autowired
	private MemberManagementService service;
	
	@RequestMapping(value="/admin/memberManagement", method=RequestMethod.GET)
	public String memberManagement(Model model) {
		List<MemberManagement> list = service.listMember();
		
		model.addAttribute("list", list);
		
		return ".admin.memberManagement.memberManagement";
	}
	
}
