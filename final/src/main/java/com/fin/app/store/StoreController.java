package com.fin.app.store;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller("store.storeController")
@RequestMapping("/store/*")
public class StoreController {
	
	@RequestMapping("main")
	public String main() throws Exception{
		return "store/storeMain";
	}
	
}
