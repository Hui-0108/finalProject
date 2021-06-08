package com.fin.app.admin.petsitManagement;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("admin.petsitManagement.petsitManagementController")
public class PetsitManagementController {
	@Autowired
	private PetsitManagementService service;
	
	@RequestMapping(value="/admin/petsitManagement", method=RequestMethod.GET)
	public String petstiManagement() {
		return ".admin.petsitManagement.petsitManagement";
	}
	
	@RequestMapping(value="petsitAdd", method=RequestMethod.POST)
	public void petsitAdd(Petsit dto, Model model) {
		try {
			service.insertPetsit(dto);
			

		} catch (Exception e) {
		}
		
		model.addAttribute("mId", dto.getmId());
		model.addAttribute("mPwd", dto.getmPwd());
		model.addAttribute("mNick", dto.getmNick());
	}
}
