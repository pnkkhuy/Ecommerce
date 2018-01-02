package com.ecommerce.spring.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ecommerce.spring.web.mappers.ProductsMapper;
import com.ecommerce.spring.web.model.Product;
import com.ecommerce.spring.web.serviceinterface.ProductsServiceI;

@Service("productsService")
public class ProductsService implements ProductsServiceI {

	@Autowired
	ProductsMapper productsMapper;
	
	@Override
	public List<Product> getAll() {
		return productsMapper.getAll();
	}

	@Override
	public List<Product> getAllAvailableProduct() {
		return productsMapper.getAllAvailableProduct();
	}

	@Override
	public Product findOneProductByID(int productID) throws Exception {
		try {
			return productsMapper.findOneProductByID(productID);
		} catch (Exception e) {
			throw new Exception("[findOneProductByID] - Product Service Error: " + e.getMessage());
		}
	}

	@Override
	public void deleteOrUndeleteProduct(int productID, int isActive) throws Exception {
		try {
			productsMapper.deleteOrUndeleteProduct(productID, isActive);
		} catch (Exception e) {
			throw new Exception("[deleteOrUndeleteProduct] - Product Service Error: " + e.getMessage());
		}		
	}

	@Override
	public void insertProduct(Product product) throws Exception {
		try {
			productsMapper.insertProduct(product);
		} catch (Exception e) {
			throw new Exception("[insertProduct] - Product Service Error: " + e.getMessage());
		}		
	}

	@Override
	public void updateProduct(Product product) throws Exception {
		try {
			productsMapper.updateProduct(product);
		} catch (Exception e) {
			throw new Exception("[updateProduct] - Product Service Error: " + e.getMessage());
		}
	}

}
