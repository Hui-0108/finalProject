package com.fin.app.petsit;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller("petsit.petsitController")
@RequestMapping("/petsit/*")
public class PetsitController {
	
	@RequestMapping("main")
	public String main() throws Exception {
		return ".petsit.main";
	}

	@RequestMapping("reservation")
	public String reservation() throws Exception {
		return ".petsit.reservation";
	}
	
}
