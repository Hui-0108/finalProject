package com.fin.app.product;

import java.util.List;
import java.util.Map;

public interface ProductService {
	public void insertProduct(Product dto) throws Exception;
	
	public int dataCount(Map<String, Object>map);
	public List<Product> listProduct(Map<String, Object>map);
	
	public void updateHitCount(int num) throws Exception;
	
	public Product readProduct (int num);
	public void updateProduct(Product dto) throws Exception;
	public void deleteProduct(int num) throws Exception;
	
	public List<Product> listCategroy();
	public List<Product> listMainOpt();
	public List<Product> listSubOpt();
	
}
