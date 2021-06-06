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
	public void insertProduct(Product dto) throws Exception {
		
		try {
			dao.insertData("product.insertProduct", dto);
		} catch (Exception e) {
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
		List<Product> list = null;
		
		try {
			list = dao.selectList("product.listProduct", map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}

	@Override
	public void updateHitCount(int num) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Product readProduct(int num) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void updateProduct(Product dto) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteProduct(int num) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Product> listCategroy() {
		List<Product> list = null;
		
		try {
			list = dao.selectList("product.listCategory");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<Product> listMainOpt() {
		List<Product> list = null;
		
		try {
			list = dao.selectList("product.listMainOpt");
		} catch (Exception e) {
			e.printStackTrace();
		}	
		
		return list;
	}

	@Override
	public List<Product> listSubOpt() {
		List<Product> list = null;
		
		try {
			list = dao.selectList("product.listSubOpt");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}




		
}
