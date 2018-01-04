package com.ecommerce.spring.web.model;

import java.math.BigDecimal;

public class Product {
	protected long productID;
	protected String productName;
	protected String productDescription;
	protected Supplier supplier;
	protected Category category;
	protected int quantityPerUnit;
	protected BigDecimal unitPrice;
	protected String availableSize;
	protected String availableColors;
	protected String size;
	protected String color;
	protected BigDecimal discount;
	protected String unitWeight;
	protected String unitOnStock;
	protected String unitOnOrder;
	protected short isActive;
	
	public Product() {
		super();
	}
	
	public Product(long productID, String productName, String productDescription, Supplier supplier, Category category,
			int quantityPerUnit, BigDecimal unitPrice, String availableSize, String availableColors, String size,
			String color, BigDecimal discount, String unitWeight, String unitOnStock, String unitOnOrder, short isActive) {
		super();
		this.productID = productID;
		this.productName = productName;
		this.productDescription = productDescription;
		this.supplier = supplier;
		this.category = category;
		this.quantityPerUnit = quantityPerUnit;
		this.unitPrice = unitPrice;
		this.availableSize = availableSize;
		this.availableColors = availableColors;
		this.size = size;
		this.color = color;
		this.discount = discount;
		this.unitWeight = unitWeight;
		this.unitOnStock = unitOnStock;
		this.unitOnOrder = unitOnOrder;
		this.isActive = isActive;
	}

	public long getProductID() {
		return productID;
	}
	public void setProductID(long productID) {
		this.productID = productID;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getProductDescription() {
		return productDescription;
	}
	public void setProductDescription(String productDescription) {
		this.productDescription = productDescription;
	}
	public Supplier getSupplier() {
		return supplier;
	}
	public void setSupplier(Supplier supplier) {
		this.supplier = supplier;
	}
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	public int getQuantityPerUnit() {
		return quantityPerUnit;
	}
	public void setQuantityPerUnit(int quantityPerUnit) {
		this.quantityPerUnit = quantityPerUnit;
	}
	public BigDecimal getUnitPrice() {
		return unitPrice;
	}
	public void setUnitPrice(BigDecimal unitPrice) {
		this.unitPrice = unitPrice;
	}
	public void setUnitPrice(String unitPrice) {
		this.unitPrice = new BigDecimal(unitPrice);
	}	
	public String getAvailableSize() {
		return availableSize;
	}
	public void setAvailableSize(String availableSize) {
		this.availableSize = availableSize;
	}
	public String getAvailableColors() {
		return availableColors;
	}
	public void setAvailableColors(String availableColors) {
		this.availableColors = availableColors;
	}
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public BigDecimal getDiscount() {
		return discount;
	}
	public void setDiscount(BigDecimal discount) {
		this.discount = discount;
	}
	public String getUnitWeight() {
		return unitWeight;
	}
	public void setUnitWeight(String unitWeight) {
		this.unitWeight = unitWeight;
	}
	public String getUnitOnStock() {
		return unitOnStock;
	}
	public void setUnitOnStock(String unitOnStock) {
		this.unitOnStock = unitOnStock;
	}
	public String getUnitOnOrder() {
		return unitOnOrder;
	}
	public void setUnitOnOrder(String unitOnOrder) {
		this.unitOnOrder = unitOnOrder;
	}
	public short getIsActive() {
		return isActive;
	}
	public void setIsActive(short isActive) {
		this.isActive = isActive;
	}
}
