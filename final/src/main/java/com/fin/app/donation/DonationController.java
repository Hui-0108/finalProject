package com.fin.app.donation;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fin.app.member.Member;
import com.fin.app.member.SessionInfo;

@Controller("donation.donationController")
@RequestMapping(value="/donation/*")
public class DonationController {

	@Autowired
	private DonationService service;
	
	@RequestMapping(value="main", method=RequestMethod.GET)
	public String requestLogin(HttpSession session, String mId) throws Exception {
		SessionInfo info=(SessionInfo)session.getAttribute("member");
		if(info!=null) {
			service.readMember(mId);
			System.out.println("mId:" + mId);
		}
		return ".member.login";
	}
	
	@RequestMapping(value="main", method=RequestMethod.POST)
	public String requestLoginSubmit(Member dto,
			final RedirectAttributes reAttr,
			Model model
			) throws Exception {
	
		try {
			service.readMember(dto.getmId());
		} catch (Exception e) {
			model.addAttribute("message", "로그인이 필요합니다.");
			return ".member.login";			
		}
		return "redirect:/donation/main";
	}
	
	@RequestMapping(value="regularDon", method=RequestMethod.GET)
	public String regularForm(Model model) {
		model.addAttribute("mode", "regular");
		return ".donation.regularDon";
	}
	
	@RequestMapping(value="regularDon", method=RequestMethod.POST)
	public String regularSubmit(Donation dto,
			final RedirectAttributes reAttr,
			Model model) {

		try {
			service.insertDonation(dto);
		} catch (Exception e) {

		}
		return ".donation.regularDon";
	}
	@RequestMapping(value="tempDon", method=RequestMethod.GET)
	public String tempForm(Model model) {
		model.addAttribute("mode", "temp");
		return ".donation.tempDon";
	}
	
	@RequestMapping(value="signup", method=RequestMethod.POST)
	public String tempSubmit(Donation dto,
			final RedirectAttributes reAttr,
			Model model) {
		
		try {
			service.insertDonation(dto);
		} catch (Exception e) {
	
		}
		return ".donation.tempDon";
	}
}
