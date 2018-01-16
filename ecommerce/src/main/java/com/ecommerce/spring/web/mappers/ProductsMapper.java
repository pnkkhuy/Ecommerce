package com.ecommerce.spring.web.mappers;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ecommerce.spring.web.model.Product;

public interface ProductsMapper {
	
	List<Product> getAll();
	
	List<Product> getAllAvailableProduct();
	
	Product findOneProductByID(@Param("productID") int productID)  throws Exception;
	
	public Product[] getListProductsByCategoryID(@Param("categoryID")int categoryID) throws Exception;
	
	void deleteOrUndeleteProduct(@Param("productID") int productID,
									@Param("isActive") int isActive) throws Exception;
	
	long insertProduct(Product product) throws Exception;
	
	void updateProduct(Product product) throws Exception;

}
