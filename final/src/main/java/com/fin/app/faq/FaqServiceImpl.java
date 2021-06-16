package com.fin.app.faq;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

@Service("faq.faqService")
public class FaqServiceImpl implements FaqService {

	@Override
	public void insertFaq(Faq dto) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Faq> listFaq(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int dataCount(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Faq readFaq(int num) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void updateFaq(Faq dto) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteFaq(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void insertCategory(Faq dto) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateCategory(Faq dto) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Faq> listCategory(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteCategory(int categoryNum) throws Exception {
		// TODO Auto-generated method stub
		
	}

}
