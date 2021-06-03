package com.fin.app.mypage;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller("mypage.mypageController")
@RequestMapping("/mypage/*")
public class MypageController {
	@RequestMapping("info")
	public String info() throws Exception {
		
		return ".mypage.info";	
	}
	
}
