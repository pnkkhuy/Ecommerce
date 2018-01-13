package com.ecommerce.spring.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.ecommerce.spring.web.mappers.ImagesMapper;
import com.ecommerce.spring.web.mappers.ProductsMapper;
import com.ecommerce.spring.web.model.Image;
import com.ecommerce.spring.web.model.Product;
import com.ecommerce.spring.web.model.ProductForm;
import com.ecommerce.spring.web.serviceinterface.ProductsServiceI;

@Service("productsService")
public class ProductsService implements ProductsServiceI {

	@Autowired
	ProductsMapper productsMapper;
	
	@Autowired
	ImagesMapper imagesMapper;
	
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
	public void insertProduct(ProductForm product) throws Exception {
		try {
			productsMapper.insertProduct(product);
			long productID = product.getProductID();
			// Insert Image data vào database		
			for(MultipartFile multipartfile : product.getMultipartFiles()) {				
				
				Image image = new Image();			
				image.setImage(multipartfile.getBytes());
				image.setProductID(productID);
				imagesMapper.insertImage(image);
			}
			
		} catch (Exception e) {
			throw new Exception("[insertProduct] - Product Service Error: " + e.getMessage());
		}		
	}

	@Override
	public void updateProduct(ProductForm product) throws Exception {
		try {
			// Insert Image data vào database		
			for(MultipartFile multipartfile : product.getMultipartFiles()) {				
				
				Image image = new Image();			
				image.setImage(multipartfile.getBytes());
				image.setProductID(product.getProductID());
				imagesMapper.insertImage(image);
			}
			productsMapper.updateProduct(product);
		} catch (Exception e) {
			throw new Exception("[updateProduct] - Product Service Error: " + e.getMessage());
		}
	}

}
