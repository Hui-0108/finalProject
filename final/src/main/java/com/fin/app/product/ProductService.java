package com.fin.app.product;

import java.util.List;
import java.util.Map;

public interface ProductService {
	public void insertProduct(Product dto, String mode) throws Exception;
	
	public int dataCount(Map<String, Object>map);
	public List<Product> listProduct(Map<String, Object>map);
	
	public void updateHitCount(int listNum) throws Exception;
	
	
	public Product readProduct (int num);
	public void updateProduct(Product dto, String mode) throws Exception;
	public void deleteProduct(int num, String mode) throws Exception;
}
