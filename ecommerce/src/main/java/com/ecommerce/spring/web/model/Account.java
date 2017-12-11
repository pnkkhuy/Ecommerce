package com.ecommerce.spring.web.model;

import java.io.IOException;

import org.springframework.web.multipart.MultipartFile;

public class Account{

	private String email;
	private String password;
	private String newpassword;
	private String confirmnewpassword;
	private String role;
	private String fullName;
	private String address;
	private String phone;
	private String billingAddress;
	private String shipAddress;
	private String dateEntered;
	private byte[] image;
	private MultipartFile imageForm;
	private int isActive;
	
	public MultipartFile getImageForm() {
		return imageForm;
	}

	public void setImageForm(MultipartFile imageForm) {
		this.imageForm = imageForm;
	}
	
	public void setImageFormToImage() throws IOException {
		this.image = this.imageForm.getBytes();
	}

	public Account() {
		super();
	}
	
	public Account(Account account) {
		super();
		this.email = account.email;
		this.password = account.password;
		this.role = account.role;
		this.fullName = account.fullName;
		this.address = account.address;
		this.phone = account.phone;
		this.billingAddress = account.billingAddress;
		this.shipAddress = account.shipAddress;
		this.dateEntered = account.dateEntered;
		this.image = account.image;
		this.isActive = account.isActive;
	}
	
	public Account(String email, String password, String role, String fullName, String address, String phone,
			String billingAddress, String shipAddress, String dateEntered, byte[] image, int isActive) {
		super();
		this.email = email;
		this.password = password;
		this.role = role;
		this.fullName = fullName;
		this.address = address;
		this.phone = phone;
		this.billingAddress = billingAddress;
		this.shipAddress = shipAddress;
		this.dateEntered = dateEntered;
		this.image = image;
		this.isActive = isActive;
	}
	
//	public byte[] getImage() throws IOException {
//		if(image != null)
//			return image.getBytes();
//		else
//			return null;
//	}
	
	public byte[] getImage() {
		return image;
	}

	public void setImage(byte[] image) {
		this.image = image;
	}	

	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
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
	public String getBillingAddress() {
		return billingAddress;
	}
	public void setBillingAddress(String billingAddress) {
		this.billingAddress = billingAddress;
	}
	public String getShipAddress() {
		return shipAddress;
	}
	public void setShipAddress(String shipAddress) {
		this.shipAddress = shipAddress;
	}
	public String getDateEntered() {
		return dateEntered;
	}
	public void setDateEntered(String dateEntered) {
		this.dateEntered = dateEntered;
	}
	public int getIsActive() {
		return isActive;
	}
	public void setIsActive(int isActive) {		
		this.isActive = isActive;
	}
	
	public boolean getIsActiveByBoolean() {
		if(isActive == 1)
			return true;
		else
			return false;
	}
	
	public String getNewpassword() {
		return newpassword;
	}

	public void setNewpassword(String newpassword) {
		this.newpassword = newpassword;
	}

	public String getConfirmnewpassword() {
		return confirmnewpassword;
	}

	public void setConfirmnewpassword(String confirmnewpassword) {
		this.confirmnewpassword = confirmnewpassword;
	}
}
