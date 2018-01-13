package com.ecommerce.spring.web.mappers;


import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ecommerce.spring.web.model.Image;

public interface ImagesMapper {
	
	List<Image> getAll();
	Image getImageByImageID(@Param("imageID")long imageID);
	Image[] getImageIDsByProductID(@Param("productID")long productID);
	void deleteImage(@Param("imageID")long imageID) throws Exception;
	void insertImage(Image image) throws Exception;
	void updateImageByProductID(Image image) throws Exception;
	void deleteImageFromProductID(@Param("productID")long productID) throws Exception;
}
