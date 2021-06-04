package com.fin.app.mypage;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fin.app.member.Member;
import com.fin.app.member.SessionInfo;

@Controller("mypage.mypageController")
@RequestMapping("/mypage/*")
public class MypageController {
	@Autowired
	private MypageService service;
	
	@RequestMapping("profile")
	public String info(
			HttpSession session,
			Model model
			) throws Exception {
		
		Member dto = new Member();
		
		try {
			SessionInfo info = (SessionInfo) session.getAttribute("member");
			
			dto = service.getUserDetail(info.getmId());
			
			model.addAttribute("dto", dto);
		} catch (Exception e) {
		}
		return ".mypage.profile";
	}
	
}
