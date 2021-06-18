package com.fin.app.stat;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fin.app.common.APISerializer;

@Controller("stat.userController")
@RequestMapping("/stat/*")
public class UserController {
	@Autowired
	private UserService service;
	
	@Autowired
	private APISerializer apiSerializer;
	
	@RequestMapping(value="stat")
	public String main() {
		return "stat/stat";
	}
	
	@RequestMapping(value = "stat", produces = "application/json;charset=utf-8")
	@ResponseBody
	public String covid(@RequestParam String date) throws Exception {
		String result=null;
		
		int numOfRows=20;
		int pageNo=1;

		String serviceKey="pxTXjrjVmateW0GnkBeONAQfjToozKbno8wEOjY7y7Fo7Klm%2Fl6oA5u0EwRpgVEFIewRTlHeFDaTcbJCz2RCHQ%3D%3D";
		String spec="http://openapi.animal.go.kr/openapi/service/rest/abandonmentPublicSrvc/sido";
		spec+="?serviceKey="+serviceKey+"&numOfRows="+numOfRows+"&pageNo="+pageNo;
		spec+="&startCreateDt="+date+"&endCreateDt="+date;
		
		result = apiSerializer.receiveXmlToJson(spec);
		  
		return result;
	}
}
