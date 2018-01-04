package com.ecommerce.spring.web.model;

public class Image {
	
	private long imageID;
	private String path;
	private long productID;
	private long categoryID;
	
	public Image() {
		super();
	}
	public Image(long imageID, String path, long productID, long categoryID) {
		super();
		this.imageID = imageID;
		this.path = path;
		this.productID = productID;
		this.categoryID = categoryID;
	}
	public long getImageID() {
		return imageID;
	}
	public void setImageID(long imageID) {
		this.imageID = imageID;
	}	
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public long getProductID() {
		return productID;
	}
	public void setProductID(long productID) {
		this.productID = productID;
	}
	public long getCategoryID() {
		return categoryID;
	}
	public void setCategoryID(long categoryID) {
		this.categoryID = categoryID;
	}

	
}
