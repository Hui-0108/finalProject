package com.fin.app.product;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller("product.productController")
@RequestMapping("/product/*")
public class ProductController {
	
	@Autowired
	private ProductService service;
	

	@RequestMapping("list")
	public String list() throws Exception{
		
		return ".product.list";
	}

	@RequestMapping(value = "created", method = RequestMethod.GET)
	public String createdForm(HttpSession session, Model model) throws Exception{
		model.addAttribute("mode", "created");
		
		return ".product.created";
	}
	
	public String createdSubmit(Product dto, HttpSession session) throws Exception{

		try {
			service.insertProduct(dto, "created");
		} catch (Exception e) {
			
		}
		return "redirect:/product/list";
	}
	
	
}
