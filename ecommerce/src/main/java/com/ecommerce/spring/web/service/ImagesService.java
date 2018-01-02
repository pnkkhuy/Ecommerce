package com.ecommerce.spring.web.service;

import java.awt.Image;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ecommerce.spring.web.mappers.ImagesMapper;
import com.ecommerce.spring.web.serviceinterface.ImagesServiceI;

@Service("imagesService")
public class ImagesService implements ImagesServiceI {

	@Autowired
	ImagesMapper imagesMapper;
	
	@Override
	public List<Image> getAll() {
		return imagesMapper.getAll();
	}

	@Override
	public Image findOneImageByProductID(int productID) {
		return imagesMapper.findOneImageByProductID(productID);
	}

	@Override
	public void deleteImage(int imageID) throws Exception {
		try {
			imagesMapper.deleteImage(imageID);
		} catch(Exception e) {
			throw new Exception("[deleteImage] - Images Service Error: " + e.getMessage());
		}
	}

	@Override
	public void insertImage(Image image) throws Exception {
		try {
			imagesMapper.insertImage(image);
		} catch(Exception e) {
			throw new Exception("[insertImage] - Images Service Error: " + e.getMessage());
		}
	}

	@Override
	public void updateImageByProductID(Image image) throws Exception {
		try {
			imagesMapper.updateImageByProductID(image);
		} catch(Exception e) {
			throw new Exception("[updateImageByProductID] - Images Service Error: " + e.getMessage());
		}
	}
	
}
