package com.ecommerce.spring.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ecommerce.spring.web.mappers.SuppliersMapper;
import com.ecommerce.spring.web.model.Supplier;
import com.ecommerce.spring.web.serviceinterface.SuppliersServiceI;

@Service("suppliersService")
public class SuppliersService implements SuppliersServiceI {

	@Autowired
	SuppliersMapper suppliersMapper;
	
	@Override
	public List<Supplier> getAll() {
		return suppliersMapper.getAll();
	}

	@Override
	public Supplier findOneSupplierByID(int supplierID) throws Exception {
		try {
			return suppliersMapper.findOneSupplierByID(supplierID);
		} catch (Exception e) {
			throw new Exception("[findOneSupplierByID] - Supplier Service Error: " + e.getMessage());
		}
	}

	@Override
	public void deleteOrUndeleteSupplier(int supplierID, int isActive) throws Exception {
		try {
			suppliersMapper.deleteOrUndeleteSupplier(supplierID, isActive);
		} catch (Exception e) {
			throw new Exception("[deleteOrUndeleteSupplier] - Supplier Service Error: " + e.getMessage());
		}
		
	}

	@Override
	public void insertSupplier(Supplier supplier) throws Exception {
		try {
			suppliersMapper.insertSupplier(supplier);
		} catch (Exception e) {
			throw new Exception("[insertSupplier] - Supplier Service Error: " + e.getMessage());
		}		
	}

	@Override
	public void updateSupplier(Supplier supplier) throws Exception {
		try {
			suppliersMapper.updateSupplier(supplier);
		} catch (Exception e) {
			throw new Exception("[updateSupplier] - Supplier Service Error: " + e.getMessage());
		}		
	}	
}
