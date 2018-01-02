package com.ecommerce.spring.web.model;

public class Image {
	
	private long ImageID;
	private byte[] image;
	private String description;
	private long productID;
	private long categoryID;
	
	public Image() {
		super();
	}
	public Image(long imageID, byte[] image, String description, long productID, long categoryID) {
		super();
		ImageID = imageID;
		this.image = image;
		this.description = description;
		this.productID = productID;
		this.categoryID = categoryID;
	}
	public long getImageID() {
		return ImageID;
	}
	public void setImageID(long imageID) {
		ImageID = imageID;
	}
	public byte[] getImage() {
		return image;
	}
	public void setImage(byte[] image) {
		this.image = image;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
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
