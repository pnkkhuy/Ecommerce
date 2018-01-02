package com.ecommerce.spring.web.serviceinterface;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ecommerce.spring.web.model.Product;

public interface ProductsServiceI {

	public List<Product> getAll();
	
	public List<Product> getAllAvailableProduct();
	
	public Product findOneProductByID(@Param("productID") int productID)  throws Exception;
	
	public void deleteOrUndeleteProduct(@Param("productID") int productID,
									@Param("isActive") int isActive) throws Exception;
	
	public void insertProduct(Product product) throws Exception;
	
	public void updateProduct(Product product) throws Exception;
	
}