package com.ecommerce.spring.web.service;

import java.awt.RenderingHints;
import java.awt.image.BufferedImage;
import java.io.File;
import java.util.LinkedList;
import java.util.List;

import javax.imageio.ImageIO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.ecommerce.spring.web.mappers.ProductsMapper;
import com.ecommerce.spring.web.model.Image;
import com.ecommerce.spring.web.model.Product;
import com.ecommerce.spring.web.model.ProductForm;
import com.ecommerce.spring.web.serviceinterface.ProductsServiceI;
import com.ecommerce.utils.Utility;

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
	public void updateProduct(ProductForm product) throws Exception {
		try {
			// Kiểm tra ảnh có lớn hơn kích thước quy định không
			// Nếu lớn hơn thì resize rồi gán vào Map Image
			LinkedList<Image> listImage = new LinkedList<>();
			Utility utility = new Utility();
			for(MultipartFile multipartfile : product.getMultipartFiles()) {				
				//BufferedImage bufferedimage = ImageIO.read(multipartfile.getInputStream());
				if(bufferedimage.getHeight() > 600 && bufferedimage.getWidth() > 300)
					throw new Exception("[updateProduct] - Product Service Error: Image size error");
				
				String
				
				File file = new File("D:\\products\\");
				
				ImageIO.write(bufferedimage, "jpg", file);
				Image image = new Image();				
				image.setProductID(product.getProductID());
				
			}
			//productsMapper.updateProduct(product);
		} catch (Exception e) {
			throw new Exception("[updateProduct] - Product Service Error: " + e.getMessage());
		}
	}

}
