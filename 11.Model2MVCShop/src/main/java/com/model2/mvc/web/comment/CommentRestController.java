package com.model2.mvc.web.comment;

import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.model2.mvc.common.Page;
import com.model2.mvc.common.Search;
import com.model2.mvc.service.comment.CommentService;
import com.model2.mvc.service.domain.Product;
import com.model2.mvc.service.product.ProductService;

@RestController
@RequestMapping("/comment/*")
public class CommentRestController {


	@Autowired
	@Qualifier("commentServiceImpl")
	private CommentService commentService;
	
	@Resource(name="uploadPath")
	String uploadPath;
	
	@Value("#{commonProperties['pageUnit'] ?: 3}")
	int pageUnit;
	
	@Value("#{commonProperties['pageSize'] ?: 2}")
	int pageSize;
	
	public CommentRestController() {
		System.out.println("commentRestController Defualt Constructor");
	}
		
	
	@RequestMapping("json/listComment/{commentNo}/{prodNo}")
	public String listProductView(
 HttpServletRequest request) throws Exception { 
		
//		Map<String, Object> map = commentService.getCommentList(prodNo);
//		System.out.println(" :: " + map.get("list") + " \n");
//		request.setAttribute("list", map.get("list"));
		
		return "forward:/product/getProduct.jsp;";
	}
	
}
