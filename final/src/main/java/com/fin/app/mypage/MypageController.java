package com.fin.app.mypage;

import java.io.File;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fin.app.member.SessionInfo;

@Controller("mypage.mypageController")
@RequestMapping("/mypage/*")
public class MypageController {
	@Autowired
	private MypageService service;
	
	// profile.jsp
	@RequestMapping(value = "profile", method = RequestMethod.GET)
	public String profile(
			HttpSession session,
			Model model
			) throws Exception {
		
		Profile dto = new Profile();
		
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
			Profile dto
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
	
	
	// changePwd.jsp
	@RequestMapping(value = "changePwd", method = RequestMethod.GET)
	public String changePwd() throws Exception {
		
		return ".mypage.changePwd";
	}
	
	@RequestMapping(value = "changePwd", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> changePwdSubmit(
			HttpSession session,
			Profile dto
			) throws Exception {
		
		Map<String, Object> result = new HashMap<String, Object>();
		
		try {
			SessionInfo info = (SessionInfo)session.getAttribute("member");
			String currId = info.getmId();
			
			if(service.updatePwd(dto, currId)) {
				
				// 로그아웃
				session.removeAttribute("member");
				session.invalidate();
				
				result.put("state", "true");
				return result;
			}
			
			result.put("state", "false");
			
		} catch (Exception e) {
		}

		return result;
	}
	
	// changePwd.jsp
	@RequestMapping(value = "myList", method = RequestMethod.GET)
	public String myList() throws Exception {
		
		
		return ".mypage.myList";
	}
		
	
	
}
