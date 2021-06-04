package com.fin.app.product;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fin.app.common.dao.CommonDAO;

@Service("product.productService")
public class ProductServiceImpl implements ProductService{

	@Autowired
	private CommonDAO dao;

	@Override
	public void insertProduct(Product dto, String mode) throws Exception {
		try {
			dao.insertData("product.insertData", dto);
			
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		
	}

	@Override
	public int dataCount(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Product> listProduct(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void updateHitCount(int listNum) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Product readProduct(int num) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void updateProduct(Product dto, String mode) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteProduct(int num, String mode) throws Exception {
		// TODO Auto-generated method stub
		
	}
	

		
}
