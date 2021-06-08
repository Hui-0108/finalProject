package com.fin.app.product;

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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fin.app.common.FileManager;
import com.fin.app.common.MyUtil;


@Controller("product.productController")
@RequestMapping("/product/*")
public class ProductController {
	
	@Autowired
	private ProductService service;
	@Autowired
	private MyUtil myUtil;
	@Autowired
	private FileManager fileManger;
	
	@RequestMapping("created5")
	public String test() throws Exception{
		
		return ".product.created5";
	}
	
	
	@RequestMapping("list")
	public String list(
			@RequestParam(value = "page", defaultValue = "1") int current_page,
			@RequestParam(defaultValue = "title") String condition,
			@RequestParam(defaultValue = "") String keyword,			
			@RequestParam(value = "cn", defaultValue = "0")int pCateNum,
			@RequestParam(value = "mn", defaultValue = "0")int storeMainOptNum,
			@RequestParam(value = "sn", defaultValue = "0")int storeSubOptNum,
			HttpServletRequest req,
			HttpSession session,
			Model model	
			) throws Exception{
		
		int rows = 10;
		int total_page = 0;
		int dataCount =0;
		
		if(req.getMethod().equalsIgnoreCase("GET")) {
			keyword = URLDecoder.decode(keyword, "utf-8");
		}
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("pCateNum", pCateNum);
		map.put("condition", condition);
		map.put("keyword", keyword);
		
		map.put("storeMainOptNum", storeMainOptNum);
		map.put("storeSubOptNum", storeSubOptNum);
		
		dataCount = service.dataCount(map);
		total_page = myUtil.pageCount(rows, dataCount);
		
		current_page = current_page > total_page ? total_page : current_page;
		
		int offset = (current_page - 1) * rows;
		if(offset < 0) offset = 0;
		map.put("offset", offset);
		map.put("rows", rows);
		
		List<Product> list = service.listProduct(map);
	
		
		
		//흠
		
		
		String cp = req.getContextPath();
		String query = "cn="+pCateNum;
		query += "mn"+storeMainOptNum;
		query += "sn"+storeSubOptNum;
		
		String listUrl = cp+"/product/list";
		String articleUrl = cp+"/product/article?page="+current_page;
		if(keyword.length()!=0) {
			query += "&condition="+condition+"&keyword="+
					URLEncoder.encode(keyword, "utf-8");
		}
		
		if(query.length()!=0) {
			listUrl += "?"+query;
			articleUrl += "&"+query;
		}
		
		String paging = myUtil.paging(current_page, total_page, listUrl);
		
		List<Product> categoryList = service.listCategroy();
		List<Product> mainOptList = service.listMainOpt();
		
		
		//List<Product> subOptList = service.listSubOpt();
		
		
			
		Map<String, Object> map2 = new HashMap<String, Object>();
		map2.put("storeMainOptNum", storeMainOptNum); //여기 이렇게 넣는게 맞나?

		List<Product> subOptList = service.listSubOpt(map2);
		 	
		model.addAttribute("list", list);
		model.addAttribute("articleUrl", articleUrl);
		model.addAttribute("condition", condition);
		model.addAttribute("keyword", keyword);
		model.addAttribute("page", current_page);
		model.addAttribute("total_page", total_page);
		model.addAttribute("dataCount", dataCount);
		model.addAttribute("paging", paging);
		
		model.addAttribute("pCateNum", pCateNum);
		model.addAttribute("categorys", categoryList);
		
		model.addAttribute("storeMainOptNum", storeMainOptNum);
		model.addAttribute("mainOpts", mainOptList);
		
		model.addAttribute("storeSubOptNum", storeSubOptNum);
		model.addAttribute("subOpts", subOptList);
		
		
		return ".product.list";
	}

	@RequestMapping(value = "created", method = RequestMethod.GET)
	public String createdForm(	
				Model model,
				HttpSession session) throws Exception{

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("storeMainOptNum", null);
		
		//notice에서 참고해서 관리자 이외는 못하게 막기
		List<Product> categoryList = service.listCategroy();
		
		List<Product> mainOptList = service.listMainOpt();

	
		model.addAttribute("mode", "created");
		model.addAttribute("categorys", categoryList);
		model.addAttribute("mainOpts", mainOptList);	

		
		return ".product.created";
	}
	
	@RequestMapping(value = "/product/created", method = RequestMethod.POST)
	public String createdSubmit(Product dto,
			Model model,
			HttpSession session) throws Exception{

		String root = session.getServletContext().getRealPath("/");
		String path = root+"uploads"+File.separator+"product";
		
		try {
			service.insertProduct(dto, path);

		} catch (Exception e) {
			model.addAttribute("mode", "created");
			return".product.created";
		}
				
		return "redirect:/product/list";
	}
	
	@RequestMapping(value = "option", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> optionList(
			@RequestParam int storeMainOptNum
			)throws Exception{
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("storeMainOptNum", storeMainOptNum);
		List<Product> optionList = service.listSubOpt(map);
		
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("optionList", optionList);
		
		return model;
	}
	
	@RequestMapping(value = "deleteImg", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> deleteImg(
			@RequestParam int pImgNum,
			HttpSession session) throws Exception{
		
		String root = session.getServletContext().getRealPath("/");
		String pathname = root + "uploads" + File.separator + "product";
		
		Product dto = service.readProduct(pImgNum);
		if(dto!=null) {
			fileManger.doFileDelete(dto.getpImgName(), pathname);
		}

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("field", "pImgNum");
		map.put("pImgNum", pImgNum);
		service.deleteProductImage(map);
		
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("state", "true");
		return model;
	}
	
	
}
