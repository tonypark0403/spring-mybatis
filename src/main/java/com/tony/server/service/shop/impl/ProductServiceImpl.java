package com.tony.server.service.shop.impl;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.tony.server.model.shop.dao.ProductDAO;
import com.tony.server.model.shop.dto.ProductDTO;
import com.tony.server.service.shop.ProductService;

@Service
public class ProductServiceImpl implements ProductService {

	@Inject
	ProductDAO productDao;

	@Override
	public List<ProductDTO> listProduct() {
		return productDao.listProduct();
	}

	@Override
	public ProductDTO detailProduct(int product_id) {
		return productDao.detailProduct(product_id);
	}

	@Override
	public String fileInfo(int product_id) {
		return productDao.fileInfo(product_id);
	}

	@Override
	public void updateProduct(ProductDTO dto) {
		productDao.updateProduct(dto);
	}

	@Override
	public void deleteProduct(int product_id) {
		productDao.deleteProduct(product_id);
	}

	@Override
	public void insertProduct(ProductDTO dto) {
		productDao.insertProduct(dto);
	}

}
