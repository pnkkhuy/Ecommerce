package com.ecommerce.spring.web.serviceinterface;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ecommerce.spring.web.model.Supplier;

public interface SuppliersServiceI {
	
	List<Supplier> getAll();
	
	
	List<Supplier> getAllAvailableSuppliers();
	Supplier findOneSupplierByID(@Param("supplierID") int supplierID)  throws Exception;
	
	void deleteOrUndeleteSupplier(@Param("supplierID") int supplierID,
									@Param("isActive") int isActive) throws Exception;
	
	void insertSupplier(Supplier supplier) throws Exception;
	
	void updateSupplier(Supplier supplier) throws Exception;
}
