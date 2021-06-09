package com.fin.app.admin.petsitManagement;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller("admin.petsitManagement.petsitManagementController")
public class PetsitManagementController {
	@Autowired
	private PetsitManagementService service;
	
	@RequestMapping(value="/admin/petsitManagement", method=RequestMethod.GET)
	public String petstiManagement() {
		return ".admin.petsitManagement.petsitManagement";
	}
	
	@RequestMapping(value="/admin/petsitAdd", method=RequestMethod.POST)
	@ResponseBody
	public void petsitAdd(Petsit dto, @RequestParam String mId) {
		try {
			service.insertPetsit(dto, mId);
		} catch (Exception e) {
		}
	}
	
	@RequestMapping(value="/admin/petsitPrint", method=RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> petsitPrint(Petsit dto) {
		try {
			service.printPetsit(dto);
		} catch (Exception e) {
		}
		
		Map<String, Object> model = new HashMap<>();
		 
		String petStart = String.format("%1$tY-%1$tm-%1$td", dto.getPetStart());
		
		model.put("mId", dto.getmId());
		model.put("mPwd", dto.getmPwd());
		model.put("mNick", dto.getmNick());
		model.put("petStart", petStart);
		
		return model;
	}
	
	@RequestMapping(value="/admin/petsitList", method=RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> list() throws Exception {
		Map<String, Object> model = new HashMap<>();
		
		List<Petsit> list = service.listPetsit();
		
		model.put("list", list);
		
		return model;
	}
}
