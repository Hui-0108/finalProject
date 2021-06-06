package com.fin.app.petsit;


import java.io.File;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.fin.app.common.FileManager;
import com.fin.app.common.MyUtil;
import com.fin.app.member.SessionInfo;

@Controller("petsit.petsitController")
@RequestMapping("/petsit/*")
public class PetsitController {
	@Autowired
	private PetsitService service;
	//페이징 처리에 필요
	@Autowired
	private MyUtil myUtil;
	@Autowired
	private FileManager fileManager;
	
	@RequestMapping("main")
	public String main() throws Exception {
		return ".petsit.main";
	}
	
	@RequestMapping("reservation")
	public String reservation() throws Exception {
		return ".petsit.reservation";
	}

	@RequestMapping(value="list")
	public String list(
			@RequestParam(value="page", defaultValue="1") int current_page, //현재페이지. 처음엔 1페이지 보여줌
			@RequestParam(defaultValue="all") String condition, //조건 처음엔 모든조건을 보여줌 
			@RequestParam(defaultValue="") String keyword,//조겆 검색
			@RequestParam(value="rows", defaultValue="7") int rows, //한번에 7줄
			HttpServletRequest req, //값을 받아옴
			Model model	//Controller에서 생성한 데이터를 담아서 View로 전달
			) throws Exception {
		
		int total_page; //전체 페이지
		int dataCount; //전체 데이터 갯수
		
		if(req.getMethod().equalsIgnoreCase("GET")) { //타입확인메서드.대소문자구분없이비교 //GET방식이면
			keyword = URLDecoder.decode(keyword, "utf-8"); //인코딩해줌
		}
		
		//전체 페이지 수 
		Map<String, Object> map = new HashMap<String, Object>(); //map객체 생성 //map=인터페이스=선언만가능, 자식=HashMap으로 객체생성 
		map.put("condition", condition);                         //HashMap: Map을 구현. Key와 value를 묶어 하나의 entry로 저장
		map.put("keyword", keyword);//keyword(키)에 keyword(값)저장
		
		dataCount = service.dataCount(map);//데이터 갯수 //service->serviceImpl의 dataCount()메소드에 map입력하여 결과 가져옴
		total_page = myUtil.pageCount(rows, dataCount); //총페이지수//myUtil에 있는 pageCount()메소드에  줄수와 총 데이터 갯수 넣어서 결과값 받음
		
		// 다른 사람이 자료를 삭제하여 전체 페이지수가 변화 된 경우
		if(total_page < current_page)//만약 현재페이지가 전페 페이지보다 크면
			current_page = total_page; //현재페이지수 = 전체페이지수
		
		// 리스트에 출력할 데이터를 가져오기
		int offset = (current_page-1) * rows; //건너뜀 //현재페이지-1*줄수 만큼 
		if(offset <0) offset = 0;
		map.put("offset", offset);//offset(키)에 offset(값)을 map에 저장
		map.put("rows", rows);
		
		//글리스트 
		List<Petsit> list = service.listPetsit(map);
		
		//리스트 글번호 만들기 //?? 
		int listNum, n =0;
		for(Petsit dto: list) {
			listNum = dataCount - (offset + n);
			dto.setListNum(listNum);
			n++;
		}
		
		  //검색일 경우 글번호
		String cp = req.getContextPath();
		String query = "";
		String listUrl = cp+"/petsit/list";
		
		if(keyword.length() !=0) { //keyword가 있으면 = 검색이면 
			query = "condition=" +condition +
					"&keyword=" + URLEncoder.encode(keyword, "utf-8");
		}
		
		if(query.length() !=0) {
			listUrl = cp+"/bbs/list?" + query;
		}
		
		String paging = myUtil.paging(current_page, total_page, listUrl);//myUtil의 페이징()메소드의 결과값 paging으로 받음
		
		model.addAttribute("list", list);
		model.addAttribute("page", current_page);
		model.addAttribute("dataCount", dataCount);
		model.addAttribute("total_page", total_page);
		model.addAttribute("paging", paging);
		
		model.addAttribute("condition", condition);
		model.addAttribute("keyword", keyword);
		
		return ".petSit.list";
	}
	
	//글쓰기 폼
	@RequestMapping(value="write", method=RequestMethod.GET )
	public String writeForm(Model model) throws Exception {//model(Controller에서 생성한 데이터를 담아서 View로 전달)을 매개변수로 받음
		model.addAttribute("mode", "write"); //addAttribute()메소드를 이용  view에 데이터를 전달//mode(키), write(값) 쌍으로 전달 =mode가 write 
		return ".petsit.write";
		
	}
	
	//글쓰기 완료(전송)
	@RequestMapping(value="/petsit/write", method=RequestMethod.POST)
	public String writeSubmit(Petsit dto, HttpSession session ) throws Exception {
		//올린 아이디						  //HttpSession인터페이스: Client의 상태값을 서버측에 저장하여 Session 관리			
		SessionInfo info=(SessionInfo)session.getAttribute("member"); //info에 세션에 저장된 값(member의 요소들?) 가져오기
			
		//사진파일은 꼭 root(webapp)에 저장해야함 
		String root = session.getServletContext().getRealPath("/");
		String pathname=root+"uploads"+File.separator+"petsit";
		
		try {
			dto.setmId(info.getmId()); //세션에 저장된 아이디를 dto에 setmId를 통해 넣음
			service.insertPetsit(dto, pathname); //insertPesit()메소드에 dto, pathname을 전달하여 실행 
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "redirect:/bbs/list";	//글쓰기 완료 후 페이지가 list로 	
	}
	
	//글보기
	@RequestMapping(value="article")
	public String article( //글번호,페이지, 검색조건, 세션정보, 모델객체를 가져감
			@RequestParam int num, 
			@RequestParam String page, 
			@RequestParam(defaultValue="all") String condition, 
			@RequestParam(defaultValue="") String keyword, 
			HttpSession session,
			Model model) throws Exception {
		
		keyword = URLDecoder.decode(keyword, "utf-8");
		
		String query="page="+page;
		if(keyword.length() !=0) { //검색조건이 있으면
			query+="&condition="+condition+"&keyword="+URLEncoder.encode(keyword, "utf-8");
		}
		
		//해당 레코드 가져오기
		Petsit dto = service.readPetsit(num);
		if(dto==null)
			return "redirect:/petsit/list?"+query;
		
		dto.setPetContent(myUtil.htmlSymbols(dto.getPetContent()));
		
		return ".petsit.article";
		
		
		//글수정
	
		//파일삭제
		
		//글삭제
		
	
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
