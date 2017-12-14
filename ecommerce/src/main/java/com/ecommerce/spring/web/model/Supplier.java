package com.ecommerce.spring.web.model;

public class Supplier {
	
	private long supplierID;
	private String companyName;
	private String contactName;
	private String address;
	private String phone;
	private String fax;
	private String email;
	private String website;
	private String note;
	private short isActive;
	
	public Supplier() {
		
	}
	
	public Supplier(long supplierID, String companyName, String contactName, String address, String phone, String fax,
			String email, String website, String note, short isActive) {
		super();
		this.supplierID = supplierID;
		this.companyName = companyName;
		this.contactName = contactName;
		this.address = address;
		this.phone = phone;
		this.fax = fax;
		this.email = email;
		this.website = website;
		this.note = note;
		this.isActive = isActive;
	}

	public long getSupplierID() {
		return supplierID;
	}

	public void setSupplierID(long supplierID) {
		this.supplierID = supplierID;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public String getContactName() {
		return contactName;
	}

	public void setContactName(String contactName) {
		this.contactName = contactName;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getFax() {
		return fax;
	}

	public void setFax(String fax) {
		this.fax = fax;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getWebsite() {
		return website;
	}

	public void setWebsite(String website) {
		this.website = website;
	}

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}

	public short getIsActive() {
		return isActive;
	}

	public void setIsActive(short isActive) {
		this.isActive = isActive;
	}
	
	
}
