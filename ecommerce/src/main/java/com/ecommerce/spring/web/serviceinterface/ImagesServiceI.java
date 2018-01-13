package com.ecommerce.spring.web.serviceinterface;


import java.util.List;

import com.ecommerce.spring.web.model.Image;

public interface ImagesServiceI {
	
	List<Image> getAll();
	byte[] getImageByImageID(long imageID);
	long[] getImageIDsByProductID(long productID);
	void deleteImage(long imageID) throws Exception;
	void deleteImageFromProductID(long productID) throws Exception;
	void insertImage(Image image) throws Exception;
	void updateImageByProductID(Image image) throws Exception;
}
