package com.tony.server.controller.shop;

import java.io.File;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.tony.server.model.shop.dto.ProductDTO;
import com.tony.server.service.shop.ProductService;

@Controller
@RequestMapping("shop/product/*")
public class ProductController {

	@Inject
	ProductService productService;

	@RequestMapping("list.do")
	public ModelAndView list(ModelAndView mav) {
		mav.setViewName("/shop/product_list");
		mav.addObject("list", productService.listProduct());
		return mav;
	}

	// http://localhost/spring02/shop/product/detail/5
	@RequestMapping("detail/{product_id}")
	public ModelAndView detail(@PathVariable int product_id, ModelAndView mav) {
		mav.setViewName("/shop/product_detail");
		mav.addObject("dto", productService.detailProduct(product_id));
		return mav;
	}

	@RequestMapping("write.do")
	public String write() {
		return "shop/product_write";
	}

	@RequestMapping("insert.do")
	public String insert(@ModelAttribute ProductDTO dto) {
		String dev = "DEPLOYMENT";
		String filename = "-";
		if (!dto.getFile1().isEmpty()) {
			filename = dto.getFile1().getOriginalFilename();
			try {
				String basePath;
				// development directory
				if (!"DEPLOYMENT".equals(dev)) {
					basePath = "D:\\workspace-sts4\\spring-mybatis\\";
				} else {
					// deployment directory
					basePath = "D:\\workspace-sts4\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\spring-mybatis\\";
				}
				String path = basePath + "src\\main\\webapp\\WEB-INF\\views\\images\\";
				new File(path).mkdir();
				dto.getFile1().transferTo(new File(path + filename));
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		dto.setPicture_url(filename);
		productService.insertProduct(dto);
		return "redirect:/shop/product/list.do";
	}

	@RequestMapping("edit/{product_id}")
	public ModelAndView edit(@PathVariable("product_id") int product_id, ModelAndView mav) {
		mav.setViewName("shop/product_edit");
		mav.addObject("dto", productService.detailProduct(product_id));
		return mav;
	}

	@RequestMapping("update.do")
	public String update(ProductDTO dto) {
		String dev = "DEPLOYMENT";
		String filename = "-";
		if (!dto.getFile1().isEmpty()) {
			filename = dto.getFile1().getOriginalFilename();
			try {
				String basePath;
				// development directory
				if (!"DEPLOYMENT".equals(dev)) {
					basePath = "D:\\workspace-sts4\\spring-mybatis\\";
				} else {
					// deployment directory
					basePath = "D:\\workspace-sts4\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\spring-mybatis\\";
				}
				String path = basePath + "src\\main\\webapp\\WEB-INF\\views\\images\\";
				// If the directory does not exist, create
				new File(path).mkdir();
				dto.getFile1().transferTo(new File(path + filename));
			} catch (Exception e) {
				e.printStackTrace();
			}
			dto.setPicture_url(filename);
		} else { // if there is no new added file, get the file from db
			ProductDTO dto2 = productService.detailProduct(dto.getProduct_id());
			dto.setPicture_url(dto2.getPicture_url());
		}
		productService.updateProduct(dto);
		return "redirect:/shop/product/list.do";
	}

	@RequestMapping("delete.do")
	public String delete(@RequestParam int product_id) {
		String dev = "DEPLOYMENT";
		String filename = productService.fileInfo(product_id);
		System.err.println("Filename: " + filename);
		if (filename != null && !filename.equals("-")) {
			String basePath;
			// development directory
			if (!"DEPLOYMENT".equals(dev)) {
				basePath = "D:\\workspace-sts4\\spring-mybatis\\";
			} else {
				// deployment directory
				basePath = "D:\\workspace-sts4\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\spring-mybatis\\";
			}
			String path = basePath + "src\\main\\webapp\\WEB-INF\\views\\images\\";
			File f = new File(path + filename);
			System.err.println("Check the file exists: " + f.exists());
			if (f.exists()) {
				f.delete();
				System.err.println("Image file is deleted.");
			}
		}
		productService.deleteProduct(product_id);
		return "redirect:/shop/product/list.do";
	}
}
