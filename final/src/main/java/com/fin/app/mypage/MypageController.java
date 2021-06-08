package com.fin.app.mypage;

import java.io.File;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fin.app.member.Member;
import com.fin.app.member.SessionInfo;

@Controller("mypage.mypageController")
@RequestMapping("/mypage/*")
public class MypageController {
	@Autowired
	private MypageService service;
	
	@RequestMapping(value = "profile", method = RequestMethod.GET)
	public String profile(
			HttpSession session,
			Model model
			) throws Exception {
		
		Member dto = new Member();
		
		try {
			SessionInfo info = (SessionInfo)session.getAttribute("member");
			dto = service.getUserDetail(info.getmId());
			
			model.addAttribute("dto", dto);
		} catch (Exception e) {
		}
		return ".mypage.profile";
	}
	
	@RequestMapping(value = "profile", method = RequestMethod.POST)
	public String ProfileSubmit(
			HttpSession session,
			Member dto,
			Model model
			) throws Exception {
		
		try {
			SessionInfo info = (SessionInfo)session.getAttribute("member");
			dto.setmId(info.getmId());
			
			String root = session.getServletContext().getRealPath("/");
			String pathname =root+"uploads"+File.separator+"profileImages";
			
			service.updateUserDetail(dto, pathname);
		} catch (Exception e) {
		}
		
		
		return "redirect:/mypage/profile";
	}
	
	@RequestMapping(value = "changePwd")
	public String changePwd() throws Exception {
		
		return ".mypage.changePwd";
	}
	
}
