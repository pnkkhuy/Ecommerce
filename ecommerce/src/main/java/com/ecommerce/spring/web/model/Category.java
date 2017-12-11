package com.ecommerce.spring.web.model;

public class Category {
	private long categoryID;
	private String categoryName;
	private String description;
	private short isActive;
	
	public Category() {
		
	}
	
	public Category(long categoryID, String categoryName, String description, short isActive) {
		super();
		this.categoryID = categoryID;
		this.categoryName = categoryName;
		this.description = description;
		this.isActive = isActive;
	}
	
	public long getCategoryID() {
		return categoryID;
	}
	public void setCategoryID(long categoryID) {
		this.categoryID = categoryID;
	}
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public short getIsActive() {
		return isActive;
	}
	public void setIsActive(short isActive) {
		this.isActive = isActive;
	}
	
	
}
