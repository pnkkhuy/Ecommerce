package com.ecommerce.spring.web.model;

public class Image {
	
	private long imageID;
	private byte[] image;
	private long productID;
	private long categoryID;
	
	public Image() {
		super();
	}
	public Image(long imageID, byte[] image, long productID, long categoryID) {
		super();
		this.imageID = imageID;
		this.image = image;
		this.productID = productID;
		this.categoryID = categoryID;
	}
	public long getImageID() {
		return imageID;
	}
	public void setImageID(long imageID) {
		this.imageID = imageID;
	}	
	
	public byte[] getImage() {
		return image;
	}
	public void setImage(byte[] image) {
		this.image = image;
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
