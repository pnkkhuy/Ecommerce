package com.ecommerce.spring.web.model;

import java.util.ArrayList;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class ProductForm extends Product{
	private List<MultipartFile> multipartFiles;

	public ProductForm() {
		super();
	}
	public ProductForm(List<MultipartFile> multipartFiles) {
		super();
		this.multipartFiles = multipartFiles;
	}
	public ProductForm(Product product) {
		super();
		this.productID = product.productID;
		this.productName = product.productName;
		this.productDescription = product.productDescription;
		this.supplier = product.supplier;
		this.category = product.category;
		this.quantityPerUnit = product.quantityPerUnit;
		this.unitPrice = product.unitPrice;
		this.availableSize = product.availableSize;
		this.availableColors = product.availableColors;
		this.size = product.size;
		this.color = product.color;
		this.discount = product.discount;
		this.unitWeight = product.unitWeight;
		this.unitOnStock = product.unitOnStock;
		this.unitOnOrder = product.unitOnOrder;
		this.isActive = product.isActive;
		multipartFiles = new ArrayList<>();
	}

	public List<MultipartFile> getMultipartFiles() {
		return multipartFiles;
	}

	public void setMultipartFiles(List<MultipartFile> multipartFiles) {
		this.multipartFiles = multipartFiles;
	}
	
	public MultipartFile getMultipartFile(int index) {
		return multipartFiles.get(index);	
	}
	
	public void setMultipartFiles(MultipartFile multipartFile) {
		this.multipartFiles.add(multipartFile);
	}
}
