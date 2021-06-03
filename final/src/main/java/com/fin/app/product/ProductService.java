package com.fin.app.product;

import java.util.List;
import java.util.Map;

public interface ProductService {
	public void insertProduct(Product dto, String pathname) throws Exception;
	public int dataCount(Map<String, Object>map);
	public List<Product> listPhoto(Map<String, Object>map);
	public Product readProduct (int num);
	public void updateProduct(Product dto, String pathname) throws Exception;
	public void deleteProduct(int num, String pathname) throws Exception;
}
