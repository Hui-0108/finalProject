package com.fin.app.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller("member.memberController")
@RequestMapping(value="/member/*")
public class MemberController {
	@Autowired
	private MemberService service;
	
	@RequestMapping(value="member", method=RequestMethod.GET)
	public String memberForm(Model model) {
		model.addAttribute("mode", "member");
		return ".member.member";
	}
	
	//로그인폼
	@RequestMapping(value="login", method=RequestMethod.GET)
	public String loginForm() {
		return ".member.login";
	}
	
	//로그인
	@RequestMapping(value="login", method=RequestMethod.POST)
	public String loginSubmit(
			@RequestParam String mId,
			@RequestParam String mPwd,
			HttpSession session,
			Model model
			) {
		
		//아이디 또는 패스워드 일치여부 확인
		Member dto=service.loginMember(mId);
		if(dto==null || ! mPwd.equals(dto.getmPwd())) {
			model.addAttribute("message", "아이디 또는 패스워드가 일치하지 않습니다.");
			return ".member.login";
		}
		
		//세션에 로그인 정보 저장
		SessionInfo info=new SessionInfo();
		info.setmId(dto.getmId());
		info.setmName(dto.getmName()); //mNick으로 해야하는지? 아니면 mNick을 추가해야하는지?
		
		session.setMaxInactiveInterval(30*60); // 세션유지시간 30분, 기본:30분
		
		session.setAttribute("member", info);
		
		//로그인 이전 URI로 이동
		String uri=(String)session.getAttribute("preLoginURI");
		session.removeAttribute("preLoginURI");
		if(uri==null)
			uri="redirect:/";
		else
			uri="redirect:"+uri;
		
		return uri;
	}
	
	//로그아웃
	public String logout(HttpSession session) {
		//세션에 저장된 정보 지우기
		session.removeAttribute("member");

		//세션에 저장된 모든 정보 지우소, 세션 초기화
		session.invalidate();
		
		return "redirect:/";
	}
	
	
}
